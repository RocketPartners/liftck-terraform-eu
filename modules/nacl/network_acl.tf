resource "aws_network_acl" "tfer--acl-0c9a59cbe41434399" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07d6918830b6abd48_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  vpc_id     = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-072a71590b8c6a80c_id}"
}

resource "aws_network_acl" "tfer--acl-9b43a2e6" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-02bc0d3c_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-5925483e_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-ac1429e6_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-c7315f9b_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-e797b3e8_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-eb224ac5_id}"]
  vpc_id     = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-dd7ac4a7_id}"
}
