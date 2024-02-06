# RDSOpsWithTerraformandMariaDB
RDS Operations with Terraform & Ansible: MariaDB Edition

# Table Of Contents

* *chapter01* - Setup your AWS Account.
  * Introduction
  * Creating an AWS Account
  * Securing an AWS Account
  * Creating an admin user
  * Creating a Budget
  * Creating Access Keys
  * Setting up the AWS CLI
  * Next Steps
* *chapter02* - Create a VPC for your RDS Projects.
  * Introduction
  * Setup your AWS / Terraform Environment
  * Creating an S3 State Bucket
  * Create the backend.conf file (Perhaps junk this?)
  * Creating the VPC with Terraform
  * A quick Tour of the VPC
  * Next Steps
* *chapter03* - Setting up the DBA Jump Host.
  * Introduction
  * Create an SSH Key Pair
  * Setting up the DBA Jumphost
  * Logging in with Session Manager
  * Logging in with SSH
  * Performing some Tests
  * Next Steps
* *chapter04* - Deploying a Multi-AZ MariaDB Instance.
  * Introduction.
  * Setting up the AWS Environment with Ansible
  * Deploying the DB Instance
  * Accessing the DB Instance
  * Performing a Failover
  * Performing some Tests
  * Next Steps
* *chapter05* - Deploying Databases and Users.
* *chapter06* - Configuring Backup for MariaDB.
* *chapter07* - Monitoring & Logs.
  * TODO
  * Creating a DBA Dashboard in AWS Cloudwatch.
* *chapter08* - Deploying a Multi-AZ MariaDB Instance with Read-Only Secondaries.
* *chapter09* - Recovering a Multi-AZ MariaDB Instance.
* *chapter10* - Creating a Blue/Green Deploment for Database Updates.
* *chapter11* - Creating a Private DNS Zone for your MariaDB Installation.
* *chapter12* - Migrating an RDS MariaDB Instance to a Self-Hosted Server.
