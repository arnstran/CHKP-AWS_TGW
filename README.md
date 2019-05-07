# CHKP-AWS_TGW

Deploys a Check Point solution with Transit Gateway using Terraform.

Needs:
- terraform installed or run from Azure CLI
    https://azurecitadel.com/prereqs/wsl/
- an existing R80.20 Check Point Management prepared with autoprovision and policy for the TGW-
    https://sc1.checkpoint.com/documents/IaaS/WebAdminGuides/EN/CP_CloudGuard_AWS_Transit_Gateway/html_frameset.htm
- Azure credentials in variable file or better as Environment Variables on the host
    Example added to the end of .bashrc on your host
        export AWS_ACCESS_KEY_ID='XXXXXXXXXXXXXXXXX'
        export AWS_SECRET_ACCESS_KEY='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        export AWS_REGION=eu-central-1

Notes:
- Management server communicate with gateways over public IPs
- Update the variables with your hosts public IP for remote access

Run:
put the files in a directory on your host (download or git clone) and fron that directory run:
'terraform init'
'terraform plan' (optional)
'terrafrom apply'

Known issues:
