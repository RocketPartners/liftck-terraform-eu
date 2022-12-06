resource "aws_route_table_association" "tfer--subnet-017cb385e5acdbec2" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-060d40d1fe35cf2e7_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}"
}

resource "aws_route_table_association" "tfer--subnet-07d6918830b6abd48" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0953126393041e235_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07d6918830b6abd48_id}"
}

resource "aws_route_table_association" "tfer--subnet-0b79e29e16fd8d71c" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0953126393041e235_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id}"
}

resource "aws_route_table_association" "tfer--subnet-0f592478c6198fa9e" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0efd330ad276e201e_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"
}
