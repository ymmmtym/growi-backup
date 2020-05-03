# Terraform
## Docker
```bash=
touch terraform.tfvars # describe vars
touch terraform.tfstate # describe state from backends e.g. terraform cloud

docker run -it -v $PWD:/app -w /app hashicorp/terraform init
docker run -it -v $PWD:/app -w /app hashicorp/terraform plan -var "GCP_CREDENTIALS=$(cat credentials.json)"
```

`file("credentials.json")`が使用できないため、コマンド実行時にvarを渡す

## Reference
<https://qiita.com/donko_/items/6289bb31fecfce2cda79>
<https://github.com/terraform-providers/terraform-provider-oci>
