resource "aws_instance" "git_ec2_dev-test" {

  ami           = "ami-02d7fd1c2af6eead0"
  instance_type = "t2.micro"

  tags = {
    Name = "git_ec2_dev-test"

  }

}