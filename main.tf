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
  redshift_eni      = module.eni.aws_network_interface_tfer--eni-025c501cd2d12d572_id
  depends_on        = [module.igw]
}

module "eni" {
  source = "./network/eni"
  public_subnet_1_id = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  public_subnet_2_id = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  sg_id              = module.redshift.redshift_sg
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

module "loadbalancer" {
  source = "./loadbalancer/"
  eip_nlb_1          = module.eip.aws_eip_tfer--eipalloc-02966e43fa4f9e822_id
  eip_nlb_2          = module.eip.aws_eip_tfer--eipalloc-045ef3f84510fb62f_id
  pub_sub_1_id  = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id  = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  priv_sub_1_id = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
  depends_on = [module.eip]
}

module "rds" {
  source = "./rds/"
  pub_sub_1_id  = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id  = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  priv_sub_1_id = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
  db_password = var.db_password
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "redshift" {
  source = "./redshift/"
  pub_sub_1_id = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  db_password = var.db_password
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "kinesis" {
  source = "./kinesis/"
  db_password = var.db_password
  redshift_endpoint = module.redshift.redshift_endpoint
  redshift_database_name = module.redshift.redshift_database_name
}

module "elasticsearch" {
  source = "./elasticsearch/"
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
  priv_sub_1_id = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
}

module "ecs" {
  source = "./ecs/"
}