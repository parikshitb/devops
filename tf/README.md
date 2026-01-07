
`tf` = terraform
----

# AWS 
##  Prerequisites
-  `AWS CLI`  is installed
## Manual Initial Setup
- `Management account`
- `AWS Organization` enabled
- `Identity Center` enabled
- One `SSO user` (you) with `AdministratorAccess` in `Management Account`
## Local Steps to run tf files
### Configure AWS CLI profile locally 
-  ```bash
    $ aws configure sso
    ```
- Get `AWS access portal url` from `IAM Identity Center`.
  - `https://<your-sso-id>.awsapps.com/start`
- Login to AWS with `SSO user`.
  ```
  $ aws sso login --profile <profile name from the previous step>
  ```
- You may need to mention this profile name in `provider` > `profile`
   ```terraform
   provider "aws" {
       ...
       profile = "<profile name from the previous step>" #must run as management account
   }
   ```
## Run tf files to create initial IAM setup
- i.e. to create `AWS Accounts`
```bash
$ terraform init
$ terraform plan
$ terraform apply
```
# Azure
- TODO
