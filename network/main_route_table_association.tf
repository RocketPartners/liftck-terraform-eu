resource "aws_main_route_table_association" "tfer--vpc-072a71590b8c6a80c" {
  route_table_id = aws_route_table.tfer--rtb-014ad530f7201893e.id
  vpc_id         = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
}