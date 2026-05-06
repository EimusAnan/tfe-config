<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | < 8.0.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | < 8.0.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | < 1.0.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | 7.30.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [google_iam_workload_identity_pool.terraform_pool](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool) | resource |
| [google_iam_workload_identity_pool_provider.terraform_provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider) | resource |
| [google_project_iam_member.terraform_roles](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_service.required_apis](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_service_account.terraform](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account_iam_member.workload_identity_user](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_issuer_uri"></a> [issuer\_uri](#input\_issuer\_uri) | OIDC Issuer URI | `string` | `"https://app.terraform.io"` | no |
| <a name="input_pool_id"></a> [pool\_id](#input\_pool\_id) | Workload Identity Pool ID | `string` | `"terraform-enterprise"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | GCP Project ID | `string` | n/a | yes |
| <a name="input_provider_id"></a> [provider\_id](#input\_provider\_id) | OIDC Provider ID | `string` | `"terraform-enterprise-oidc"` | no |
| <a name="input_region"></a> [region](#input\_region) | GCP Region | `string` | n/a | yes |
| <a name="input_sa_roles"></a> [sa\_roles](#input\_sa\_roles) | IAM roles to grant service account | `list(string)` | <pre>[<br/>  "roles/storage.admin"<br/>]</pre> | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | Service Account name | `string` | `"terraform-enterprise"` | no |
| <a name="input_terraform_org_name"></a> [terraform\_org\_name](#input\_terraform\_org\_name) | Terraform Enterprise Organization Name | `string` | n/a | yes |
| <a name="input_tfe_workspace_id"></a> [tfe\_workspace\_id](#input\_tfe\_workspace\_id) | Terraform Enterprise Workspace ID | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_service_account_email"></a> [service\_account\_email](#output\_service\_account\_email) | Email of the service account |
| <a name="output_service_account_unique_id"></a> [service\_account\_unique\_id](#output\_service\_account\_unique\_id) | Unique ID of the service account |
| <a name="output_tfe_configuration"></a> [tfe\_configuration](#output\_tfe\_configuration) | Configuration values needed in TFE |
| <a name="output_workload_identity_pool_resource_name"></a> [workload\_identity\_pool\_resource\_name](#output\_workload\_identity\_pool\_resource\_name) | Resource name of the Workload Identity Pool |
| <a name="output_workload_identity_provider_resource_name"></a> [workload\_identity\_provider\_resource\_name](#output\_workload\_identity\_provider\_resource\_name) | Resource name of the OIDC Provider |
<!-- END_TF_DOCS -->