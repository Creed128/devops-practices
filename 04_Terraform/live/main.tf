provider "aws" {
  region = "eu-cnetral-1" 
}
module "lb_modul" {
  source = "../modules/loadbalancer"
  environment = "dev"
  http_port = 80

}