resource "aws_main_route_table_association" "tfer--vpc-072a71590b8c6a80c" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-014ad530f7201893e_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-072a71590b8c6a80c_id}"
}

resource "aws_main_route_table_association" "tfer--vpc-dd7ac4a7" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-e7f5f098_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-dd7ac4a7_id}"
}
