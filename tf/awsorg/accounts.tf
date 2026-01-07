resource "aws_organizations_account" "tfdev" {
  name  = "tfdev"
  email = "parixit23+tfdev@gmail.com"

  role_name = "OrganizationAccountAccessRole"

  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

resource "aws_organizations_account" "tfprod" {
  name  = "tfprod"
  email = "parixit23+tfprod@gmail.com"

  role_name = "OrganizationAccountAccessRole"

  tags = {
    Environment = "prod"
    ManagedBy   = "terraform"
  }
}
