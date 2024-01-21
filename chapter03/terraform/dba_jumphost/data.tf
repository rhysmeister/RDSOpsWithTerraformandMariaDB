data "terraform_remote_state" "rds_vpc" {
  backend = "s3"
  config = {
    bucket = "terraform-state-992382406909"
    region = "eu-central-1"
    key    = "rdsops/rds_vpc/terraform.tfstate"
  }
}