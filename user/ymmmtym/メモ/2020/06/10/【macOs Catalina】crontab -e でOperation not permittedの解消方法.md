# 【macOS Catalina】crontab -e でOperation not permittedの解消方法

既にQiitaにもいくつかエントリーがありますが、それでも解決できない場面があったので、補足として記載します。

[macOS Mojave で crontab -e できない](https://qiita.com/labocho/items/e1d8ae8223f60ad9d4ee)
[【Mac】crontabでOperation not permittedと出た時の解決方法](https://qiita.com/nishina555/items/b8b0800800ccb46333af)

## 解消方法

```:log
crontab: installing new crontab
crontab: tmp/tmp.7351: Operation not permitted
crontab: edits left in /tmp/crontab.ji8RUZh6dh
```

上記のエラーが発生した場合、
「システム環境設定 > セキュリティとプライバシー > プライバシー > フルディスクアクセス」
