terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "5.48.0"
        }
    }
    backend "s3" {
      bucket = "mydaws-remote-state"
      key  = "remote-state-demo"
      region = "us-east-1"
      dynamodb_table = "mydaws-locking"
    }
}

provider "aws" {
    region = "us-east-1"
}
