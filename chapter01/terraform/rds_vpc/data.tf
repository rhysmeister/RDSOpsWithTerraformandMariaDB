data "aws_availability_zones" "available_azs" {
  state = "available"
}

data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}
