module "simple_server_vpc" {
  source = "../../modules/vpc"
}

module "simple_server_sg" {
    source = "../../modules/security_groups"
    vpc_id = module.simple_server_vpc.vpc_id
}

module "simple_server_ec2" {
    source = "../../modules/ec2"

    myTagsGeneric = var.myTagsGeneric
    ec2_specs     = var.ec2_specs
    key_name      = data.aws_key_pair.mykey01.key_name
    subnet_id     = element(module.simple_server_vpc.public_subnet_ids, 0)
    vpc_security_group_ids = [module.simple_server_sg.security_group_id]
}
