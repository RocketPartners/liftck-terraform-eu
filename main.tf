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
  source = "./stacks/network/vpc/"
}

module "subnet" {
  source = "./stacks/network/subnet/"
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "igw" {
  source = "./stacks/network/igw/"
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "eip" {
  source = "./stacks/network/eip"
  region = "eu-west-1"
  redshift_eni = module.eni.aws_network_interface_tfer--eni-025c501cd2d12d572_id
  elb_eni_1 = module.eni.aws_network_interface_tfer--eni-02bc05185e770a3db_id
  elb_eni_2 = module.eni.aws_network_interface_tfer--eni-024806e1d471b89ae_id
  nat_gateway_eni_1 = module.eni.aws_network_interface_tfer--eni-0607359bd7504d318_id
  nat_gateway_eni_2 = module.eni.aws_network_interface_tfer--eni-053d2ce6e69141c46_id
  depends_on = [module.igw]
}

module "sg" {
  source = "./stacks/sg/"
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "eni" {
  source = "./stacks/network/eni"
  public_subnet_1_id = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  public_subnet_2_id = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  sg_id = module.sg.aws_security_group_tfer--redshift-cluster-1-sg_sg-0abf449eb49a6fab9_id
}

module "nat" {
  source = "./stacks/network/nat/"
  public_subnet_1_id = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  public_subnet_2_id = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  ngw_eip_1a = module.eip.aws_eip_tfer--eipalloc-03ed668dfe3da3db5_id
  ngw_eip_1b = module.eip.aws_eip_tfer--eipalloc-0ec3904e2060e6073_id
  depends_on = [module.igw]
}

module "vpc_peering" {
  source = "./stacks/network/vpc_peering"
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}

module "route_table" {
  source = "./stacks/network/route_table"
  vpc_peering = module.vpc_peering.aws_vpc_peering_connection_tfer--pcx-0ca4afd59731e9bea_id
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
  ngw_1 = module.nat.aws_nat_gateway_tfer--nat-02af312057f1509ee_id
  ngw_2 = module.nat.aws_nat_gateway_tfer--nat-0d9aebc74e176ff04_id
  igw_id = module.igw.aws_internet_gateway_tfer--igw-0123a874ecf046c98_id
  pub_sub_1_id = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  priv_sub_1_id = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
  depends_on = [module.vpc_peering]
}

module "nacl" {
  source = "./stacks/network/nacl"
  pub_sub_1_id = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  priv_sub_1_id = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}