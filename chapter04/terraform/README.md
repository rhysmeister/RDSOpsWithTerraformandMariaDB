# Multi-AZ

This module create a Multi-AZ MaraiDB Instance inside our rds_vpc created in chapter 02.

# Soft link to Backend configuration

This Terraform module already contains a soft link to the backend.conf file in the chapter02/terraform/rds_vpc directory. This can be recreated if needed with...


```bash
cd chapter04/terraform/multi-az
ln -s ../../../chapter02/terraform/rds_vpc/backend.conf backend.conf
```

# Setup

```bash
export AWS_PROFILE=aws_terraform
terraform init -backend-config=backend.conf
terraform apply
```