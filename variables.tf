variable "aws_region" {
  description = "AWS region to deploy resources"
  type = string
  default = "ap-south-1"
}

variable "ami_id" {
  description = "Optional custom AMI ID (leave empty to use the latest Ubuntu)"
  type = string
  default = ""
}

variable "instance_type" {
  description = "Instance type of the EC2 Instance"
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  description = "Default name of the EC2 Instance"
  type = string
  default = "TerraformEC2Instance"
}

variable "sg_name" {
  description = "Default name of the Security group"
  type = string
  default = "TerraformSecurityGroup"
}

variable "vpc_id" {
  description = "VPC id where SG will be created"
  type = string
  default = "null"
}