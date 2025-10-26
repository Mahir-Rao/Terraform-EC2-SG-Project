variable "sg_name" {
  description = "Name of Security Group"
  type = string
}

variable "vpc_id" {
 description = "VPC ID where sg will be created"
 type = string
 default = null
}