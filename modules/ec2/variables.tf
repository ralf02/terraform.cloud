variable "ec2_specs" {
  description = "EC2 specs"
  type = map(string)
  default = {
    "ami"   = "ami-02da2f5b47450f5a8"
    "type"  = "t2.micro"
  }
}

variable "myTagsGeneric" {
  description = "Tags del proyecto"
  type = map(string)
  default = {
    "Name"        = "MyEC2"
    "name"        = "myEC2"
    "IaC"         = "Terraform"
    "IaC_version" = "v1.12.2"
    "cloud"       = "aws"
    "owner"       = "Rafiko"
  }
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to assign to the EC2 instance"
  type        = list(string)
  default     = []
}
