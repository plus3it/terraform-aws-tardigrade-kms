# terraform-aws-tardigrade-kms

A terraform module to create an AWS KMS key

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_keys | Controls whether to create a set of keys | bool | `"true"` | no |
| keys | Schema list of KMS Keys, consisting of alias, \(OPTIONAL\) description, \(OPTIONAL\) deletion\_window\_in\_days, \(OPTIONAL\) policy | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| keys | Maps of alias => key objects |

