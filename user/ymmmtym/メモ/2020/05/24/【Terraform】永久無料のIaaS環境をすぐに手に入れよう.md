# 【Terraform】always freeのIaaS環境をすぐに手に入れよう

タイトルにある通り、**always free**の**Iaas**環境(Compute)を手に入れよう。
提供しているのは2つのプロバイダーで、スペックは以下の通りです。

| Provider              | Service               | Spec                              |
| --------------------- | --------------------- | --------------------------------- |
| Google Cloud Platform | Google Compute Engine | CPU:0.2 Memory:0.6GB Storage:30GB |
| Oracle Cloud          | Oracle Cloud Compute  | OCPU:1/8日 Memory:1GB             |

\* Google Compute Engineは**1台**まで無料
\* Oracle Cloud Computeは**2台**まで無料


https://docs.cloud.oracle.com/ja-jp/iaas/Content/FreeTier/freetier.htm

ということで、計3台のVMが永久無料で使えるのでTerraformで簡単に作成してみる

補足）
スペック確認は実際に作成されたVMで確認しました。

## 事前準備
### 1. クラウドプロバイダーに登録する
### 2. ssh公開鍵を作成しておく

## Reference

[ずっと無料で使えるクラウドの「Free Tier」主要サービスまとめ。2020年版](https://www.publickey1.jp/blog/20/free_tier2020.html)
[]()
