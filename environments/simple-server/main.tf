module "simple_server_vpc" {
  source = "../../modules/vpc"
}

module "simple_server_sg" {
    source = "../../modules/security_groups"
    vpc_id = module.simple_server_vpc.vpc_id
}

module "simple_server_ec2" {
    source = "../../modules/ec2"

    myTagsGeneric = module.simple_server_ec2.myTagsGeneric
    ec2_specs     = module.simple_server_ec2.ec2_specs
    key_name      = module.simple_server_ec2.key_name
    subnet_id = element(module.simple_server_vpc.public_subnet_ids, 0)
    vpc_security_group_ids = [module.simple_server_sg.security_group_id]
}
