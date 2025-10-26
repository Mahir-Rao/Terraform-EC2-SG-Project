data "aws_vpc" "default" {
  default = true
}

locals {
  selected_vpc = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
}



resource "aws_security_group" "mysg" {
  name = var.sg_name
  description = "Security group created using terraform"
  vpc_id = local.selected_vpc

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    Name = var.sg_name
  }

}