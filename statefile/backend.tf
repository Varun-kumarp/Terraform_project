# state.tf
terraform {
  backend "s3" {
    bucket = "varun-s3-statefile-demo"
    key    = "varun/terraform.tfstate"
    region = "ap-south-2"
    dynamodb_table = "terraform_lock"
    }
}
