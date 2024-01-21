# DBA Jumphost

This module creates an EC2 Instance in the public subnet to act as a Jumphost for access resources in the VPC's private subnets.

# Soft link to Backend configuration

This Terraform module already contains a soft link to the backend.conf file in the chapter02/terraform/rds_vpc directory. This can be recreated if needed with...


```bash
cd chapter03/terraform/dba_jumphost
ln -s ../../../chapter02/terraform/rds_vpc/backend.conf backend.conf
```

# Setup

```bash
export AWS_PROFILE=aws_terraform
terraform init -backend-config=backend.conf  # had to put bucket name in data.tf so perhaps junk this?
```

# Changes required by a new user of this module
* data.tf - Change remote state config for rds_vpc. 