# terraform-aws-tardigrade-kms

A terraform module to create an AWS KMS key


<!-- BEGIN TFDOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| keys | Schema list of KMS Keys, consisting of alias, (OPTIONAL) description, (OPTIONAL) deletion\_window\_in\_days, (OPTIONAL) policy, (OPTIONAL) enable\_key\_rotation. The enable\_key\_rotation variable is a boolean. | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| keys | Maps of alias => key objects |

<!-- END TFDOCS -->
