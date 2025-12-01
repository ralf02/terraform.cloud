output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.simple_server_sg.id
}
