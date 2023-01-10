######################################################
resource "aws_route_table" "tfer--rtb-014ad530f7201893e" {
  vpc_id = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
}
######################################################
resource "aws_route_table" "tfer--rtb-060d40d1fe35cf2e7" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.tfer--nat-0d9aebc74e176ff04.id
  }

  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = aws_vpc_peering_connection.market.id
  }

  tags = {
    Name = "cirk Private Routes (AZ2)"
  }

  tags_all = {
    Name = "cirk Private Routes (AZ2)"
  }

  vpc_id = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
  depends_on = [ aws_vpc_peering_connection.market, aws_vpc_peering_connection_accepter.market]
}
##########################################################
resource "aws_route_table" "tfer--rtb-0953126393041e235" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tfer--igw-0123a874ecf046c98.id
  }

  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = aws_vpc_peering_connection.market.id
  }

  tags = {
    Name = "cirk Public Routes"
  }

  tags_all = {
    Name = "cirk Public Routes"
  }

  vpc_id = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
  depends_on = [ aws_vpc_peering_connection.market, aws_vpc_peering_connection_accepter.market]

}
#########################################################
resource "aws_route_table" "tfer--rtb-0efd330ad276e201e" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.tfer--nat-02af312057f1509ee.id
  }

  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = aws_vpc_peering_connection.market.id
  }

  tags = {
    Name = "cirk Private Routes (AZ1)"
  }

  tags_all = {
    Name = "cirk Private Routes (AZ1)"
  }

  vpc_id = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
  depends_on = [ aws_vpc_peering_connection.market, aws_vpc_peering_connection_accepter.market]

}