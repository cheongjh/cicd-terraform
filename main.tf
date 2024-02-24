



# # Configure the AWS Provider
# provider "aws" {
#   region = "us-east-1"
# }

resource "aws_sns_topic" "user_updates" {
  name = var.abc
}

# variable abc {
#   type = string
#   default = "leon-updates-topic"
#   description = "this is a type"
# }

locals {
  topic-name = "updates-topic"
}