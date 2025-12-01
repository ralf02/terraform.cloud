output "ec2_public_ip" {
    description = "Ip publica de la instacia web01"
    value = { for k, v in aws_instance.web01 : k => v.public_ip }
}
