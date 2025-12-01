variable "ohio_cidr" {
    description = "CDIR Ohio"
    type = string
    sensitive = false
}

variable "subnet_public" {
    description = "CDIR public subnet"
    type = string
}


variable "myTagsGeneric" {
  description = "Tags del proyecto"
  type = map(string)
}

variable "ec2_specs" {
  description = "EC2 specs"
  type = map(string)
}


variable "access_key" {
  description = "Access key"
  type = string
}

variable "secret_key" {
  description = "Secret key"
  type = string
}
