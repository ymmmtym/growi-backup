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

## Examples

```bash=
python pages_get.py user
python pages_update.py user
```
