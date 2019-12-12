provider "aws" {
  region = "us-east-1"
}

locals {
  keys = [
    {
      alias                   = "alpha-qwerty",
      description             = "alpha key",
      deletion_window_in_days = 10,
      policy                  = ""
    },
    {
      alias       = "beta-qwerty",
      description = "beta key"
    },
    {
      alias = "gamma-qwerty"
    }
  ]
}

module "create_key" {
  source      = "../../"
  create_keys = true
  keys        = local.keys
}
