# Linux

## Makefile

sample

```Makefile
makemigrations:
    docker-compose run --rm web python3 manage.py makemigrations

migrate:
    docker-compose run --rm web python3 manage.py migrate

createsuperuser:
    docker-compose run --rm web python3 manage.py createsuperuser
```

## Terminal

| Key         | Action            |
| ----------- | ----------------- |
| **alt**+f,b | move word by word |

### Reference

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

```
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

### showmount

show dir which is enable to mount

```bash=
showmount -e ${ipaddr}
```

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

## Reference

<https://github.com/nsuzuki7713/shell-script-tutorial>
[Linux — source コマンドは何をしているのか > 実は環境をリロードするためのものではない](https://qiita.com/YumaInaura/items/00437e6ab14d96adb71f)
[PXEブートとは？ PXE ブートの仕組み](http://www.putise.com/architecture/pxe-boot)
