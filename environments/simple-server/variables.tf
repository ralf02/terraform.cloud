variable "ohio_cidr" {
  description = "CIDR for the Ohio VPC"
  type        = string
}

variable "subnet_public" {
  description = "CIDR for the public subnet"
  type        = list(string)
}

variable "myTagsGeneric" {
  description = "Tags del proyecto"
  type        = map(string)
  default = {
    "Name"        = "MyEC2"
    "name"        = "myEC2"
    "IaC"         = "Terraform"
    "IaC_version" = "v1.12.2"
    "cloud"       = "aws"
    "owner"       = "Rafiko"
  }
}

variable "ec2_specs" {
  description = "EC2 specs"
  type        = map(string)
  default = {
    "ami"   = "ami-02da2f5b47450f5a8"
    "type"  = "t2.micro"
  }
}

variable "key_name" {
  description = "Name of the EC2 Key Pair to use."
  type        = string
  default     = "MyKeys"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-2a"]
}
