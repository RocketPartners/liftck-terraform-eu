provider "aws" {
  region = "eu-west-1"
  assume_role {
    role_arn = "arn:aws:iam::627729951075:role/terraform_bot"
  }
}

provider "aws" {
  region = "us-east-1"
  alias = "market"
  assume_role {
    role_arn = "arn:aws:iam::713044078609:role/terraform_bot"
  }
}

resource "aws_vpc_peering_connection" "market" {
  peer_owner_id = "713044078609"
  peer_region   = "us-east-1"
  peer_vpc_id   = "vpc-2b11f152"
  auto_accept = false
  tags = {
    Name = "circlek-prod-to-ckmarketing"
  }

  tags_all = {
    Name = "circlek-prod-to-ckmarketing"
  }

  vpc_id = var.vpc_id
}

resource "aws_vpc_peering_connection_accepter" "market" {
  provider                  = aws.market
  vpc_peering_connection_id = aws_vpc_peering_connection.market.id
  auto_accept               = true

  tags = {
    Side = "Accepter"
  }
}

