provider "aws" {
  region     = "us-west-2"
}
resource "aws_instance" "instance1" {
  ami           = "ami-078701cc0905d44e4"
  instance_type = "t2.medium"
  key_name = "eks_oregon"
  tags = {
    Name = "instance1"
  }
}