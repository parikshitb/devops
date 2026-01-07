resource "aws_identitystore_group_membership" "you_in_admins" {
  identity_store_id = local.identity_store_id
  group_id          = aws_identitystore_group.tf_admins.group_id
  member_id         = data.aws_identitystore_user.you.user_id
}
