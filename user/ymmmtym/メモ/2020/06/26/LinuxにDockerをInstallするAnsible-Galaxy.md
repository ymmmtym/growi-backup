# はじめに

LinuxにDockerをインストールするたびに、
「ubuntu docker install」
「centos docker install」
などをググって、Docker公式サイトより手動でインストールしていました。

毎回インストールするのは手間なので、自動化したいと思っていた矢先、
OSSで素晴らしいansible-galaxyがありましたので、紹介したいと思います。

## 前提条件

- ansibleの基礎が理解できていること

https://galaxy.ansible.com/geerlingguy/docker
https://github.com/geerlingguy/ansible-role-docker
