data "aws_ssoadmin_instances" "this" {}

locals {
  identity_store_id = data.aws_ssoadmin_instances.this.identity_store_ids[0]
  sso_instance_arn  = data.aws_ssoadmin_instances.this.arns[0]
}
