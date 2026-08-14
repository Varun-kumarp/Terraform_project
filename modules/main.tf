provider "aws" {
  region = "ap-south-2"
}

module "instance" {
  source = "./ec2_module"
  ami_id_value = "ami-0199ac7c9fbf9ed83"
  instance_type_value = "t3.micro"
}
