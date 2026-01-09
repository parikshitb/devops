resource "aws_ssoadmin_permission_set" "tfadmin" {
  name         = "tfAdmin"
  description  = "Administrator access"
  instance_arn = local.sso_instance_arn

  session_duration = "PT8H"
}

resource "aws_ssoadmin_managed_policy_attachment" "admin_policy" {
  instance_arn       = local.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.tfadmin.arn
  managed_policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_ssoadmin_permission_set" "tfreadonly" {
  name         = "tfReadOnly"
  description  = "Read-only access"
  instance_arn = local.sso_instance_arn

  session_duration = "PT8H"
}

resource "aws_ssoadmin_managed_policy_attachment" "readonly_policy" {
  instance_arn       = local.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.tfreadonly.arn
  managed_policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_ssoadmin_permission_set" "tfpoweruser" {
  name         = "tfPowerUser"
  description  = "PowerUser access for dev accounts"
  instance_arn = local.sso_instance_arn

  session_duration = "PT8H"
}

resource "aws_ssoadmin_managed_policy_attachment" "poweruser_policy" {
  instance_arn       = local.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.tfpoweruser.arn
  managed_policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}
