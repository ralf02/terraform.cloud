output "ec2_public_ip" {
    description = "Ip publica de la instacia web01"
    value = aws_instance.web01.public_ip
}
