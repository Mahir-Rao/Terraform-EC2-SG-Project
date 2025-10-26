output "instance_id" {
  description = "The id of EC2 instance"
  value = aws_instance.myec2.id
}

output "public_ip" {
  description = "Public ip of EC2 instance"
  value = aws_instance.myec2.public_ip
}