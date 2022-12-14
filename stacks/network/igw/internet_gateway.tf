resource "aws_internet_gateway" "tfer--igw-0123a874ecf046c98" {
  tags = {
    Name = "cirk"
  }

  tags_all = {
    Name = "cirk"
  }

  vpc_id = var.vpc_id
}