terraform {
  backend "s3" {
    region         = "eu-central-1"
    bucket         = "test-o2-2024-s3-bucket"
    key            = "./terraform.tfstate"
    dynamodb_table = "my-db-tabe-test"
    encrypt        = true
  }
}
