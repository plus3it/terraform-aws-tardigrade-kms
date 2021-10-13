# terraform-aws-tardigrade-kms

A terraform module to create an AWS KMS key

## Testing

Manual testing:

```
# Replace "xxx" with an actual AWS profile, then execute the integration tests.
export AWS_PROFILE=xxx 
make terraform/pytest PYTEST_ARGS="-v --nomock"
```

For automated testing, PYTEST_ARGS is optional and no profile is needed:

```
make mockstack/up
make terraform/pytest PYTEST_ARGS="-v"
make mockstack/clean
```

<!-- BEGIN TFDOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keys"></a> [keys](#input\_keys) | Schema list of KMS Keys, consisting of alias, (OPTIONAL) description, (OPTIONAL) deletion\_window\_in\_days, (OPTIONAL) policy, (OPTIONAL) enable\_key\_rotation. The enable\_key\_rotation variable is a boolean. | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_keys"></a> [keys](#output\_keys) | Maps of alias => key objects |

<!-- END TFDOCS -->
