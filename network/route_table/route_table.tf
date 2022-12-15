######################################################
resource "aws_route_table" "tfer--rtb-014ad530f7201893e" {
  vpc_id = var.vpc_id
}
######################################################
resource "aws_route_table" "tfer--rtb-060d40d1fe35cf2e7" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.ngw_2 #0d9aebc74e176ff04
  }

  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = var.vpc_peering #0ca4afd59731e9bea
  }

  tags = {
    Name = "cirk Private Routes (AZ2)"
  }

  tags_all = {
    Name = "cirk Private Routes (AZ2)"
  }

  vpc_id = var.vpc_id
}
##########################################################
resource "aws_route_table" "tfer--rtb-0953126393041e235" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id #0123a874ecf046c98"
  }

  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = var.vpc_peering ##0ca4afd59731e9bea
  }

  tags = {
    Name = "cirk Public Routes"
  }

  tags_all = {
    Name = "cirk Public Routes"
  }

  vpc_id = var.vpc_id
}
#########################################################
resource "aws_route_table" "tfer--rtb-0efd330ad276e201e" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.ngw_1 #02af312057f1509ee
  }

  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = var.vpc_peering ##0ca4afd59731e9bea
  }

  tags = {
    Name = "cirk Private Routes (AZ1)"
  }

  tags_all = {
    Name = "cirk Private Routes (AZ1)"
  }

  vpc_id = var.vpc_id
}