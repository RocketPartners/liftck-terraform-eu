resource "aws_network_interface" "tfer--eni-025c501cd2d12d572" {
  description        = "RedshiftNetworkInterface"
  #interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.182"
  #private_ip_list    = ["10.20.100.182"]
  private_ips        = ["10.20.100.182"]
  #private_ips_count  = "0"
  security_groups    = ["${var.sg_id}"]
  source_dest_check  = "true"
  subnet_id          = var.public_subnet_1_id
}

resource "aws_network_interface" "tfer--eni-02bc05185e770a3db" {
  description        = "ELB net/nlb/ab25f3ac807d0ea8"
  #interface_type     = "network_load_balancer"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.189"
  #private_ip_list    = ["10.20.100.189"]
  #private_ip_list_enabled = true
  private_ips        = ["10.20.100.189"]
  #private_ips_count  = "0"
  source_dest_check  = "false"
  subnet_id          = var.public_subnet_1_id
}

resource "aws_network_interface" "tfer--eni-0607359bd7504d318" {
  description        = "Interface for NAT Gateway nat-02af312057f1509ee"
  #interface_type     = "nat_gateway"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.175"
  #private_ip_list    = ["10.20.100.175"]
  #private_ip_list_enabled = true
  private_ips        = ["10.20.100.175"]
  #private_ips_count  = "0"
  source_dest_check  = "false"
  subnet_id          = var.public_subnet_1_id
}

resource "aws_network_interface" "tfer--eni-024806e1d471b89ae" {
  description        = "ELB net/nlb/ab25f3ac807d0ea8"
  #interface_type     = "network_load_balancer"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.101.122"
  #private_ip_list    = ["10.20.101.122"]
  private_ips        = ["10.20.101.122"]
  #private_ips_count  = "0"
  source_dest_check  = "false"
  subnet_id          = var.public_subnet_2_id
}

resource "aws_network_interface" "tfer--eni-053d2ce6e69141c46" {
  description        = "Interface for NAT Gateway nat-0d9aebc74e176ff04"
  #interface_type     = "nat_gateway"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.101.20"
  #private_ip_list    = ["10.20.101.20"]
  private_ips        = ["10.20.101.20"]
  #private_ips_count  = "0"
  source_dest_check  = "false"
  subnet_id          = var.public_subnet_2_id
}
