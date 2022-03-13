variable "owner" {
  description = "Name of the owner of created resources"
  type        = string
}

variable "region" {
  description = "Name of the owner of created resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR of the VPC"
  type        = string
}

variable "public_subnets_cidrs" {  
    description = "CIDRs of 3 public subnets"
    type    = list(string)  
}

variable "private_subnets_cidrs" {  
    description = "CIDRs of 3 private subnets"
    type    = list(string)  
}