resource "aws_instance" "MyEC2" {
    ami = var.ec2_specs.ami
    instance_type = var.ec2_specs.type
    key_name = data.aws_key_pair.mykey01.key_name

    vpc_security_group_ids = var.vpc_security_group_ids

    tags = {
        Name = var.myTagsGeneric.Name
    }

    root_block_device {
        volume_size = 12
        delete_on_termination = true
    }

    provisioner "local-exec" {
        command = <<EOT
            if [ -f "../../../../.env" ]; then
            if grep -q '^ANSIBLE_HOST=' "../../../../.env"; then
                # Update existing ANSIBLE_HOST
                sed -i "s|^ANSIBLE_HOST=.*|ANSIBLE_HOST=${self.public_ip}|" "../../../../.env"
            else
                # Add ANSIBLE_HOST if it doesn't exist
                echo "ANSIBLE_HOST=${self.public_ip}" >> "../../../../.env"
            fi
            else
            # Create .env file with ANSIBLE_HOST
            echo "ANSIBLE_HOST=${self.public_ip}" > "../../../../.env"
            fi
        EOT
    }

    provisioner "local-exec" {
        command =  "echo 'MyEC2 IP ${self.public_ip} creada' >> ../../../logs/logs.log"
    }

    provisioner "local-exec" {
        when = destroy
        command =  "echo 'MyEC2 IP ${self.public_ip} destruida' >> ../../../logs/logs.log"
    }
}
