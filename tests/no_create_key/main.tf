provider "aws" {
  region = "us-east-1"
}

module "no_create_key" {
  source      = "../../"
  create_keys = false
}
