# Terraform Modules


## Checkov
Running checkov for all modules.

```
terraform init
terraform plan -out tf.plan
terraform show -json tf.plan  > tf.json 
checkov -f tf.json
```
