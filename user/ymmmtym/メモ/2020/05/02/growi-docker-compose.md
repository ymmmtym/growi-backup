# growi-docker-compose
## growi with docker compose
デフォルトでelasticsearchに使用するメモリは以下になっているらしい。

```
-Xms1g
-Xmx1g
```

このconfigをそれぞれ半分(-Xmx512m)に変更すれば起動できるが不安定な動作になる。
そのため、推奨スペックは以下の通りである。
| vCPU | メモリ |
| ---- | ---- |
|     1 |     2 |

<https://sig9.hatenablog.com/entry/2018/04/09/000000>
