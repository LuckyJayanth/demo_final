terraform {
  backend "s3" {
    bucket = "nginx-buck-s3"
    key    = "Terraform_as4/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "nginx_db"
  }
}
