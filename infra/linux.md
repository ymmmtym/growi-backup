# Linux
## Makefile
ex)
```Makefile
makemigrations:
    docker-compose run --rm web python3 manage.py makemigrations

migrate:
    docker-compose run --rm web python3 manage.py migrate

createsuperuser:
    docker-compose run --rm web python3 manage.py createsuperuser
```

## VM init for CentOS 7
### Copy private key from local machine
```bash=
scp ~/.ssh/id_rsa ${target_machine}:~/.ssh/
```

### setting swap
```bash=
sudo dd if=/dev/zero of=/swapfile bs=1M count=1024
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo sed -i '$ a /swapfile                                 swap                    swap    defaults        0 0' /etc/fstab
```

### update yum repository
```bash=
sudo yum update
```

## Terminal
|Key|Action|
----|-------
|++alt+++f,b|move word by word|


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
for MacOS command.

```bash=
mdfind -onlyin . ".md"
```

### ssh
ssh rsa key generate
```bash=
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ""
```

### showmount
show dir which enable to mount
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
```bash=
getent passwd
getent group
```

### eval
apply vars in file
```bash=
eval "cat <<< \"$(cat file)\""
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


