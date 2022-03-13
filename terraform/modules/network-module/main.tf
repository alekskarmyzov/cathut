resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.owner}-vpc"
    Owner = var.owner
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.owner}-igw"
    Owner = var.owner
  }
}

resource "aws_subnet" "public_a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnets_cidrs, 0)
  availability_zone = "${var.region}a"

  tags = {
    Name = "${var.owner}-public-subnet-a"
    Owner = var.owner
  }
}

resource "aws_subnet" "private_a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.private_subnets_cidrs, 0)
  availability_zone = "${var.region}a"

  tags = {
    Name = "${var.owner}-private-subnet-a"
    Owner = var.owner
  }
}

resource "aws_subnet" "public_b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnets_cidrs, 1)
  availability_zone = "${var.region}b"

  tags = {
    Name = "${var.owner}-public-subnet-b"
    Owner = var.owner
  }
}

resource "aws_subnet" "private_b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.private_subnets_cidrs, 1)
  availability_zone = "${var.region}b"

  tags = {
    Name = "${var.owner}-private-subnet-b"
    Owner = var.owner
  }
}

resource "aws_subnet" "public_c" {
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnets_cidrs, 2)
  availability_zone = "${var.region}c"

  tags = {
    Name = "${var.owner}-public-subnet-c"
    Owner = var.owner
  }
}

resource "aws_subnet" "private_c" {
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.private_subnets_cidrs, 2)
  availability_zone = "${var.region}c"

  tags = {
    Name = "${var.owner}-private-subnet-c"
    Owner = var.owner
  }
}

