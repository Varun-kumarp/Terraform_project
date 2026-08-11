provider "aws" {
    region = "ap-south-2"
}

resource "aws_instance" "sample" {
    ami = "ami-0199ac7c9fbf9ed83"
    instance_type = "t3.micro"
}