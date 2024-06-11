terraform {
  backend "s3" {
    bucket = "github-actions-devtest-withterraform-tfstate-101"
    key    = "devtest-github-actions.tfstate"
    region = "us-east-1"
  }

  # required_providers {
  #   aws = {
  #     source  = "hashicorp/aws"
  #     version = "~> 0.14"
  #   }
  # }
}





#   terraform {
#   backend "s3" {
#     encrypt = true    bucket = "hella-buckets"
#     dynamodb_table = "terraform-state-lock-dynamo"
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#   }
# }

  
