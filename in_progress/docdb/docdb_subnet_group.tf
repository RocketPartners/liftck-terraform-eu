resource "aws_docdb_subnet_group" "tfer--cirk-prod-subnet-group" {
  description = "cirk-prod-subnet-group"
  name        = "cirk-prod-subnet-group"
  subnet_ids  = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
}

resource "aws_docdb_subnet_group" "tfer--default" {
  description = "default"
  name        = "default"
  subnet_ids  = ["subnet-02bc0d3c", "subnet-5925483e", "subnet-ac1429e6", "subnet-c7315f9b", "subnet-e797b3e8", "subnet-eb224ac5"]
}

resource "aws_docdb_subnet_group" "tfer--default-vpc-072a71590b8c6a80c" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-072a71590b8c6a80c"
  subnet_ids  = ["subnet-017cb385e5acdbec2", "subnet-07d6918830b6abd48", "subnet-0b79e29e16fd8d71c", "subnet-0f592478c6198fa9e"]
}
