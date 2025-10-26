output "ec2_public_ip" {
  description = "Public IP of the EC2 instance created by the module"
  value = module.ec2_instance.public_ip
}

output "ec2_id" {
  description = "ID of the EC2 instance created by the module"
  value = module.ec2_instance.instance_id
}

output "sg_id" {
  description = "ID of the security group"
  value = module.web_sg.sg_id
}

output "sg_name" {
  description = "Name of the security group"
  value = module.web_sg.sg_name
}