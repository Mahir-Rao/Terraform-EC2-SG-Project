# Data source for ubuntu AMI

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

locals {
  selected_ami = var.ami_id != "" ? var.ami_id : data.aws_ami.ubuntu.id
}

module "web_sg" {
  source = "./modules/security-group"
  sg_name = "web-server-sg"
}

module "ec2_instance" {
  source = "./modules/ec2"
  ami_id = local.selected_ami
  security_group_id = module.web_sg.sg_id
  instance_name = "TestInstance"
}


