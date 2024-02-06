resource "aws_ssm_parameter" "endpoint" {
    name        = "/test/rds/endpoint"
    description = "Endpoint of the active RDS Instance"
    type        = "String"
    value       = aws_db_instance.rds1.endpoint
}

resource "aws_ssm_parameter" "admin_username" {
    name        = "/test/rds/username"
    description = "Username of RDS Instance"
    type        = "String"
    value       = local.username
}

resource "aws_ssm_parameter" "admin_password" {
    name        = "/test/rds/password"
    description = "Password of RDS Instance"
    type        = "SecureString"
    value       = local.password
}