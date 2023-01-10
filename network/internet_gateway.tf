resource "aws_internet_gateway" "tfer--igw-0123a874ecf046c98" {
  tags = {
    Name = "cirk"
  }

  tags_all = {
    Name = "cirk"
  }

  vpc_id = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
}
