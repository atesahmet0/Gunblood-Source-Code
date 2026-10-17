"""Recover a readable derivative from FFDec 18.5, preserving the original export.
Function2 parameter registers are taken from the independent original P-code.
Only lexical identifiers/call sites are renamed; movie linkage/state keys stay intact.
"""
from pathlib import Path
import ast, hashlib, json, re
ROOT=Path(__file__).resolve().parents[1]
SOURCE=ROOT/'decompiled/recovery-legacy/scripts/DefineSprite_499/frame_1/DoAction_2.as'
PCODE=ROOT/'decompiled/pcode/scripts/DefineSprite_499/frame_1/DoAction_2.pcode'
OUT=ROOT/'decompiled/recovered'
NAMES={
'>%':'initializeRound','native':'applyCharacterAppearance','use ':'updatePlayerAim',
'ThrowBot':'ThrowBot','`':'firePlayerShot','Shoot2':'Shoot2','%':'updateBottleThrowAnimation',
'@$':'updateGameplay','9%':'drawAimGuide',' else':'applyFaceDownHeadHit',';$':'applyHeadHitVariant1',
'3"':'applyHeadHitVariant2','return':'applyHeadHitVariant3',' set':'applyFatalUpperBodyHit',
' ':'applyUpperBodyHitVariant1','<#':'applyUpperBodyHitVariant2','SubStomach1':'SubStomach1',
'SubStomach2':'SubStomach2','SubCrotch':'SubCrotch','each ':'applyLegHitVariant1',
'catch':'applyLegHitVariant2','do':'applyFootHit','!%':'dispatchCharacterHit',' get':'finishRound',
'Celebrate':'Celebrate',"'#":'updatePlayerProjectile','var':'updateOpponentProjectile',
'^#':'updateDetachedHead','@':'updateOpponentHat','>$':'updatePlayerHat',']':'detachHat',
'BottleSet':'BottleSet','+%':'updateThrownBottle',']"':'updateLooseBottles','0':'updateBirds',
'0%':'updateCameraScale','9!':'updateCountdown','!':'updateOpponentAim','0"':'updateBloodParticles',
'#%':'spawnBloodParticles','!"':'spawnGroundBlood','!!':'spawnBulletImpact',' $':'spawnSmoke',
'6%':'spawnBodyChunks','+!':'updateBodyChunks','#$':'spawnFeathers'}
TOKEN=re.compile(r'//[^\n]*|/\*[\s\S]*?\*/|§[^§]*§|"(?:\\.|[^"\\])*"|\x27(?:\\.|[^\x27\\])*\x27|[A-Za-z_$][\w$]*|\s+|.',re.S)
def decode(s): return ast.literal_eval(s)
def q(s):return json.dumps(s,ensure_ascii=False)
def header_fields(s):
 return [decode(t) if t.startswith('"') else t.strip() for t in re.findall(r'"(?:\\.|[^"\\])*"|[^,\s][^,]*',s)]
# P-code records expose the real Function2 parameter-register order.
paramregs={}
for line in PCODE.read_text().splitlines():
 m=re.search(r'DefineFunction2 (.*) \{$',line)
 if not m:continue
 f=header_fields(m[1]);name=f[0];n=int(f[1]); pairs=f[12:]
 assert len(pairs)==n*2,(name,f)
 paramregs[name]=[(int(pairs[2*i]),pairs[2*i+1]) for i in range(n)]
s=SOURCE.read_text()
headers=list(re.finditer(r'^function (.+?)\(([^\n]*)\)\n\{',s,re.M))
assert len(headers)==len(NAMES)
parts=[];repairs=[];function_info=[];end=0
for h in headers:
 original=h.group(1); original=original[1:-1] if original.startswith('§') else original
 assert original in NAMES,original
 # Find closing brace using tokens, which exclude braces inside strings/comments.
 depth=1; stop=h.end()
 for t in TOKEN.finditer(s,h.end()):
  if t.group()=='{':depth+=1
  elif t.group()=='}':
   depth-=1
   if depth==0:stop=t.end();break
 body=s[h.end():stop-1]
 params=h.group(2)
 if original in paramregs:
  correct=','.join('_loc%d_'%reg if reg else pname for reg,pname in paramregs[original])
  if correct.replace(' ','')!=params.replace(' ',''):
   repairs.append(dict(function=original,old=params,new=correct,source='Original AVM1 DefineFunction2 parameter registers'))
  params=correct
 localnames={}
 for special in re.findall(r'\bvar\s+§([^§]+)§',body):
  if special not in localnames:localnames[special]='recoveredLocal%d'%(len(localnames)+1)
 # const is a legal bytecode variable but a reserved source-language token.
 if re.search(r'\bvar const\b',body):localnames['const']='soundIndex'
 tokens=TOKEN.findall(body); rewritten=[];i=0
 def next_nonspace(j):
  while j<len(tokens) and tokens[j].isspace():j+=1
  return j
 while i<len(tokens):
  tok=tokens[i]
  if tok=='eval':
   a=next_nonspace(i+1);b=next_nonspace(a+1);c=next_nonspace(b+1)
   if a<len(tokens) and tokens[a]=='(' and b<len(tokens) and tokens[b].startswith('"') and c<len(tokens) and tokens[c]==')':
    value=decode(tokens[b])
    if value in localnames or value in NAMES:
     rewritten.append(localnames.get(value,NAMES.get(value)));i=c+1;continue
  if tok.startswith('"') or tok.startswith("'"):
   j=next_nonspace(i+1)
   if j<len(tokens) and tokens[j]=='(':
    value=decode(tok);rewritten.append(NAMES[value] if value in NAMES else 'eval('+q(value)+')');i+=1;continue
  if tok.startswith('§'):
   value=tok[1:-1]
   if value in localnames:tok=localnames[value]
   elif value in NAMES:tok=NAMES[value]
   else:
    # The one escaped nonlocal increment uses AVM1 SetVariable semantics.
    if tokens[i+1:i+4]==['+','+',';']:
     rewritten.append('set('+q(value)+',eval('+q(value)+') + 1);');i+=4;continue
    raise ValueError(('Unresolved escaped identifier',original,tok))
  elif tok in localnames:tok=localnames[tok]
  rewritten.append(tok);i+=1
 body=''.join(rewritten)
 # Descriptive parameter names reflect call-site order; register numbers remain in the map.
 semantic={}
 if original in [' else',';$','3"','return',' set',' ','<#','SubStomach1','SubStomach2','SubCrotch','each ','catch','do','!%']:
  labels=['target','projectile','hitX','hitY','side','stepIndex']
  semantic=dict(zip(params.split(','),labels))
 elif original=='#%':semantic=dict(zip(params.split(','),['x','y','verticalSpeed','horizontalDirection','particleCount']))
 elif original==' get':semantic={params:'outcome'}
 elif original in ['^#',']']:semantic={params:'target'}
 if semantic:
  body=''.join(semantic.get(t,t) for t in TOKEN.findall(body))
  params=','.join(semantic.get(x,x) for x in params.split(','))
 parts.append('// Original timeline function: '+q(original)+'\nfunction '+NAMES[original]+'('+params+')\n{'+body+'}\n')
 function_info.append(dict(original=original,readable=NAMES[original],original_line=s[:h.start()].count('\n')+1,parameters=params,bytecode_parameter_registers=paramregs.get(original),local_identifier_map=localnames))
 end=stop
# The only top-level statements after the definitions are round initialization/timer setup.
tail=s[end:]
for original,name in NAMES.items():
 tail=tail.replace(q(original)+'()',name+'()').replace('eval('+q(original)+')',name)
assert '§' not in ''.join(parts)+tail
aliases='\n// Preserve original names used by other timeline scripts and dynamic lookups.\n'
for original,name in NAMES.items():
 if original!=name: aliases+='this['+q(original)+'] = '+name+';\n'
header='''// Recovered Gunblood AVM1 gameplay script, archived SWF / DefineSprite 499 / DoAction 2.
// Decompiled with FFDec 18.5.0; analyst-assigned names and register-signature repairs.
// Dynamic movie/state names remain unchanged. See RECOVERY.md and recovery-map.json.
// This is a source derivative; it is not the original author project.
\n'''
OUT.mkdir(exist_ok=True,parents=True)
(OUT/'gameplay.as').write_text(header+'\n'.join(parts)+aliases+'\n'+tail.lstrip())
(OUT/'gameplay.ffdec18.as').write_text(s)
(OUT/'recovery-map.json').write_text(json.dumps(dict(input_sha256=hashlib.sha256(SOURCE.read_bytes()).hexdigest(),functions=function_info,parameter_repairs=repairs,pcode_sha256=hashlib.sha256(PCODE.read_bytes()).hexdigest()),indent=2)+'\n')
print('Functions:',len(parts),'parameter repairs:',len(repairs));print(json.dumps(repairs,indent=2))
