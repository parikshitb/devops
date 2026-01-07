resource "aws_identitystore_group" "tf_admins" {
  identity_store_id = local.identity_store_id
  display_name      = "tf_admins"
  description       = "Admins allowed to run Terraform"
}
