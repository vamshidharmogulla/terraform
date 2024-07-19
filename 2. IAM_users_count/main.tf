provider "aws" {
  region = "us-west-2"
}
/*resource "aws_iam_user" "users" {
  count = 3
  name  = "dev_${count.index}"
}
*/
resource "aws_iam_user" "users" {
  count = 3
  name  = var.users[count.index]
}
variable "users" {
  type = list
  default = ["chintu","vijendhar","nithi"]
}