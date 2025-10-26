resource "aws_instance" "myec2" {
  ami = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = var.security_group_id != "" ? [var.security_group_id] : []


  tags = {
    Name = var.instance_name
  }
}

