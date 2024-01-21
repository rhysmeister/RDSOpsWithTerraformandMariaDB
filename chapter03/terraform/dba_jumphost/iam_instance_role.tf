locals {
  iam_role_name = "dba"
}

resource "aws_iam_role" "dba" {
  name = local.iam_role_name

  managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_instance_profile" "dba" {
  name = local.iam_role_name
  role = aws_iam_role.dba.name
}