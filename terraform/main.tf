module "network" {
  source = "./modules/network-module"

  owner = var.owner
  region = var.region
  vpc_cidr = var.vpc_cidr
  public_subnets_cidrs = var.public_subnets_cidrs
  private_subnets_cidrs = var.private_subnets_cidrs
}