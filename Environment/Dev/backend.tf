# # terraform {
#   backend "s3" {
#     bucket         = "s11kyin-bucket-terraform-state"
#     key            = "tf11-assignment/dev/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-state-lock"
#     encrypt        = true
# #   }
# }