# Kubernetes

## Minikube

<https://minikube.sigs.k8s.io/docs/>

### Ops

```bash=
minikube config set vm-driver virtualbox

minikube start
minikube delete
```

### Ingress

```bash=
minikube addons enable ingress
```

## Samples

get

```bash=
kubectl get svc
kubectl get pods
```

apply

```bash=
kubectl apply -f service.yml
kubectl apply -f deploy.yml
```

## Kompose

```bash=
kompose convert -f docker-compose.yml
```

## Playground

<https://training.play-with-kubernetes.com/kubernetes-workshop/>

## Reference

[入門 Kubernetes](https://y-ohgi.com/introduction-kubernetes/)
[2019年版・Kubernetesクラスタ構築入門](https://knowledge.sakura.ad.jp/20955/)
[今こそ始めよう！　Kubernetes入門](https://thinkit.co.jp/series/7342)
[事実上の標準ツールとなっているKubernetes向けデプロイツール「Helm」入門](https://knowledge.sakura.ad.jp/23603/)
[NEG とは何か](https://medium.com/google-cloud-jp/neg-%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B-cc1e2bbc979e)
[転職したらKubernetesだった件](https://qiita.com/yuanying/items/ceeeb7329a4fdc566546)
[汎用プログラミング言語でKubernetesのYAMLを生成するcdk8sが発表されました！](https://dev.classmethod.jp/articles/end-yaml-with-cdk8s/)
[[Kubernetes] オンプレでも GKE Like な Ingress を使うために 自作 Ingress Controller を実装してみた](https://cyberagent.ai/blog/pr/kubernetes/3758/)
[Kubernetesのコードリーディングをする上で知っておくと良さそうなこと](https://medium.com/@bells17/things-you-should-know-about-reading-kubernetes-codes-933b0ee6181d)
[CVE-2020-10749（Kubernetesの脆弱性）のPoCについての解説](https://knqyf263.hatenablog.com/entry/2020/06/19/063431)
[Kubernetesにおけるマルチクラスタ関連手法の分類](https://amsy810.hateblo.jp/entry/2020/06/17/090000)
[Kubernetes道場 22日目 - Ingressについて](https://cstoku.dev/posts/2018/k8sdojo-22/)
[kubernetesにingressを導入する方法](https://qiita.com/Hirata-Masato/items/8e6b4536b6f1b23c5270)
[Minikube で快適に Ingress を利用する](https://qiita.com/superbrothers/items/13d8ce012ef23e22cb74)
[もし今1からKubernetesを勉強するとしたらどうやって勉強するか](https://blux.hatenablog.com/entry/2020/07/30/235040)
[Oracle Cloud Free Tierで0円KubernetesをTerraform+Ansibleで自動構築する](https://qiita.com/gashirar/items/a9f73bf945d201c80cfa)
