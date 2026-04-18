import pathlib, re

files = list(pathlib.Path('slides-sections').glob('*.md'))
n = 0

def strip_lead(s):
    return s.lstrip('\n')

for f in files:
    text = f.read_text(encoding='utf-8')
    new_text = text
    changed = False

    for m in re.finditer(r'(?s)<!--(.*?)-->', text):
        inner = m.group(1)
        norm = inner.replace('\r\n', '\n')
        sep = '\n\n- - -\n\n'
        parts = norm.split(sep)
        if len(parts) != 4:
            continue

        # Identify sections by their emoji marker (position-independent)
        fr_idx   = next((i for i, p in enumerate(parts) if '\U0001f1eb\U0001f1f7' in p), None)
        en_idx   = next((i for i, p in enumerate(parts) if '\U0001f1ec\U0001f1e7' in p), None)
        meta_idx = next((i for i, p in enumerate(parts) if '\U0001f3af' in p), None)
        img_idx  = next((i for i, p in enumerate(parts) if '\U0001f3a8' in p), None)

        if None in (fr_idx, en_idx, meta_idx, img_idx):
            continue

        # Desired order: FR, EN, meta, image — with consistent leading newline
        new_norm = (
            '\n' + strip_lead(parts[fr_idx])
            + sep + strip_lead(parts[en_idx])
            + sep + strip_lead(parts[meta_idx])
            + sep + strip_lead(parts[img_idx])
        )

        if '\r\n' in inner:
            new_inner = new_norm.replace('\n', '\r\n')
        else:
            new_inner = new_norm

        new_text = new_text.replace('<!--' + inner + '-->', '<!--' + new_inner + '-->')
        changed = True

    if changed:
        f.write_text(new_text, encoding='utf-8')
        n += 1
        print(f'Updated: {f.name}')
    else:
        print(f'Skipped:  {f.name}')

print(f'\nTotal updated: {n}')
