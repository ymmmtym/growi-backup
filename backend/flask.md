# Flask

- Pythonの軽量なWebフレームワーク
- DjangoよりGithubスター数が上

## flask環境構築
### Requirements

- python > 3

### Clone sample repository

```bash=
git clone git@github.com:ymmmtym/flask_tutorial.git
cd flask_tutorial
```

### Create virtual env

```bash=
python3 -m venv --clear .venv
. .venv/bin/activate
```

### Install Flask

```bash=
pip install -U pip
pip install Flask
pip install Flask-SQLAlchemy # DB
```

### Make requirements.txt

```bash=
pip freeze > requirements.txt
```


## Launch Flask
### section10

```bash=
export FLASK_APP=section10/application/server.py
flask run --host=0.0.0.0
```

## To Do

- [ ] ディレクトリ構造
- [ ] session
- [ ] flash
- [ ] db


## Reference
<https://www.amazon.co.jp/%E3%82%BC%E3%83%AD%E3%81%8B%E3%82%89Flask%E3%81%8C%E3%82%88%E3%81%8F%E3%82%8F%E3%81%8B%E3%82%8B%E6%9C%AC-%E6%9C%AC%E7%94%B0%E5%B4%87%E6%99%BA-ebook/dp/B07F2X9GRQ>
<https://github.com/vinta/awesome-python>

