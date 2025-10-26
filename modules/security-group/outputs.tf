output "sg_id" {
  description = "ID of the security group"
  value = aws_security_group.mysg.id
}

output "sg_name" {
  description = "Name of the security group"
  value = aws_security_group.mysg.name
} 