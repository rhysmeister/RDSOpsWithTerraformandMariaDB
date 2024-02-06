output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "The VPC id"
}

output "private_subnet_ids" {
  value = [
    aws_subnet.private_subnet1.id,
    aws_subnet.private_subnet2.id,
    aws_subnet.private_subnet3.id
  ]
  description = "The Private Subnet idsfor our VPC"
}

output "public_subnet_id" {
  value       = aws_subnet.public_subnet.id
  description = "The Public Subnet id for our VPC"
}

output "jumphost_security_group_id" {
  value       = aws_security_group.jumphost.id
  description = "The SG id for the Jumphost Security Group"
}

output "mariadb_security_group_id" {
  value       = aws_security_group.mariadb.id
  description = "The SG id for the MariaDB Security Group"
}

output "rds_subnet_group" {
  value = aws_db_subnet_group.rds_subnet_group.id
  description = "The id for the DB Subnet Group"
}
