terraform {
  backend "s3" {
    bucket = "github-actions-devtest-withterraform-tfstate-101"
    key    = "devtest-github-actions.tfstate"
    region = "us-east-1"
  }
}
