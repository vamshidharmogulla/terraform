provider "aws" {
  region = "us-west-2"
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  
  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "eks_oregon"
  monitoring             = true
  vpc_security_group_ids = ["sg-07cc2ff93bf680589"]
  subnet_id              = "subnet-0d0c2a8116adac763"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}