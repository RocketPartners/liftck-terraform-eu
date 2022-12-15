resource "aws_db_subnet_group" "tfer--cirk-prod-subnet-group" {
  description = "cirk-prod-subnet-group"
  name        = "cirk-prod-subnet-group"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
}

resource "aws_db_subnet_group" "tfer--default" {
  description = "default"
  name        = "default"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-02bc0d3c_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-5925483e_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-ac1429e6_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-c7315f9b_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-e797b3e8_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-eb224ac5_id}"]
}

resource "aws_db_subnet_group" "tfer--default-vpc-072a71590b8c6a80c" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-072a71590b8c6a80c"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07d6918830b6abd48_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
}

