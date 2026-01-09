data "aws_organizations_organization" "org" {}

locals {
  account_ids = {
    dev  = one([for a in data.aws_organizations_organization.org.accounts : a.id if a.name == "dev"])
    prod = one([for a in data.aws_organizations_organization.org.accounts : a.id if a.name == "prod"])
  }
  readonly_accounts = {
    dev  = local.account_ids.dev
    prod = local.account_ids.prod
  }
}

resource "aws_ssoadmin_account_assignment" "tfreadonly" {
  for_each = local.readonly_accounts

  instance_arn       = local.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.tfreadonly.arn

  principal_id   = aws_identitystore_group.tf_admins.group_id
  principal_type = "GROUP"

  target_id   = each.value
  target_type = "AWS_ACCOUNT"
}
