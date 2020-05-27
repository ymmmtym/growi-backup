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
docker run -v /home/hoge/shared:/shared-it ubuntu /bin/bash
```

### show dangling (`<none>`) images
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

### Tag

update my image's tag

```bash=
docker pull ${USER}/${image}
docker tag ${USER}/${image} ${USER}/${image}:${tag}
docker push ${USER}/${image}:${tag}
```

search tags of the image

```bash=
curl -s https://registry.hub.docker.com/v1/repositories/${image}/tags | jq -r '.[].name'
```


## Dockerhub

1. puth image to dockerhub
2. connect to github
3. setting automated build

## Dockerfile

### Roles

- default directory is /
- If workdir not exist, created automatelly.

## Docker compose

## Samples
### https-portal

<https://github.com/SteveLTN/https-portal>

#### Usage

1. example.com.localを127.0.0.1に名前解決させる。
2. app(container name):5000(container exposed port)

```yaml
https-portal:
  image: steveltn/https-portal:1
  ports:
    - '80:80'
    - '443:443'
  links:
    - app
  restart: always
  environment:
    DOMAINS: 'example.com.local -> http://app:5000'
    STAGE: 'local' # Don't use production until staging works
    # FORCE_RENEW: 'true'
```

## Reference
<https://y-ohgi.com/introduction-docker/>

## Play with Docker
https://labs.play-with-docker.com/
