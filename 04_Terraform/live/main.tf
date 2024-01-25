provider "aws" {
  region = var.region 
}

module "s3_bucket" {
  source      = "../modules/s3"
  bucket_name = var.s3_bucket_name
  bucket_acl  = var.s3_bucket_acl
  versioning  = var.s3_versioning
  tags        = var.s3_tags
}

module "vpc" {
  source              = "../modules/vpc"
  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  availability_zone   = var.availability_zone
  // ... autres variables si nécessaire ...
}

module "webserver" {
  source              = "../modules/webserver"
  environment         = var.environment
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  min_size            = var.min_size
  max_size            = var.max_size
  subnet_ids          = [module.vpc.public_subnet_id] // Assurez-vous que c'est un tableau de sous-réseaux
  security_group_ids  = [module.vpc.security_group_id] // Assurez-vous que c'est un tableau de groupes de sécurité
  // ... autres variables si nécessaire ...
}

module "lb_module" {
  source              = "../modules/loadbalancer"
  environment         = var.environment
  http_port           = var.http_port
  vpc_id              = module.vpc.vpc_id
  subnet_ids          = [module.vpc.public_subnet_id] // Assurez-vous que c'est un tableau de sous-réseaux
  target_group_arn    = module.webserver.target_group_arn
  // ... autres variables si nécessaire ...
}
