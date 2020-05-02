# Terraform
## Docker
```bash=
touch terraform.tfvars
touch terraform.tfstate

docker run -it -v $PWD:/app -w /app hashicorp/terraform init
```

## Reference
<https://qiita.com/donko_/items/6289bb31fecfce2cda79>
