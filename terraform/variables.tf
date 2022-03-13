variable "owner" {
  description = "Name of the owner of created resources"
  type        = string
  default = "akarmyzov"
}

variable "region" {
  description = "Name of the owner of created resources"
  type        = string
  default = "eu-central-1"
}

variable "vpc_cidr" {
  description = "CIDR of the VPC"
  type        = string
  default = "10.0.0.0/16"
}

variable "public_subnets_cidrs" {  
    description = "CIDRs of 3 public subnets"
    type    = list(string)  
    default = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
}

variable "private_subnets_cidrs" {  
    description = "CIDRs of 3 private subnets"
    type    = list(string)  
    default = ["10.0.1.0/24", "10.0.3.0/24", "10.0.5.0/24"]
}