# はじめに

LinuxにDockerをインストールするたびに、
「ubuntu docker install」
「centos docker install」
などをググって、Docker公式サイトより手動でインストールしていました。

毎回インストールするのは手間なので、自動化したいと思っていた矢先、
OSSで素晴らしいansible-galaxyを見つけましたので、紹介したいと思います。

**使用するansible-galaxy**

<https://galaxy.ansible.com/geerlingguy/docker>
<https://github.com/geerlingguy/ansible-role-docker>

**前提条件**

- ansibleの基礎が理解できていること

## Ansible Playbookを書いてみる

VirtualBox上にUbuntu18.04のVMを作成します。
Vagrantを用いて、Provisioning ToolとしてAnsibleを使用し、そのPlaybookでDockerをインストールします。
