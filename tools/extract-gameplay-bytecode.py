"""Extract original AVM1 functions for independent differential validation."""
from pathlib import Path
import json,struct,zlib,base64
ROOT=Path(__file__).resolve().parents[1]
def u16(b,p=0):return struct.unpack_from('<H',b,p)[0]
def cstr(b,p):
 e=b.index(0,p);return b[p:e].decode('utf8'),e+1
def tags(b,p):
 while p+2<=len(b):
  h=u16(b,p);p+=2;n=h&63;c=h>>6
  if n==63:n=struct.unpack_from('<I',b,p)[0];p+=4
  yield c,b[p:p+n]
  p+=n
b=(ROOT/'archive/gunblood.swf').read_bytes();data=zlib.decompress(b[8:]);pos=(5+4*(data[0]>>3)+7)//8+4
sprite=next(p for c,p in tags(data,pos) if c==39 and u16(p)==499)
code=[p for c,p in tags(sprite,4) if c==12][1]
functions={};pools=[]
def actions(b):
 out=[];p=0;pending=[0];seen=set()
 while pending:
  p=pending.pop()
  if p in seen or p>=len(b):continue
  assert p>=0,(len(b),p)
  seen.add(p)
  start=p;op=b[p];p+=1;n=0
  if op>=128:n=u16(b,p);p+=2
  pay=b[p:p+n];p+=n;args=[]
  if op in [0x9b,0x8e]:
   name,i=cstr(pay,0);count=u16(pay,i);i+=2;params=[];flags=0
   if op==0x8e:
    regs=pay[i];flags=u16(pay,i+1);i+=3
   for _ in range(count):
    reg=pay[i] if op==0x8e else 0;i+=int(op==0x8e)
    pname,i=cstr(pay,i);params.append([reg,pname])
   size=u16(pay,i)
   body=b[p:p+size];p+=size
   functions[name]=dict(params=params,flags=flags,bytecode=base64.b64encode(body).decode(),length=size,offset=start)
   args=[name]
  elif op==0x88:
   i=2;pool=[]
   for _ in range(u16(pay)):
    val,i=cstr(pay,i);pool.append(val)
   pools.append(pool);args=pool
  elif op==0x96:
   i=0
   while i<len(pay):
    t=pay[i];i+=1
    if t==0:val,i=cstr(pay,i)
    elif t==1:val=struct.unpack_from('<f',pay,i)[0];i+=4
    elif t==2:val=None
    elif t==3:val={'undefined':True}
    elif t==4:val={'register':pay[i]};i+=1
    elif t==5:val=bool(pay[i]);i+=1
    elif t==6:val=struct.unpack('<d',pay[i+4:i+8]+pay[i:i+4])[0];i+=8
    elif t==7:val=struct.unpack_from('<i',pay,i)[0];i+=4
    elif t==8:val={'constant':pay[i]};i+=1
    elif t==9:val={'constant':u16(pay,i)};i+=2
    else:raise ValueError(('push',t))
    args.append(val)
  elif op in [0x99,0x9d]:
   args=[p+struct.unpack('<h',pay)[0]]
   if args[0]<0:raise ValueError(('branch',start,p,pay.hex(),args[0]))
  elif op==0x87:args=[pay[0]]
  elif op==0x81:args=[u16(pay)]
  elif op==0x9f:args=list(pay)
  elif n:args=list(pay)
  out.append(dict(offset=start,end=p,op=op,args=args))
  if op in [0x99,0x9d]:pending.append(args[0])
  if op not in [0,0x3e,0x99]:pending.append(p)
 return sorted(out,key=lambda a:a['offset'])
# Initial bytecode has a provably constant branch: false, a, b, Equals, Not, If.
# Decode only its taken branch by replacing its fallthrough with an unconditional jump.
assert code[:6]==bytes([0x96,12,0,5,0,7]) and code[10]==7
assert struct.unpack_from('<i',code,6)[0]!=struct.unpack_from('<i',code,11)[0]
assert code[15:17]==bytes([0x0e,0x12]) and code[17]==0x9d
# Decode the actual entry through a tiny worklist; functions below inherit its real pool.
rootcode=bytearray(code)
rootcode[17]=0x99
root=actions(bytes(rootcode))
assert len(functions)==46,len(functions)
pool=max(pools,key=len)
assert len(pool)==359,len(pool)
out=ROOT/'decompiled/recovered/original-bytecode.json'
out.write_text(json.dumps(dict(constant_pool=pool,functions=functions),indent=2)+'\n')
print('Extracted',len(functions),'functions from original SWF;',len(pool),'constant-pool entries.')
