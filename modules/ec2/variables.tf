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

variable "security_group_id" {
  description = "Security group id to attach to the instance"
  type = string
  default = null
}