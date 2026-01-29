terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
    backend "s3" {
      bucket = "expense-project-env-dev"
      key = "Project-expense-dev-jenkins-sg"
      region = "us-east-1"
      dynamodb_table = "expense-project-env-dev"
    }
}

provider "aws" {
    region = "us-east-1"
}