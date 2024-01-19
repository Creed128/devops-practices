terraform {
  backend "s3" {
    bucket         = "my-s3-bucket"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "my-dynamodb_table"
    encrypt        = true
  }
}
