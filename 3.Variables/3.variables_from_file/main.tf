provider "aws" {
  region     = "us-west-2"
}
resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = "eks_oregon"
  tags = {
    Name = "ec2"
  }
}