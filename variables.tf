variable "create_keys" {
  description = "Controls whether to create a set of keys"
  type        = bool
  default     = true
}

variable "keys" {
  description = "Schema list of KMS Keys, consisting of alias, (OPTIONAL) description, (OPTIONAL) deletion_window_in_days, (OPTIONAL) policy, (OPTIONAL) enable_key_rotation. The enable_key_rotation variable is a boolean."
  type        = list
  default     = []
}
