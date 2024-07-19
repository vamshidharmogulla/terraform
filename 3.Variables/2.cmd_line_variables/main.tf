provider "aws" {
  region     = "us-west-2"
}
resource "aws_instance" "ec2" {
  ami           = "ami-078701cc0905d44e4"
  instance_type = var.instance_type
  key_name = "eks_oregon"
  tags = {
    Name = "ec2"
  }
}
variable "instance_type" {
  default = "t2.micro"
}