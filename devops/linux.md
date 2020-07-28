# Linux

## Design

### /proc

| path                  | content                                           |
| --------------------- | ------------------------------------------------- |
| /proc/cmdline         | OSがブートされたときに、kernelに渡されたパラメータ |
| /proc/cpuinfo         | CPUの情報                                         |
| /proc/meminfo         | メモリの情報                                      |
| /proc/ioports         | I/Oポートの情報                                   |
| /proc/interrupts      | IRQの情報                                         |
| /proc/bus/pci/devices | PCIデバイスの情報 ( /proc/pci は廃止 )            |
| /proc/scsi/scsi       | SCSIデバイスの情報                                |
| /proc/bus/usb/devices | USBデバイスの情報                                 |

### Makefile

sample

```Makefile
makemigrations:
    docker-compose run --rm web python3 manage.py makemigrations

migrate:
    docker-compose run --rm web python3 manage.py migrate

createsuperuser:
    docker-compose run --rm web python3 manage.py createsuperuser
```

example

```bash
make makemigration
make migrate
make createsuperuser
```

## Terminal

| Key         | Action            |
| ----------- | ----------------- |
| **alt**+f,b | move word by word |

[ターミナル 作業効率化 tips集](https://qiita.com/shizuma/items/86470203ac8ea6b4d53f)

## Commands

### dmidecode

show hardware info

```bash=
dmidecode
```

### grep

without reg expression

```bash=
grep -F 'hoge' sample.txt
fgrep 'hoge' sample.txt
```

### vim

start diff mode

```bash=
vimdiff
# or
vim -d
```

commands

```bash=
do # diff obtain
dp # diff put
:wqa # save all and finish
:xa # save all and finish
```

### tree

```bash=
tree  --charset=C
```

### less

```bash=
less +F README.md LICENSE
# ^C general mode
# F  monitoring mode
# :n move next file
```

### diff

```bash=
diff <(${cmd1}) <(${cmd2})
```

### find

```bash=
find / -name "*.csv"
find . -name ".sh" -type f exec chmod 755 {} +
```

### mdfind

only for MacOS

```bash=
mdfind -onlyin . ".md"
```

### ssh

ssh rsa key generate

```bash=
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ""
```

[プログラマーがSSH周りで知っておくと良いこと](https://qiita.com/syou007/items/9bbc1b50b9608651c390)

### mount

show dir which is enable to mount

```bash=
showmount -e ${ipaddr}
```

#### Reference

[マウントとシンボリックリンク何が違うの](https://life-is-command.com/ln-or-mount/)

### KVM

#### virsh

```bash=
virsh snapshot-delete ${hostname} ${snapshot}
```

### ipmitool

```bash=
ipmitool -I lanplus -H ${ipaddr} -U ${user} -P ${pwd} bmc reset cold
ipmitool -I lanplus -H ${ipaddr} -U ${user} -P ${pwd} bmc reset warm
```

### getent

show list of user, group...

```bash=
getent passwd
getent group
```

### eval

apply vars in file

```bash=
eval "cat <<< \"$(cat ${file})\""
```

### nkf

```bash=
nkf -Lu windows.txt > unix.txt
nkf -Lw unix.txt > windows.txt
```

### nohup

```bash=
nohup ${cmd} &
```

### stress

```bash=
stress -c 1 -q
```

### yes

```bash
yes y | apt-get install jq
```

### tr

replace lower to upper

```bash
tr a-z A-Z < fileA
```

### cp

```bash
cp -r dir1 dir2
cp -R dir1 dir2 # same as
```

### date

```bash
date -u "+%A %B %C %D %H %M %c %x"
```

### history

```bash
echo $HISTFILE
history -d 100
```

### ps

```bash
ps -ef
ps aux
ps -l
```

### split

```bash
split text result # 1000(default)
ls
# text resultaa resultab
```

### man

### tac

### mv


## Reference

<https://github.com/nsuzuki7713/shell-script-tutorial>
[Linux — source コマンドは何をしているのか > 実は環境をリロードするためのものではない](https://qiita.com/YumaInaura/items/00437e6ab14d96adb71f)
[PXEブートとは？ PXE ブートの仕組み](http://www.putise.com/architecture/pxe-boot)
[【Linux】コマンドまとめ 〜コマンド名の由来を添えて〜](https://qiita.com/taji-taji/items/0b4bcccf097371bc143c)
[Linuxコマンドの代替コマンド「ncdu」「htop」「tldr」「jq」「fd」とは？](https://news.mynavi.jp/article/20200626-1069025/)
