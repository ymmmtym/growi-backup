# Packer

```bash=
docker run -it \
    --mount type=bind,source=/absolute/path/to/test_docker_packer,target=/mnt/test_docker_packer \
    hashicorp/packer:latest build \
    --var-file /mnt/test_docker_packer/vars.json \
    /mnt/test_docker_packer/template.json
```

<https://hub.docker.com/r/hashicorp/packer>
