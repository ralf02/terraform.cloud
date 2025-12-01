variable "intancias" {
  description   = "Listado de nombres de las instancias"
  type          = set(string)
  default       = ["nginx", "mysql"]
}

resource "aws_instance" "web01" {
  for_each = var.intancias
  ami = var.ec2_specs.ami
  instance_type = var.ec2_specs.type
  key_name = data.aws_key_pair.mykey01.key_name

  tags = {
    "Name" = "${each.value}-${local.sufix}"
  }
}

resource "aws_instance" "monitoring_instance" {
  count = 0
  ami = var.ec2_specs.ami
  instance_type = var.ec2_specs.type
  key_name = data.aws_key_pair.mykey01.key_name

  tags = {
    "Name" = "Monitoring-${local.sufix}"
  }
}
