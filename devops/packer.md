# Packer

```bash=
docker run -it \
    --mount type=bind,source=$(pwd)/main.json,target=/mnt/main.json \
    hashicorp/packer:latest build \
    --var-file /mnt/main.json
```

<https://hub.docker.com/r/hashicorp/packer>
