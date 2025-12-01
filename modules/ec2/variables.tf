variable "ec2_specs" {
  description = "EC2 specs"
  type = map(string)
}

variable "myTagsGeneric" {
  description = "Tags del proyecto"
  type = map(string)
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to assign to the EC2 instance"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "Name of the EC2 Key Pair to use."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance into."
  type        = string
}
