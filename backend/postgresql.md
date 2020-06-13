# PostgreSQL

## Commands

backup / restore

```shell=
username=<put user name>
dumpfile=<put dumpfile name> # ex) dump.sql

# dump
pg_dumpall -U ${username} > ${dumpfile}

# restore
cat ${dumpfile} | psql -U ${username}
```

console

```python=
from keywoo import app, db
from keywoo.models.sites import Site
from keywoo.models.users import User

new_site = Site(name=name, url=url, user=user)
db.session.add(new_site)
db.session.commit()
```

### Reference

[[PostgreSQL] よく使うコマンドまとめ](https://dev.classmethod.jp/articles/postgresql-organize-command/)
[PostgreSQLコマンドチートシート](https://qiita.com/Shitimi_613/items/bcd6a7f4134e6a8f0621)
