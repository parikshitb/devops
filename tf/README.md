
`tf` = terraform
----

# AWS 
##  Prerequisites
-  AWS CLI  is installed
-  
## Manual Initial Setup
- Management account
- AWS Organization enabled
- Identity Center enabled
- One SSO user (you) with Admin in Management
## Local Steps to run tf files
- Configure AWS CLI profile locally
  ```
  $ aws configure sso
  ```
- Get AWS access portal url from `IAM Identity Center`.
  - `https://<your-sso-id>.awsapps.com/start`
- Login to AWS SSO with SSO user.
  ```
  $ aws sso login --profile <profile name from the previous step>
  ```
## Run tf files to create initial IAM setup

# Azure
- TODO
