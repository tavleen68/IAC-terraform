## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_athena_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_database) | resource |
| [aws_athena_workgroup.queries](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_workgroup) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket"></a> [bucket](#input\_bucket) | Athena | `any` | n/a | yes |
| <a name="input_create_database"></a> [create\_database](#input\_create\_database) | A boolean that indicates if the new database should be created. | `bool` | `true` | no |
| <a name="input_database_force_destroy"></a> [database\_force\_destroy](#input\_database\_force\_destroy) | A boolean that indicates all tables should be deleted from the database so that the database can be destroyed without error. The tables are not recoverable. | `bool` | `false` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | Name of the existing database. Required if create\_database variable is false | `string` | `null` | no |
| <a name="input_enforce_workgroup_configuration"></a> [enforce\_workgroup\_configuration](#input\_enforce\_workgroup\_configuration) | (Optional) Boolean whether the settings for the workgroup override client-side settings. | `string` | `true` | no |
| <a name="input_publish_cloudwatch_metrics_enabled"></a> [publish\_cloudwatch\_metrics\_enabled](#input\_publish\_cloudwatch\_metrics\_enabled) | (Optional) Boolean whether Amazon CloudWatch metrics are enabled for the workgroup. Defaults to true. | `string` | `true` | no |
| <a name="input_query_output_buckets_kms_keys"></a> [query\_output\_buckets\_kms\_keys](#input\_query\_output\_buckets\_kms\_keys) | A map of KMS keys used to encrypt data in output S3 buckets for Athena queries. Keys are query names identical to the map above. Results will not be encrypted if the key for a query is not defined in the map. | `map(string)` | `{}` | no |
| <a name="input_query_output_locations"></a> [query\_output\_locations](#input\_query\_output\_locations) | A map of output locations (S3 URLs) for Athena queries. Keys are query names identical to the map above | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_name"></a> [database\_name](#output\_database\_name) | The name of the AWS Athena database |
