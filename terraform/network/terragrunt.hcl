include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-vpc.git//?ref=v3.11.2"

  extra_arguments "init_args" {
    commands = [
      "init"
    ]    
    arguments = [
    ]
  }
}

inputs = {
  name = "akarmyzov-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.3.0/24", "10.0.5.0/24"]
  public_subnets  = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]

  enable_nat_gateway    = true
  single_nat_gateway    = true
  enable_dns_hostnames  = true
  enable_dns_support    = true

  tags = {
    Terraform = "true"
    Environment = "dev"
    Owner = "akarmyzov"
  }
}