locals {
  keys_map = var.create_keys ? { for key in var.keys : key.alias => key } : {}
}

resource "aws_kms_key" "this" {
  for_each = local.keys_map

  description             = lookup(each.value, "description", null)
  deletion_window_in_days = lookup(each.value, "deletion_window_in_days", 30)
  policy                  = lookup(each.value, "policy", null)
}

resource "aws_kms_alias" "this" {
  for_each = local.keys_map

  name          = "alias/${each.key}"
  target_key_id = aws_kms_key.this[each.key].key_id
}
