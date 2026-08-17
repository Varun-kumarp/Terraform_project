provider "aws" {
    region = "ap-south-2"
  
}

resource "aws_instance" "statefile_example" {
     ami = "ami-0199ac7c9fbf9ed83"
     instance_type = "t3.micro"

     tags ={
        name = "statefile"
     }
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "varun-s3-statefile-demo"
  
}

resource "aws_dynamodb_table" "terraform_lock" {
    name            = "terraform-lock"
    billing_mode    = "PAY_PER_REQUEST"
    hash_key        = "LockID"

    attribute {
      name = "LockID"
      type = "s"
    } 
}