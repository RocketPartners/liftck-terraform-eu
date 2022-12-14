resource "aws_route_table_association" "tfer--subnet-017cb385e5acdbec2" {
  route_table_id = aws_route_table.tfer--rtb-060d40d1fe35cf2e7.id
  subnet_id      = var.priv_sub_2_id
}

resource "aws_route_table_association" "tfer--subnet-07d6918830b6abd48" {
  route_table_id = aws_route_table.tfer--rtb-0953126393041e235.id
  subnet_id      = var.pub_sub_1_id
}

resource "aws_route_table_association" "tfer--subnet-0b79e29e16fd8d71c" {
  route_table_id = aws_route_table.tfer--rtb-0953126393041e235.id
  subnet_id      = var.pub_sub_2_id
}

resource "aws_route_table_association" "tfer--subnet-0f592478c6198fa9e" {
  route_table_id = aws_route_table.tfer--rtb-0efd330ad276e201e.id
  subnet_id      = var.priv_sub_1_id
}
