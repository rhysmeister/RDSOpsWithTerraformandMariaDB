resource "aws_instance" "jumphost" {
  ami                         = local.ami
  instance_type               = local.instance_type
  subnet_id                   = data.terraform_remote_state.rds_vpc.outputs.public_subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.rds_vpc.outputs.jumphost_security_group_id]
  key_name                    = local.key_name
  associate_public_ip_address = true
  user_data                   = data.template_file.user_data.rendered
  iam_instance_profile        = aws_iam_instance_profile.dba.name

  #connection {
  #  type        = "ssh"
  #  host        = self.public_ip
  #  user        = "ec2-user"
  #  private_key = file(var.private_key_path)
  #}

  tags = {
    Name = "jumphost"
  }
}

data "template_file" "user_data" {
  template = file("dba.yml")
}