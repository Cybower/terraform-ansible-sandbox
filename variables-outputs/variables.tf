#   General
variable "region" {
    description = "Default region for provider"
    type = string
    default = "us-east-1"
}

#   EC2
variable "ami" {
    description = "Amazon machine image to use for ec2 instance"
    type = string
    default = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
}

#   S3
variable "bucket_name" {
    description = "name of s3 bucket for app data"
    type = string
}

#   Route 53
variable "domain" {
    description = "Domain for website"
    type = string
}

#   RDS
variable "db_name" {
    description = "Name of DB"
    type = string
}

variable "db_user" {
    description = "Username of DB"
    type = string
}

variable "db_pass" {
    description = "Password for DB"
    type = string
    sensitive = true  
}