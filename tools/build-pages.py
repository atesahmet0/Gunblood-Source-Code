"""Build the self-contained GitHub Pages site in docs/; preserve hosting-terms evidence."""
from pathlib import Path
import hashlib,json,shutil
ROOT=Path(__file__).resolve().parents[1]
runtime=ROOT/'tools/vendor/ruffle'
if not (runtime/'ruffle.js').is_file():
    raise SystemExit('Run python3 tools/fetch-ruffle.py first.')
version=json.loads((runtime/'package.json').read_text())['version']
if version!='0.7.1':raise SystemExit('Expected pinned Ruffle 0.7.1.')
swf=ROOT/'decompiled/recovered/validation/recompiled-check.swf'
expected='eac438bc7572d1df5aa7fe6d6a6b126c14ab675a2cfb2cf68d5e5bd7b6bcbb99'
if hashlib.sha256(swf.read_bytes()).hexdigest()!=expected:
    raise SystemExit('Rebuilt SWF differs from the validated version; update validation before deploying.')
out=ROOT/'docs';out.mkdir(exist_ok=True)
for directory in ['ruffle','game']:
    target=out/directory
    if target.exists():shutil.rmtree(target)
    target.mkdir()
for source in runtime.iterdir():
    if source.suffix in ['.js','.wasm'] or source.name.startswith('LICENSE'):
        shutil.copy2(source,out/'ruffle'/source.name)
shutil.copy2(swf,out/'game/gunblood.swf')
shutil.copy2(ROOT/'web/index.html',out/'index.html')
(out/'.nojekyll').write_text('')
files=[]
for path in sorted(out.rglob('*')):
    if path.is_file() and path.name!='build-manifest.json':
        data=path.read_bytes();files.append({'path':str(path.relative_to(out)),'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()})
(out/'build-manifest.json').write_text(json.dumps({'ruffle_version':version,'rebuilt_swf_sha256':expected,'files':files},indent=2)+'\n')
print('Built docs/:',len(files),'files,',sum(x['bytes'] for x in files),'bytes; validated SWF preserved.')
