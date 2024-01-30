resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  count             = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[count.index]
  map_public_ip_on_launch = true
  availability_zone = var.availability_zones[count.index]
  tags = {
    "Name" = "public-subnet-${count.index}"
  }
}

resource "aws_security_group" "webserver_sg" {
  vpc_id = aws_vpc.main.id
  // ... Other configurations ...
}

resource "aws_security_group" "lb_sg" {
  vpc_id = aws_vpc.main.id
  // ... Other configurations ...
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "webserver_sg_id" {
  value = aws_security_group.webserver_sg.id
}

output "lb_sg_id" {
  value = aws_security_group.lb_sg.id
}


