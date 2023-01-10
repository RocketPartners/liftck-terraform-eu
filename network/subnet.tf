resource "aws_subnet" "tfer--subnet-017cb385e5acdbec2" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.20.11.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "eu-west-1b"

  tags = {
    Name = "cirk Private Subnet (AZ2)"
  }

  tags_all = {
    Name = "cirk Private Subnet (AZ2)"
  }

  vpc_id = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
}

resource "aws_subnet" "tfer--subnet-07d6918830b6abd48" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.20.100.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "eu-west-1a"
  tags = {
    Name = "cirk Public Subnet (AZ1)"
  }

  tags_all = {
    Name = "cirk Public Subnet (AZ1)"
  }

  vpc_id = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
}

resource "aws_subnet" "tfer--subnet-0b79e29e16fd8d71c" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.20.101.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "eu-west-1b"
  tags = {
    Name = "cirk Public Subnet (AZ2)"
  }

  tags_all = {
    Name = "cirk Public Subnet (AZ2)"
  }

  vpc_id = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
}
resource "aws_subnet" "tfer--subnet-0f592478c6198fa9e" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.20.10.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "eu-west-1a"
  tags = {
    Name = "cirk Private Subnet (AZ1)"
  }

  tags_all = {
    Name = "cirk Private Subnet (AZ1)"
  }

  vpc_id = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
}