provider "aws" {
  region     = "us-west-2"
}
locals {
  ec2-tags = {
    name = "linux1"
  }
}
resource "aws_instance" "vm1" {
  ami           = "ami-078701cc0905d44e4"
  instance_type = var.instance_type
  key_name = "eks_oregon"
  tags = {
    Name = local.ec2-tags.name
}
}
output "instance_type" {
    value = aws_instance.vm1.arn
}
variable "instance_type" {
  default = "t2.micro"
}