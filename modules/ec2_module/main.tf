# Configure the AWS provider using the input variables
provider "aws" {
  region      = "ap-south-2"
}

# Create an EC2 instance using the input variables
resource "aws_instance" "example_instance" {
  ami           = var.ami_id_value
  instance_type = var.instance_type_value
}

# Define an output variable to expose the public IP address of the EC2 instance
#output "public_ip" {
 # description = "Public IP address of the EC2 instance"
  #value       = aws_instance.example_instance.public_ip
#}

