resource "aws_internet_gateway" "tfer--igw-0123a874ecf046c98" {
  tags = {
    Name = "cirk"
  }

  tags_all = {
    Name = "cirk"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-072a71590b8c6a80c_id}"
}

resource "aws_internet_gateway" "tfer--igw-1024c96b" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-dd7ac4a7_id}"
}
