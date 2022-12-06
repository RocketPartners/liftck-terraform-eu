resource "aws_vpc" "tfer--vpc-072a71590b8c6a80c" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.20.0.0/16"
  enable_classiclink                   = "false"
  enable_classiclink_dns_support       = "false"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  #ipv6_netmask_length                  = "0"

  tags = {
    Name = "cirk"
  }

  tags_all = {
    Name = "cirk"
  }
}

resource "aws_vpc" "tfer--vpc-dd7ac4a7" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.31.0.0/16"
  enable_classiclink                   = "false"
  enable_classiclink_dns_support       = "false"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  #ipv6_netmask_length                  = "0"

  tags = {
    Name = "default"
  }

  tags_all = {
    Name = "default"
  }
}
