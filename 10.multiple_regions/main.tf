provider "aws" {
  region     = "us-west-1"
  alias = "west1"
}
provider "aws" {
  region     = "us-west-2"
  alias = "west2"
}
resource "aws_instance" "instance" {
  ami           = "ami-0fb83b36371e7dab5"
  instance_type = "t2.micro"
  key_name = "california"
  provider = aws.west1
  tags = {
    Name = "instance1"
  }
}
resource "aws_instance" "ec2" {
  ami           = "ami-078701cc0905d44e4"
  instance_type = "t2.micro"
  key_name = "eks_oregon"
  provider = aws.west2
  tags = {
    Name = "instance2"
  }
}