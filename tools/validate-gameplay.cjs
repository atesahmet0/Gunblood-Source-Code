/* Differential tests: original AVM1 bytes versus recovered source, no SWF execution. */
const fs=require('fs'),vm=require('vm'),assert=require('assert');
const path=require('path'),ROOT=path.resolve(__dirname,'..');
const raw=JSON.parse(fs.readFileSync(path.join(ROOT,'decompiled/recovered/original-bytecode.json')));
const map=JSON.parse(fs.readFileSync(path.join(ROOT,'decompiled/recovered/recovery-map.json')));
const names=Object.fromEntries(map.functions.map(x=>[x.original,x.readable]));
const allSource=fs.readFileSync(path.join(ROOT,'decompiled/recovered/gameplay.as'),'utf8');
const source=allSource.slice(0,allSource.lastIndexOf('\ninitializeRound();'));
assert(source.length<allSource.length);
function setup(){
 const calls=[],scope={},root={},parent={},grand={},logs=[];let seed=1;
 const rng=()=>{seed=(Math.imul(seed,1664525)+1013904223)>>>0;return seed/4294967296;};
 function clip(label,extra={}){
  const c={label,_x:0,_y:0,_rotation:0,_xscale:100,_yscale:100,_currentframe:1,_visible:1,...extra};
  for(const m of ['gotoAndStop','gotoAndPlay','play','nextFrame','stop','clear','lineStyle','moveTo','lineTo','start','setVolume','hitTest'])c[m]=(...args)=>{logs.push([label,m,...args.map(a=>a&&a.label||a)]);return m==='hitTest'?c.hitResult:undefined;};
  return c;
 }
 function actor(label){
  const c=clip(label,{xvel:0,pos:'standing',dpos:'standing',life:100,side:label==='char'?1:-1,hatgo:0,headfly:0,shotgo:0,shotdelay:0,headx:3,heady:-5,hatx:4,haty:-6,shotstaken:0,hitstaken:0});
  for(const part of ['head','hat','arm1','arm2','upbody','lowbody','upleg1','upleg2','lowleg1','lowleg2','foot1','foot2','holster'])c[part]=clip(label+'.'+part);
  for(const arm of ['arm1','arm2']){c[arm].armin=clip(label+'.'+arm+'.armin');c[arm].armin.uparm=clip(label+'.'+arm+'.uparm');c[arm].armin.lowarm=clip(label+'.'+arm+'.lowarm');c[arm].armin.gun={gunsight:clip(label+'.sight')};}
  for(const [part,child] of [['head','headin'],['upbody','bodyblood1'],['upbody','bodyblood2'],['upbody','bodyblood3'],['upbody','bodyblood4'],['upbody','bodyblood5'],['lowbody','dbodyblood1'],['lowbody','dbodyblood2'],['holster','holsblood1']])c[part][child]=clip(label+'.'+part+'.'+child);
  for(const n of ['hblood1','hblood2','hblood3','hblood4'])c.head[n]=clip(label+'.head.'+n);
  for(const p of ['head','upbody','upleg1','upleg2'])for(const n of ['knife1','knife2','knife3'])c[p][n]=clip(label+'.'+p+'.'+n);
  for(const p of ['upleg1','upleg2'])for(const n of ['ulegblood1','ulegblood2','ulegblood3','ulegblood4'])c[p][n]=clip(label+'.'+p+'.'+n);
  for(const p of ['lowleg1','lowleg2'])c[p].legblood1=clip(label+'.'+p+'.legblood1');
  for(const p of ['foot1','foot2'])c[p].footblood1=clip(label+'.'+p+'.footblood1');
  for(const arm of ['arm1','arm2']){for(let i=1;i<=4;i++)c[arm].armin.uparm['armblood'+i]=clip(label+'.'+arm+'.armblood'+i);c[arm].armin.lowarm.lowarmblood1=clip(label+'.'+arm+'.lowarmblood1');}
  return c;
 }
 const char=actor('char'),char2=actor('char2');scope.char=char;scope.char2=char2;
 scope.charshad=actor('charshad');scope.char2shad=actor('char2shad');char.shad=scope.charshad;char2.shad=scope.char2shad;
 Object.assign(scope,{_root:root,_parent:parent,gameon:0,bonusgo:0,rescale:0,setmouse:0,bottlego:0,birdgo:0,bloodclips:[],bloods:[],chgo:Array(19).fill(0),compgo:-12,compspeed:3,countsound:0,starttime:1000,'function':0,' try':0,'^$':[],'!$':0,ax:1,ay:0,'get':0});
 root._parent=grand;parent._parent=grand;root.allsounds=Array.from({length:150},(_,i)=>clip('sound'+i));root.barrel1=clip('barrel1',{hitResult:true});
 grand.bigtext=clip('bigtext');grand.bigtext.bigtextin={countdown:0};grand.pausebox=clip('pausebox',{_visible:0});grand.pausebox.pauseboxin=clip('pauseboxin');
 scope['"$']=clip('playerHat');scope['try ']=clip('opponentHat');scope['%#']=clip('guide');
 scope['do ']=clip('playerBullet',{ax:1,ay:0});scope[',%']=clip('opponentBullet',{ax:-1,ay:0});scope['<$']={x:0,y:0};
 scope.bloods=Array.from({length:10},(_,i)=>clip('blood'+i));
 for(const k of ['lifeout','lifeout2','compgo','countsound'])scope[k]??=0;
 root.hitstaken=0;root.switch={include:clip('playerHealth')};root.extends={include:clip('opponentHealth')};
 scope['else ']=Array(100).fill(0);scope.implements=0;scope.csounds=Array.from({length:11},()=>[40,41,42]);scope.compnum=scope.compnum2=1;scope.bottle1=clip('bottle1');
 let now=1000;
 Object.assign(scope,{Math:Object.create(Math),random:n=>Math.floor(rng()*n),getTimer:()=>now,eval:name=>lookup(name),set:(name,value)=>assign(name,value),updateAfterEvent:()=>{},localToGlobal:p=>{},Object,Array});scope.Math.random=rng;
 function lookup(name){
  if(typeof name!=='string')return undefined;
  const keys=name.split('.');let obj=scope;
  for(const k of keys){if(k==='this'||k==='')continue;obj=obj?.[k];}
  return obj;
 }
 function assign(name,value){const keys=String(name).split('.');const last=keys.pop();let obj=scope;for(const k of keys)obj=obj[k];obj[last]=value;}
 scope.createEmptyMovieClip=(name,depth)=>{scope[name]=clip(name);logs.push(['create',name,depth]);return scope[name];};
 function stubFunctions(){for(const [original,readable]of Object.entries(names)){const fn=(...args)=>calls.push([original,...args.map(a=>a&&a.label||a)]);scope[original]=scope[readable]=fn;}}
 function snapshot(){
  const seen=new Set();function clean(v){if(typeof v==='function')return undefined;if(!v||typeof v!=='object')return Number.isNaN(v)?'NaN':v;if(seen.has(v))return {ref:v.label||'cycle'};seen.add(v);if(Array.isArray(v))return v.map(clean);const o={};for(const k of Object.keys(v).sort()){if(['_root','_parent','Math','Object','Array'].includes(k))continue;const x=clean(v[k]);if(x!==undefined)o[k]=x;}return o;}
  return {scope:clean(scope),root:clean(root),parent:clean(parent),grand:clean(grand),logs,calls};
 }
 return {scope,root,parent,grand,logs,calls,clip,lookup,assign,stubFunctions,snapshot,setNow:n=>now=n};
}
function runAVM(name,args,E){
 const f=raw.functions[name],code=Buffer.from(f.bytecode,'base64'),stack=[],reg={},locals={this:E.scope,arguments:args};let p=0,steps=0;
 let ri=1;for(const [flag,v]of [[1,E.scope],[4,args],[16,undefined],[64,E.root],[128,E.parent],[256,E.scope]])if(f.flags&flag)reg[ri++]=v;
 f.params.forEach(([r,n],i)=>{if(r)reg[r]=args[i];else locals[n]=args[i];});
 const get=n=>Object.hasOwn(locals,n)?locals[n]:E.lookup(n);
 const set=(n,v)=>{if(Object.hasOwn(locals,n))locals[n]=v;else E.assign(n,v);};
 const pop=()=>{assert(stack.length,`stack underflow ${name} @${p}`);return stack.pop();};
 const binary=fn=>{const b=pop(),a=pop();stack.push(fn(a,b));};
 const call=(fn,self,n)=>{assert(Number.isInteger(n)&&n>=0&&n<100,`invalid arg count ${n}`);const a=Array.from({length:n},pop);assert.equal(typeof fn,'function',`missing callable ${String(fn)} in ${name} @${p}`);return fn.apply(self,a);};
 function string(b,i){const e=b.indexOf(0,i);return[b.toString('utf8',i,e),e+1];}
 while(p<code.length){
  assert(++steps<30000,`step limit ${name}`);assert(p>=0,`invalid branch ${name}`);
  const start=p,op=code[p++];let pay=Buffer.alloc(0);
  if(op>=128){const n=code.readUInt16LE(p);p+=2;pay=code.subarray(p,p+n);p+=n;}
  switch(op){
   case 0:return;
   case 0x96:{let i=0;while(i<pay.length){const t=pay[i++];let v;
    if(t===0){[v,i]=string(pay,i);}else if(t===1){v=pay.readFloatLE(i);i+=4;}else if(t===2)v=null;else if(t===3)v=undefined;else if(t===4)v=reg[pay[i++]];else if(t===5)v=!!pay[i++];else if(t===6){v=Buffer.concat([pay.subarray(i+4,i+8),pay.subarray(i,i+4)]).readDoubleLE();i+=8;}else if(t===7){v=pay.readInt32LE(i);i+=4;}else if(t===8)v=raw.constant_pool[pay[i++]];else if(t===9){v=raw.constant_pool[pay.readUInt16LE(i)];i+=2;}else throw Error('push type '+t);stack.push(v);}break;}
   case 0x99:p+=pay.readInt16LE();break;
   case 0x9d:if(pop())p+=pay.readInt16LE();break;
   case 0x87:reg[pay[0]]=stack[stack.length-1];break;
   case 0x17:pop();break;
   case 0x4c:stack.push(stack[stack.length-1]);break;
   case 0x4d:{const a=pop(),b=pop();stack.push(a,b);break;}
   case 0x1c:stack.push(get(pop()));break;
   case 0x1d:{const v=pop(),n=pop();set(n,v);break;}
   case 0x3c:{const v=pop(),n=pop();locals[n]=v;break;}
   case 0x41:locals[pop()]=undefined;break;
   case 0x4e:{const n=pop(),obj=pop();assert(obj!=null,`GetMember ${n} on ${obj} in ${name} @${start}`);stack.push(obj[n]);break;}
   case 0x4f:{const v=pop(),n=pop(),obj=pop();assert(obj!=null,`SetMember ${n} on ${obj}`);obj[n]=v;break;}
   case 0x52:{const n=pop(),obj=pop(),argc=pop();stack.push(call(n==null||n===''?obj:obj?.[n],obj,argc));break;}
   case 0x3d:{const n=pop(),argc=pop();stack.push(call(get(n),E.scope,argc));break;}
   case 0x3e:return pop();
   case 0x30:stack.push(E.scope.random(pop()));break;
   case 0x34:stack.push(E.scope.getTimer());break;
   case 0x0a:binary((a,b)=>Number(a)+Number(b));break;
   case 0x47:binary((a,b)=>a+b);break;
   case 0x0b:binary((a,b)=>a-b);break;
   case 0x0c:binary((a,b)=>a*b);break;
   case 0x0d:binary((a,b)=>a/b);break;
   case 0x3f:binary((a,b)=>a%b);break;
   case 0x0e:case 0x49:binary((a,b)=>a==b);break;
   case 0x66:binary((a,b)=>a===b);break;
   case 0x0f:case 0x48:binary((a,b)=>a<b);break;
   case 0x67:binary((a,b)=>a>b);break;
   case 0x12:stack.push(!pop());break;
   case 0x10:binary((a,b)=>a&&b);break;
   case 0x11:binary((a,b)=>a||b);break;
   case 0x50:stack.push(Number(pop())+1);break;
   case 0x51:stack.push(Number(pop())-1);break;
   case 0x42:{const n=pop();stack.push(Array.from({length:n},pop));break;}
   default:throw Error(`unsupported opcode 0x${op.toString(16)} in ${name} @${start}`);
  }
 }
}
const tests=[];
function test(name,label,mutate=()=>{},args=()=>[]){tests.push({name,label,mutate,args});}
for(const [n,safe]of [['^#','head'],['@','opponent hat'],['>$','player hat']]){
 for(const floor of [false,true])test(n,safe+' '+(floor?'floor':'air'),E=>{E.scope.char.head._y=E.scope.char2.head._y=floor?140:-20;E.scope['"$']._y=E.scope['try ']._y=floor?120:-10;},E=>n==='^#'?[E.scope.char]:[]);
}
for(const recoil of [0,0.1,4])test('@$','tick recoil '+recoil,E=>{E.scope.char.xvel=recoil;E.scope.char2.xvel=-recoil;});
test('@$','tick projectiles and detachments',E=>{for(const c of [E.scope.char,E.scope.char2])Object.assign(c,{headfly:1,hatgo:1,shotgo:1});});
test('@$','tick live duel and animated limbs',E=>{E.scope.gameon=1;E.scope.char._currentframe=130;E.scope.char.arm1.armin._currentframe=42;E.scope.char2.arm1.armin._currentframe=87;});
test('@$','tick bonus effects and aiming guide',E=>{Object.assign(E.scope,{bonusgo:2,bottlego:1,birdgo:1,setmouse:1,' try':0,rescale:1});E.scope.chgo[2]=1;E.scope.bloodclips=[E.clip('testblood')];E.scope['^$']=[E.clip('chunk')];});
for(const elapsed of [0,599,600,1199,1200,1799,1800,2399,2400])test('9!','countdown '+elapsed,E=>{E.setNow(1000+elapsed);E.scope.countsound=Math.min(2,Math.floor(elapsed/600));});
test('9!','countdown leaves holster',E=>{E.root.barrel1.hitResult=false;E.scope.in=1;E.scope.countsound=2;});
test('9!','countdown pause visible',E=>{E.grand.pausebox._visible=1;E.setNow(1650);});
test('9!','countdown bonus round',E=>{E.scope.bonusgo=1;});
for(const count of [0,1,4])test('#%','blood particles '+count,()=>{},()=>[20,30,-6,-1,count]);
for(const whom of ['char','char2'])test(']','detach hat '+whom,()=>{},E=>[E.scope[whom]]);
for(const pose of ['standing','crouch','leaning','ground','facedown'])test('return','head hit '+pose,E=>{E.scope.char.pos=pose;E.scope.char.head.headin._currentframe=1;},E=>[E.scope.char,E.scope['do '],5,8,1,0]);
for(const pose of ['standing','leaning'])test(' ','upper-body hit '+pose,E=>{E.scope.char.pos=pose;},E=>[E.scope.char,E.scope['do '],5,8,1,0]);
for(const name of [' set','SubStomach1','SubStomach2','SubCrotch','each ','catch']){
 for(const bonus of [0,4])for(const pose of ['standing','leaning','crouch'])test(name,'hit '+pose+' bonus '+bonus,E=>{E.scope.char.pos=pose;E.scope.bonusgo=bonus;},E=>[E.scope.char,E.scope['do '],23,155,1,7]);
}
for(const whom of ['char','char2'])for(const pose of ['standing','ground','dead','facedown'])for(const y of [120,126,135,145,155,165,180,190,205,220,240,260,280])test('!%','dispatch '+whom+' '+pose+' y'+y,E=>{E.scope[whom].pos=pose;},E=>[E.scope[whom],E.scope['do '],23,y,1,7]);
let passed=[];
for(const t of tests){
 const A=setup(),B=setup();
 const ctx=vm.createContext(B.scope);vm.runInContext(source,ctx,{timeout:1000});
 const recovered=B.scope[names[t.name]];A.stubFunctions();B.stubFunctions();t.mutate(A);t.mutate(B);
 try{runAVM(t.name,t.args(A),A);recovered.apply(B.scope,t.args(B));assert.deepStrictEqual(A.snapshot(),B.snapshot());passed.push({function:t.name,readable:names[t.name],case:t.label});}
 catch(e){console.error('FAILED:',names[t.name],t.label);throw e;}
}
const result={passed:passed.length,functions:[...new Set(passed.map(x=>x.readable))],cases:passed,scope:'Differential original AVM1 bytes vs recovered expressions in deterministic mock timelines; nested calls stubbed, no rendering/audio/runtime equivalence claim.'};
fs.writeFileSync(path.join(ROOT,'decompiled/recovered/differential-verification.json'),JSON.stringify(result,null,2)+'\n');
console.log(JSON.stringify({passed:passed.length,functions:result.functions},null,2));
