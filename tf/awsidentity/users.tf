data "aws_identitystore_user" "you" {
  identity_store_id = local.identity_store_id

  alternate_identifier {
    unique_attribute {
      attribute_path  = "UserName"
      attribute_value = "I_AM_parikshit"
    }
  }
}
