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
pip install Flask-Script
pip install coverage
```

### Make requirements.txt

```bash=
pip freeze > requirements.txt
```


## Launch Flask

```bash=
export FLASK_APP=section10/application/server.py
flask run --host=0.0.0.0
```

coverage

```bash=
cd section36/application
echo -e "[run]
source = ./flask_blog" > .coveragerc
coverage run -m unittest
coverage report -m
coverage html
```

## DB
```python
from app import db
from app.models.users import User

```


## Flask-login
<https://qiita.com/msrks/items/d9c327dd81749ec01d1d>

## To Do

- [x] ディレクトリ構造
    - [x] \_\_init\_\_.py
    - [x] config
- [ ] session
    - [ ] secret key
    - [ ] デコレータ
- [x] flash
- [x] db
- [x] models
- [ ] CRUD
- [ ] coverage


## Reference
<https://www.amazon.co.jp/%E3%82%BC%E3%83%AD%E3%81%8B%E3%82%89Flask%E3%81%8C%E3%82%88%E3%81%8F%E3%82%8F%E3%81%8B%E3%82%8B%E6%9C%AC-%E6%9C%AC%E7%94%B0%E5%B4%87%E6%99%BA-ebook/dp/B07F2X9GRQ>
<https://github.com/vinta/awesome-python>
<https://qiita.com/croquette0212/items/9b4dc5377e7d6f292671>
<https://qiita.com/yuucu/items/dea6e7a0a655af8fdb91>
<https://www.digitalocean.com/community/tutorials/how-to-add-authentication-to-your-app-with-flask-login>
<https://akamist.com/blog/archives/3527>
