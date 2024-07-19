terraform {
  backend "s3" {
    bucket = "mvrdigitech"
    key    = "dev/ec2.tfstate"
    region = "us-west-2"
  }
}
