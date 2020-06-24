# [未解決] 【macOS Catalina】crontab -e でOperation not permittedの解消方法

既にQiitaにもいくつかエントリーがありますが、それでも解決できない場面があったので、補足として記載します。

[macOS Mojave で crontab -e できない](https://qiita.com/labocho/items/e1d8ae8223f60ad9d4ee)
[【Mac】crontabでOperation not permittedと出た時の解決方法](https://qiita.com/nishina555/items/b8b0800800ccb46333af)

## 解消方法

```:log
crontab: installing new crontab
crontab: tmp/tmp.7351: Operation not permitted
crontab: edits left in /tmp/crontab.ji8RUZh6dh
```

上記のエラーが発生した場合、以下を開く。
「システム環境設定 > セキュリティとプライバシー > プライバシー > フルディスクアクセス」
iTermを使用している場合は、iTermにチェックを入れて追加する。

## ここからが解決できない問題

### mountしたドライブ(外付けSSD)にcronが実行できない

`crontab -e`で以下のような記述をしました。
`Seagate_5TB_y`が外付けSSDで、その中の`Google Drive`フォルダに個人のGoogle Driveフォルダをマウントさせています。

```bash=
*/1 * * * * tar zcvf /Volumes/Seagate_5TB_y/Google\ Drive/ssh.tar.gz ~/.ssh/
```

しかしながら、結果は、、

```bash=
tar: Failed to clean up compressor
```

となり、mount先に新しいファイルを作成することができません、

## 最後に

現在では、gdriveコマンドやskickコマンドがGoogleの認証が使用できない事象が発生してます、
そこと関係があるのかもしれません。

解決方法をご存知の方はご教授頂ければと思います。

