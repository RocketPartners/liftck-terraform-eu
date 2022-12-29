terraform {
  cloud {
    organization = "RocketPartners"

    workspaces {
      name = "liftck-eu-datacenter"
    }
  }
  required_providers {
    aws = {
      version = "~> 4.45.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  assume_role {
    role_arn = "arn:aws:iam::627729951075:role/terraform_bot"
  }
}
locals {
  region = "eu-west-1"
  account_number = "627729951075"
}

module "vpc" {
  source = "./network/vpc/"
}

module "subnet" {
  source = "./network/subnet/"
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "igw" {
  source = "./network/igw/"
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "eip" {
  source = "./network/eip"
  region = local.region
  redshift_eni      = module.eni.aws_network_interface_tfer--eni-025c501cd2d12d572_id
  #elb_eni_1         = module.eni.aws_network_interface_tfer--eni-02bc05185e770a3db_id
  #elb_eni_2         = module.eni.aws_network_interface_tfer--eni-024806e1d471b89ae_id
  #nat_gateway_eni_1 = module.eni.aws_network_interface_tfer--eni-0607359bd7504d318_id
  #nat_gateway_eni_2 = module.eni.aws_network_interface_tfer--eni-053d2ce6e69141c46_id
  depends_on        = [module.igw]
}

module "sg" {
  source = "./network/sg/"
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "eni" {
  source = "./network/eni"
  public_subnet_1_id = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  public_subnet_2_id = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  sg_id              = module.sg.aws_security_group_tfer--redshift-cluster-1-sg_sg-0abf449eb49a6fab9_id
  #depends_on         = [module.alb]
}

module "nat" {
  source = "./network/nat/"
  public_subnet_1_id = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  public_subnet_2_id = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  ngw_eip_1a         = module.eip.aws_eip_tfer--eipalloc-03ed668dfe3da3db5_id
  ngw_eip_1b         = module.eip.aws_eip_tfer--eipalloc-0ec3904e2060e6073_id
  depends_on         = [module.igw]
}

module "vpc_peering" {
  source = "./network/vpc_peering"
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "route_table" {
  source = "./network/route_table"
  vpc_peering     = module.vpc_peering.aws_vpc_peering_connection_tfer--pcx-0ca4afd59731e9bea_id
  vpc_id          = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
  ngw_1           = module.nat.aws_nat_gateway_tfer--nat-02af312057f1509ee_id
  ngw_2           = module.nat.aws_nat_gateway_tfer--nat-0d9aebc74e176ff04_id
  igw_id          = module.igw.aws_internet_gateway_tfer--igw-0123a874ecf046c98_id
  pub_sub_1_id    = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id    = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  priv_sub_1_id   = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id   = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
  depends_on      = [module.vpc_peering]
}

module "nacl" {
  source = "./network/nacl"
  pub_sub_1_id  = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id  = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  priv_sub_1_id = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
  vpc_id        = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "acm" {
  source = "./loadbalancer/acm/"
}

module "alb" {
  source = "./loadbalancer/alb/"
  region = local.region
  #elb_eni_1         = module.eni.aws_network_interface_tfer--eni-02bc05185e770a3db_id
  #elb_eni_2         = module.eni.aws_network_interface_tfer--eni-024806e1d471b89ae_id
  eip_nlb_1          = module.eip.aws_eip_tfer--eipalloc-02966e43fa4f9e822_id
  eip_nlb_2          = module.eip.aws_eip_tfer--eipalloc-045ef3f84510fb62f_id
  pub_sub_1_id  = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id  = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  priv_sub_1_id = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
  sg-alb-player = module.sg.aws_security_group_tfer--alb-player_sg-075ee2d0c09048822_id
  sg-alb-portal = module.sg.aws_security_group_tfer--alb-portal_sg-06d59a5e786ab73fd_id
  sg-alb-ecs    = module.sg.aws_security_group_tfer--reports-group_sg-00af07a43287c65ba_id
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
  circleklift_com_arn = module.acm.aws_acm_certificate_validation_arn
  depends_on = [module.eip]
}

module "iam" {
  source = "./database/iam/"
  region = local.region
  account_number = local.account_number
}

module "rds" {
  source = "./database/rds/"
  iam_rds = module.iam.aws_iam_role_tfer--cirkdev-rds-role_id
  iam_rds_monitoring = module.iam.aws_iam_role_tfer--rds-dev-monitoring-role_id
  pub_sub_1_id  = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id  = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  priv_sub_1_id = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
  sg_rds_services = module.sg.aws_security_group_tfer--cirk-services-rds-sg_sg-019e0d7419c048856_id
  sg_rds = module.sg.aws_security_group_tfer--rds-launch-wizard_sg-0c35a4474b18863d5_id
  region = local.region
  db_password = var.db_password
}