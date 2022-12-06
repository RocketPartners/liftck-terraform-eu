resource "aws_vpc_peering_connection" "tfer--pcx-0182b24663000cf18" {
  accepter {
    allow_classic_link_to_remote_vpc = "false"
    allow_remote_vpc_dns_resolution  = "false"
    allow_vpc_to_remote_classic_link = "false"
  }

  peer_owner_id = "627729951075"
  peer_region   = "us-east-1"
  peer_vpc_id   = "vpc-08e4ab6be13c29c5f"

  tags = {
    Name = "circlek-dev-to-prod-redshift"
  }

  tags_all = {
    Name = "circlek-dev-to-prod-redshift"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_vpc_peering_connection" "tfer--pcx-0ca4afd59731e9bea" {
  peer_owner_id = "713044078609"
  peer_region   = "us-east-1"
  peer_vpc_id   = "vpc-2b11f152"

  requester {
    allow_classic_link_to_remote_vpc = "false"
    allow_remote_vpc_dns_resolution  = "false"
    allow_vpc_to_remote_classic_link = "false"
  }

  tags = {
    Name = "circlek-prod-to-ckmarketing"
  }

  tags_all = {
    Name = "circlek-prod-to-ckmarketing"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}
