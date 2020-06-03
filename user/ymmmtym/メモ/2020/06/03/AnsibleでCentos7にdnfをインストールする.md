# AnsibleでCentos7にdnfをインストールする

## dnfとは

[fedora公式ページ](https://fedoraproject.org/wiki/DNF?rd=Dnf)

- Dandified Yum(ダンディファイド ヤム)とも言うらしい
- Fedoraのパッケージ管理システム(バージョン22からデフォルトになった)
- RHEL7,CentOS7でも使用できる(`yum install -y dnf`)
- RHEL8,CentOS8では標準でインストール済み

## CentOS 7にインストールしてみる

CentOS 7.8のDockerコンテナにdnfをインストールする。

```
[dnfuser@localhost ~]$ docker run -it --rm centos:7 bash



[root@3b4a088d7e6f /]# yum update -y
[root@3b4a088d7e6f /]# yum install -y python3-setuptools gcc python3-devel
[root@3b4a088d7e6f /]# yum install -y dnf

[root@3b4a088d7e6f /]# head -n1 /usr/bin/dnf
#!/usr/bin/python2

```
