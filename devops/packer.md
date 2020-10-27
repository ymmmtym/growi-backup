# Packer

```bash=
docker run -it \
    --mount type=bind,source=$(pwd)/pkr,target=/mnt/pkr \
    hashicorp/packer:latest build /mnt/pkr/main.json
```

## Reference

<https://hub.docker.com/r/hashicorp/packer>
[10分で理解するPacker](https://qiita.com/Chanmoro/items/38e9d5441141f340e805)
