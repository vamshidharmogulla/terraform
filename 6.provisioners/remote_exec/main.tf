provider "aws" {
  region     = "us-west-2"
}
resource "aws_instance" "ec2" {
  ami           = "ami-078701cc0905d44e4"
  instance_type = "t2.micro"
  key_name = "eks_oregon"
   tags = {
    Name = "ec2"
  }
  provisioner "remote-exec" {
    inline=[
        "echo 'instance is created'",
        "sudo yum update -y",
        "sudo yum install -y nginx",
    ]
  } 
}