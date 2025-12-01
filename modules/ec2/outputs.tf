output "ec2_public_ip" {
    description = "Ip publica de MyEC2"
    value = aws_instance.MyEC2.public_ip
}
