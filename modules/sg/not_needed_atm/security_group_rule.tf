resource "aws_security_group_rule" "tfer--sg-02cc11c8fc6867032_egress_-1_0_65536_0-002E-0-002E-0-002E-0-002F-0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = "0"
  protocol          = "-1"
  security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"
  to_port           = "0"
  type              = "egress"
}

resource "aws_security_group_rule" "tfer--sg-02cc11c8fc6867032_ingress_icmp_-1_-1_sg-02cc11c8fc6867032" {
  from_port         = "-1"
  protocol          = "icmp"
  security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"
  self              = "true"
  to_port           = "-1"
  type              = "ingress"
}

resource "aws_security_group_rule" "tfer--sg-02cc11c8fc6867032_ingress_icmp_-1_-1_sg-05225ccfce9606460" {
  from_port                = "-1"
  protocol                 = "icmp"
  security_group_id        = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"
  source_security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-master_sg-05225ccfce9606460_id}"
  to_port                  = "-1"
  type                     = "ingress"
}

resource "aws_security_group_rule" "tfer--sg-02cc11c8fc6867032_ingress_tcp_0_65535_sg-02cc11c8fc6867032" {
  from_port         = "0"
  protocol          = "tcp"
  security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"
  self              = "true"
  to_port           = "65535"
  type              = "ingress"
}

resource "aws_security_group_rule" "tfer--sg-02cc11c8fc6867032_ingress_tcp_0_65535_sg-05225ccfce9606460" {
  from_port                = "0"
  protocol                 = "tcp"
  security_group_id        = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"
  source_security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-master_sg-05225ccfce9606460_id}"
  to_port                  = "65535"
  type                     = "ingress"
}

resource "aws_security_group_rule" "tfer--sg-02cc11c8fc6867032_ingress_udp_0_65535_sg-02cc11c8fc6867032" {
  from_port         = "0"
  protocol          = "udp"
  security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"
  self              = "true"
  to_port           = "65535"
  type              = "ingress"
}

resource "aws_security_group_rule" "tfer--sg-02cc11c8fc6867032_ingress_udp_0_65535_sg-05225ccfce9606460" {
  from_port                = "0"
  protocol                 = "udp"
  security_group_id        = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"
  source_security_group_id = "${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-master_sg-05225ccfce9606460_id}"
  to_port                  = "65535"
  type                     = "ingress"
}
