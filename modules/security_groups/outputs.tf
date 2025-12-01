output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.simple_server_sg.id
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = [for s in aws_subnet.public : s.id]
}
