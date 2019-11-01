# CHKP-AWS_TGW

Deploys a Check Point ASG solution in AWS with Transit Gateway using Terraform.

Requirements:
- Terraform installed on a machine (Terraform version 0.11.15 tested. 0.12 needs 'terraform 0.12upgrade' after the 'terraform init')
- An existing R80.30 Check Point Management prepared with autoprovision and policy for the TGW
    - https://sc1.checkpoint.com/documents/IaaS/WebAdminGuides/EN/CP_CloudGuard_AWS_Transit_Gateway/html_frameset.htm
- AWS credentials in variable file or better as Environment Variables on the host
    Example added to the end of .bashrc on your host
        export AWS_ACCESS_KEY_ID='XXXXXXXXXXXXXXXXX'
        export AWS_SECRET_ACCESS_KEY='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        export AWS_REGION=eu-central-1

Notes:
- Management server communicate with gateways over public IPs
- R80.30 gateways will be deployed

Run:
Before you run the templates, variables.tf needs to be updated. At least AWS key, password, SIC key and SSH key. 
Update the variable with your hosts public IP for remote access. And make sure relevant variables (management_server_name and tgw_configuration_template_name) matches your Management server autoprovision configuration that you did above.
Put the files in a directory (download or git clone) on your host (the host where terraform is installed), and from that directory run:         'terraform init'
    'terraform 0.12upgrade' (only if terraform version 0.12 is used)
    'terraform plan' (optional)
    'terraform apply'

Testing: When the deployment finishes, it prints the IP of the Jumphost

- Test between spokes (E/W) by SSH'ing to the Jumphost (need to use AWS key for authentication) and pinging the server
in the other spoke.
- Test outbound by pinging 8.8.8.8
- Verify logs in SmartConsole

Stop/destroy: When finished, stop instances or run 'terraform destroy' to remove the deployment

Known issues:
- Sometimes 'terraform destroy' fails. A rerun or two fixes it.
