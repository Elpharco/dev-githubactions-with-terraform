resource "aws_vpc" "VPC-test-pipeline" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "VPC_pipeline"
  }
}


# resource "aws_instance" "ec2_dev-test" {

#   ami           = "ami-02d7fd1c2af6eead0"
#   instance_type = "t2.micro"
  
  

#   tags = {
#     Name = "git_ec2_dev-test"

#   }

# }