
resource "aws_instance" "ec2_dev-test" {

  ami           = "ami-02d7fd1c2af6eead0"
  instance_type = "t3.small"
  
  

  tags = {
    Name = "git_ec2_dev-test"

  }

}