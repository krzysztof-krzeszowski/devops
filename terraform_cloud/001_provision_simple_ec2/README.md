# Provision a simple EC2

The script `main.tf` shows how to provision a simple EC2 instance. You can select a different instance type `instance_type` and a different image `ami`.
Run `terraform init` and then `terraform apply` to provision the instance. `terraform destroy` terminates the instance.

The EC2 instance type can be configured via command line invocation, e.g. `terraform plan -var=instance_type="t2.nano"`.
