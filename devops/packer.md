# Packer

```bash=
docker run -it \
    --mount type=bind,source=$(pwd)/pkr,target=/mnt/pkr \
    hashicorp/packer:latest build /mnt/pkr/main.json
```

<https://hub.docker.com/r/hashicorp/packer>
