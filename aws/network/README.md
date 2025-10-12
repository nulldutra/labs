## Initialing the backend

```sh
terraform init -backend-config=environment/prod/backend.tfvars
```

## Applying the configurations

```sh
terraform apply -var-file=environment/prod/terraform.tfvars
```
