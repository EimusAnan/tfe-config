project_id           = "tfe-bootstrap-9039"
terraform_org_name   = "pixemeck-org" #TFE Org Name
tfe_workspace_id     = "ws-91LzTepaZSbckGNG"
pool_id              = "terraform-enterprise"
provider_id          = "terraform-enterprise-oidc"
service_account_name = "terraform-enterprise"
region               = "us-central1"

sa_roles = [
  "roles/storage.admin",
]
