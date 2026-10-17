"""Fetch the pinned official Ruffle runtime; validate it before safe extraction."""
from pathlib import Path
import base64, hashlib, io, json, tarfile, urllib.request
ROOT = Path(__file__).resolve().parents[1]
metadata = json.loads((ROOT / 'runtime-validation/ruffle-package-metadata.json').read_text())
url = metadata['dist']['tarball']
assert metadata['name'] == '@ruffle-rs/ruffle' and metadata['version'] == '0.7.1'
assert url == 'https://registry.npmjs.org/@ruffle-rs/ruffle/-/ruffle-0.7.1.tgz'
with urllib.request.urlopen(url, timeout=60) as response:
    archive = response.read()
digest = 'sha512-' + base64.b64encode(hashlib.sha512(archive).digest()).decode()
if digest != metadata['dist']['integrity']:
    raise SystemExit('Ruffle package integrity check failed; nothing extracted.')
destination = ROOT / 'tools/vendor/ruffle'
destination.mkdir(parents=True, exist_ok=True)
with tarfile.open(fileobj=io.BytesIO(archive), mode='r:gz') as package:
    for member in package.getmembers():
        if not member.isfile():
            continue
        parts = Path(member.name).parts
        if not parts or parts[0] != 'package' or '..' in parts:
            raise SystemExit('Unexpected archive path: ' + member.name)
        member.name = str(Path(*parts[1:]))
        package.extract(member, destination, filter='data')
print('Ruffle 0.7.1 downloaded, SHA-512 verified, and extracted to tools/vendor/ruffle/.')
