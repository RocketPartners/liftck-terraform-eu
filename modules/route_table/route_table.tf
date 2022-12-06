resource "aws_route_table" "tfer--rtb-014ad530f7201893e" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-072a71590b8c6a80c_id}"
}

resource "aws_route_table" "tfer--rtb-060d40d1fe35cf2e7" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0d9aebc74e176ff04"
  }

  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = "pcx-0ca4afd59731e9bea"
  }

  tags = {
    Name = "cirk Private Routes (AZ2)"
  }

  tags_all = {
    Name = "cirk Private Routes (AZ2)"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-072a71590b8c6a80c_id}"
}

resource "aws_route_table" "tfer--rtb-0953126393041e235" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0123a874ecf046c98"
  }

  route {
    cidr_block                = "10.10.0.0/16"
    vpc_peering_connection_id = "pcx-0182b24663000cf18"
  }

  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = "pcx-0ca4afd59731e9bea"
  }

  tags = {
    Name = "cirk Public Routes"
  }

  tags_all = {
    Name = "cirk Public Routes"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-072a71590b8c6a80c_id}"
}

resource "aws_route_table" "tfer--rtb-0efd330ad276e201e" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-02af312057f1509ee"
  }

  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = "pcx-0ca4afd59731e9bea"
  }

  tags = {
    Name = "cirk Private Routes (AZ1)"
  }

  tags_all = {
    Name = "cirk Private Routes (AZ1)"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-072a71590b8c6a80c_id}"
}

resource "aws_route_table" "tfer--rtb-e7f5f098" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-1024c96b"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-dd7ac4a7_id}"
}
