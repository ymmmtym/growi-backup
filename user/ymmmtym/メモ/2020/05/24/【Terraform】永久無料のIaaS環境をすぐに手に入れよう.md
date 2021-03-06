# 【Terraform】always freeのIaaS環境をすぐに手に入れよう

# はじめに

タイトルにある通り、**always free**の**Iaas**環境(Compute)をすぐに手に入れたいと思います。

# 作成するIaaS環境

提供しているのは2つのプロバイダーで、スペックは以下の通りです。

| Provider              | Service               | Spec                              |
| --------------------- | --------------------- | --------------------------------- |
| Google Cloud Platform | Google Compute Engine | CPU:0.2 Memory:0.6GB Storage:30GB |
| Oracle Cloud Infrastructure | Oracle Cloud Compute  | OCPU:1/8日 Memory:1GB       |

\* Google Compute Engineは**1台**まで無料
\* Oracle Cloud Computeは**2台**まで無料

[Google Cloud の無料枠](https://cloud.google.com/free/docs/gcp-free-tier?hl=ja)
[Oracle CloudのFree Tier](https://docs.cloud.oracle.com/ja-jp/iaas/Content/FreeTier/freetier.htm)

ということで、計3台のVMが永久無料で使えるのでTerraformで簡単に作成してみます。

**補足**

スペック確認は実際に作成されたVMで確認しました。

# 作成手順

利用するクラウドサービスに登録を済ませておいてください。

GCP: <https://cloud.google.com/getting-started?hl=ja>
Oracle Cloud: <https://www.oracle.com/jp/cloud/free/?intcmp=ocom-hpjp>

## 1. credential情報を取得する

### GCP

[サービスアカウント](https://console.cloud.google.com/projectselector2/iam-admin/serviceaccounts?supportedpurview=project)のページを開いて、Terraformの実行権限を付与する必要があります。

以下、[公式ページ](https://cloud.google.com/iam/docs/creating-managing-service-accounts?hl=ja#iam-service-accounts-create-console)から抜粋です。

> Cloud Console で [サービス アカウント] ページを開きます。
> 
> [サービス アカウント] ページを開く
> 
> [プロジェクトを選択] をクリックし、プロジェクトを選択して [開く] をクリックします。
> 
> [サービス アカウントを作成] をクリックします。
> 
> サービス アカウント名（わかりやすい表示名）、オプションの説明を入力し、サービス アカウントに付与するロールを選択して、[保存] をクリックします。

その後の流れは以下の様にします。

1. サービスアカウントの右側に点々をクリックして「鍵を作成」をクリックする
2. 「JSON」を選択して、作成をクリックする
3. Jsonファイルがダウンロードされる。任意の名前に変更する（今回は**credentials.json**）

参考）
<https://www.niandc.co.jp/sol/tech/date20191002_1814.php>

## 2. ssh公開鍵を作成する

## 3. Terraform Cloudに登録する(Option)

<https://dev.classmethod.jp/articles/terraform-cloud/>

## Reference

[ずっと無料で使えるクラウドの「Free Tier」主要サービスまとめ。2020年版](https://www.publickey1.jp/blog/20/free_tier2020.html)
https://github.com/terraform-providers/terraform-provider-oci/tree/master/examples
https://community.oracle.com/docs/DOC-1024538
https://qiita.com/feifo/items/2ca1f8451fb7f74d77c5
https://qiita.com/kenwatan/items/81ef53a219bba81dad17
https://qiita.com/minamijoyo/items/1f57c62bed781ab8f4d7
