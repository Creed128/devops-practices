provider "aws" {
  region = "eu-central-1"
}

module "vpc" {
  source = "../modules/vpc"

  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones  = ["eu-central-1a", "eu-central-1b"]
  vpc_name            = "mon-vpc"
}

module "webserver" {
  source = "../modules/webserver"

  ami_id            = "ami-0ef03f2a1f5df573c"
  instance_type     = "t2.micro"
  min_size          = 2
  max_size          = 4
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = module.vpc.public_subnet_ids
  security_group_id = module.vpc.webserver_sg_id
}

module "loadbalancer" {
  source = "../modules/loadbalancer"

  vpc_id               = module.vpc.vpc_id
  subnet_ids           = module.vpc.public_subnet_ids
  lb_security_group_id = module.vpc.lb_sg_id
  target_group_arn     = module.webserver.webserver_tg_arn
}
