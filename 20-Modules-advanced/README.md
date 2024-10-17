# Terraform Modules with multiple `.tfVars` files

## How to deploy (plan and apply) tf configuration files using `modules` with `.tfvars`

## To deploy in the `Dev` Environment

- Run `Terraform plan` to see preview the resources to be created

```sh
terraform plan -var-file="./variable-values/dev.tfvars"
```

- Run `Terraform apply` to create the resources

```sh
terraform apply -var-file="./variable-values/dev.tfvars"
```

## To deploy in the `Prod` Environment

- Run `Terraform plan` to see preview the resources to be created

```sh
terraform plan -var-file="./variable-values/prod.tfvars"
```

- Run `Terraform apply` to create the resources

```sh
terraform apply -var-file="./variable-values/prod.tfvars"
```
---

## To deploy in the `Test` Environment

- Run `Terraform plan` to see preview the resources to be created

```sh
terraform plan -var-file="./variable-values/test.tfvars"
```

- Run `Terraform apply` to create the resources

```sh
terraform apply -var-file="./variable-values/test.tfvars"
```
---