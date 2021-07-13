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
  source = "../../"

  keys = local.keys
}
