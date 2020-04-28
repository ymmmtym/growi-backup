# Docker
## Install for centos
### Install docker
```bash=
sudo yum -y update
sudo yum -y install docker docker-compose
```

### Init setting
#### add sudo authority for docker cmd
```bash=
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo systemctl restart docker
```

## Commands
### copy
```bash=
docker cp -r ${container_id}:${input} ${output}
```

### run with mounting volumes
```bash=
docker run -v /home/hoge/shared:/shared -d -it ubuntu /bin/bash
```

### show `<none>` images
```bash=
docker images -f "dangling=true"
```

### build with tag
```bash=
docker build -t ${USER}/${tagname} .
```

### delete
```bash=
docker container prune
docker volume prune
docker image prune
docker network prune
docker system prune --volumes
```

### tag
```bash=
docker pull ${USER}/${image}
docker tag ${USER}/${image} ${USER}/${image}:${tag}
docker push ${USER}/${image}:${tag}
```

## Terraform
### Use docker image
```bash=
docker run -it -v $PWD:/app -w /app hashicorp/terraform apply
```

## Dockerhub
1. puth image to dockerhub
2. connect to github
3. setting automated build

## Dockerfile
default directory is /
If workdir not exist, created automatelly.

## Docker compose
```
$ docker-compose up -d
Building portfolio
Traceback (most recent call last):
  File "site-packages/docker/credentials/store.py", line 80, in _execute
  File "subprocess.py", line 411, in check_output
  File "subprocess.py", line 512, in run
subprocess.CalledProcessError: Command '['/usr/local/bin/docker-credential-desktop', 'get']' returned non-zero exit status 1.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "site-packages/docker/auth.py", line 264, in _resolve_authconfig_credstore
  File "site-packages/docker/credentials/store.py", line 35, in get
  File "site-packages/docker/credentials/store.py", line 93, in _execute
docker.credentials.errors.StoreError: Credentials store docker-credential-desktop exited with "error getting credentials - err: exit status 1, out: `User interaction is not allowed.`".

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "docker-compose", line 6, in <module>
  File "compose/cli/main.py", line 72, in main
  File "compose/cli/main.py", line 128, in perform_command
  File "compose/cli/main.py", line 1077, in up
  File "compose/cli/main.py", line 1073, in up
  File "compose/project.py", line 548, in up
  File "compose/service.py", line 367, in ensure_image_exists
  File "compose/service.py", line 1106, in build
  File "site-packages/docker/api/build.py", line 261, in build
  File "site-packages/docker/api/build.py", line 308, in _set_auth_headers
  File "site-packages/docker/auth.py", line 304, in get_all_credentials
  File "site-packages/docker/auth.py", line 281, in _resolve_authconfig_credstore
docker.errors.DockerException: Credentials store error: StoreError('Credentials store docker-credential-desktop exited with "error getting credentials - err: exit status 1, out: `User interaction is not allowed.`".')
[60351] Failed to execute script docker-compose
```

## Play with Docker
https://labs.play-with-docker.com/
