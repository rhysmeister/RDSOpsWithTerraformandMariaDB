resource "aws_db_subnet_group" "rds_subnet_group" {
  name = "rds-db-subnet-group"
  subnet_ids = [
    aws_subnet.private_subnet1.id,
    aws_subnet.private_subnet2.id,
    aws_subnet.private_subnet3.id
  ]
}
