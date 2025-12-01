module "simple_server_vpc" {
  source = "../../modules/vpc"
}

module "simple_server_sg" {
    source = "../../modules/security_groups"
    vpc_id = module.simple_server_vpc.vpc_id
}

module "simple_server_ec2" {
    source = "../../modules/ec2"

    myTagsGeneric = {
        Name = "Simple Server 01"
    }

    vpc_security_group_ids = [module.simple_server_sg.security_group_id]
}
