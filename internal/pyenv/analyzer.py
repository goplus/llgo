# analyzer.py (示意)
import sys, json, importlib.metadata as md, pathlib, subprocess, os
def wheel_files(dist):
    rec = None
    for f in dist.files or []:
        if str(f).endswith('RECORD') or str(f).endswith('FILES'):
            rec = dist.locate_file(f); break
    files=[]
    if rec and rec.exists():
        for line in rec.read_text().splitlines():
            p=line.split(',')[0]
            files.append(dist.locate_file(p))
    else:
        # 兜底: 以 dist.files 枚举
        for f in dist.files or []:
            files.append(dist.locate_file(f))
    return [str(x) for x in files if x.exists()]

def dylib_deps(path):
    if sys.platform=='darwin':
        out = subprocess.check_output(['otool','-L',path], text=True, errors='ignore')
        # 解析依赖行，过滤系统库；返回需随包的依赖绝对路径
        # ... 省略解析细节 ...
        return []
    # Linux/Windows 同理
    return []

def main(pkgs, hooks_dir, out_manifest):
    site = next(p for p in map(pathlib.Path, sys.path) if p.name=='site-packages' or 'site-packages' in str(p))
    manifest=[]
    # 应用自定义 hooks（YAML/JSON），解析 hiddenimports/datas/binaries
    # ... 省略：加载并生效 ...
    for name in pkgs:
        dist = next((d for d in md.distributions() if d.metadata['Name'].lower()==name.lower()), None)
        if not dist: continue
        for f in wheel_files(dist):
            rel = os.path.relpath(f, site)
            if f.endswith(('.py','.pyc')):
                manifest.append({'type':'PY','src':f,'dst':rel})
            elif f.endswith(('.so','.pyd','.dylib')):
                manifest.append({'type':'EXT','src':f,'dst':rel})
                for dep in dylib_deps(f):
                    # 放到包内 .libs/ 或统一 libs/
                    dstdir = os.path.join(os.path.dirname(rel),'.libs')
                    manifest.append({'type':'DYLIB','src':dep,'dst':os.path.join(dstdir,os.path.basename(dep))})
            else:
                manifest.append({'type':'DATA','src':f,'dst':rel})
    json.dump(manifest, open(out_manifest,'w'), ensure_ascii=False, indent=2)

if __name__=='__main__':
    # analyzer.py <pkg1,pkg2,...> <hooks_dir> <out_manifest>
    pkgs = sys.argv[1].split(',')
    main(pkgs, sys.argv[2], sys.argv[3])