# complete configuration of VPC, subnets and all routes
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.25.0"

  # create subnet in 2 AZs
  azs  = slice("${data.aws_availability_zones.selected.names}", 0, 2)
  name = "playground-vpc"
  cidr = var.vpc_cidr

  private_subnets = var.private_subnet
  public_subnets  = var.public_subnet

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
  }
}
