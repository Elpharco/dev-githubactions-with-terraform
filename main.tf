
resource "aws_instance" "ec2_dev-test" {

  ami           = var.os-name
  instance_type = var.instance-type
  
  

  tags = {
    Name = "git_ec2_dev-test"

  }

}