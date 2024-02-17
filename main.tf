terraform {
  backend "s3" {
    bucket = "sctp-ce5-tfstate-bucket-1"
    key    = "leon.tfstate"
    region = "us-east-1"
  }
}




# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_sns_topic" "user_updates" {
  name = local.topic-name
}

variable type {
  type = string
  default = "leon-updates-topic"
  description = "this is a type"
}

locals {
  topic-name = "updates-topic"
}