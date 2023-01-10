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

  subnet_ids = [aws_subnet.tfer--subnet-07d6918830b6abd48.id, aws_subnet.tfer--subnet-0b79e29e16fd8d71c.id, aws_subnet.tfer--subnet-0f592478c6198fa9e, aws_subnet.tfer--subnet-017cb385e5acdbec2]
  vpc_id     = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
}