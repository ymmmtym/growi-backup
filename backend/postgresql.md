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

### Reference

[[PostgreSQL] よく使うコマンドまとめ](https://dev.classmethod.jp/articles/postgresql-organize-command/)
