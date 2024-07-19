provider "aws" {
  region     = "us-west-2"
}
resource "aws_instance" "ec2" {
  ami           = "ami-078701cc0905d44e4"
  instance_type = "t2.micro"
  key_name = "eks_oregon"
  provisioner "local-exec" {
    command = "echo publicip : ${aws_instance.ec2.public_ip}>public_ip.txt"
  }
  tags = {
    Name = "ec2"
  }
}