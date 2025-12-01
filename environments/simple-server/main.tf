module "simple_server_vpc" {
  source = "../../modules/vpc"

  vpc_cidr           = var.ohio_cidr
  public_subnets     = var.subnet_public
  environment        = "dev"
  project_name       = "simple-server"
  availability_zones = var.availability_zones
}

module "simple_server_sg" {
  source = "../../modules/security_groups"
  vpc_id = module.simple_server_vpc.vpc_id
}

module "simple_server_ec2" {
  source = "../../modules/ec2"

    myTagsGeneric = var.myTagsGeneric
    ec2_specs     = var.ec2_specs
    key_name      = var.key_name
    subnet_id     = element(module.simple_server_vpc.public_subnet_ids, 0)
    vpc_security_group_ids = [module.simple_server_sg.security_group_id]
}
