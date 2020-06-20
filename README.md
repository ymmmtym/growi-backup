# growi-backup

![Create backup of growi markdown files](https://github.com/ymmmtym/growi-backup/workflows/Create%20backup%20of%20growi%20markdown%20files/badge.svg)

## Usage

setup python env

```bash=
. .venv/bin/activate
pip install -r requirements.txt
```

setup credentials

```bash=
GROWI_URL=<your site url>
GROWI_ACCESS_TOKEN=<your access token>
```

## Help

```bash=
python pages.py -h

usage: pages.py [-h] [-b] [-u] file_path

Process some integers.

positional arguments:
  file_path     Local file path of your markdown document

optional arguments:
  -h, --help    show this help message and exit
  -b, --browse  Open browser
  -u, --update  Update page
```
