resource "aws_instance" "ec2_dev" {

  ami           = var.os-name
  instance_type = var.instance-type

  tags = {
    Name = "git_ec2_dev"

  }

}