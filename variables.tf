data "aws_availability_zones" "azs" {}

# Inbound VPC
variable "inbound_cidr_vpc" {
  description = "Inbound VPC"
  default     = "10.110.0.0/16"
}

# Outbound VPC
variable "outbound_cidr_vpc" {
  description = "Outbound VPC"
  default     = "10.120.0.0/16"
}

# VPC hosting out private facing website
variable "private_cidr_vpc" {
  description = "VPC hosting a private facing website"
  default     = "10.210.0.0/16"
}

# VPC hosting a test endpoint
variable "test_cidr_vpc" {
  default = "10.230.0.0/16"
}

# Private key
variable "key_name" {
  default = ""
}

# SIC key
variable "sic_key" {
  default = ""
}
# Admin Email key
variable "admin_email" {
  default = ""
}
variable "password_hash" {
  description = "Password for the Check Point servers"
  default     = ""
}

variable "management_server_name" {
  description = "The name of the maangement server in the cloudformation template"
  default     = "management-server"
}

variable "tgw_configuration_template_name" {
  description = "The name of the tgw template name in the cloudformation template"
  default     = "TGW-ASG-configuration"
}

variable "tgw_community_name" {
  description = "The name of the tgw community in Smartconsole"
  default     = "tgw-community"
}

variable "project_name" {
  default = "TF-TGW"
}

variable "Current_Public_IP" {
  description = "Your current public_IP for access to Jumphost VM"
  default     = "84.247.178.23/32"
}
