terraform {
  backend "s3" {
    bucket         = "my-terraform-states"
    key            = "aws/dev/eks/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}