resource "aws_eip" "tfer--eipalloc-02966e43fa4f9e822" {
  network_border_group = var.region
  #network_interface    = var.elb_eni_1 #eni-02bc05185e770a3db
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "Network Loadbalancer 1"
  }

  tags_all = {
    Name = "Network Loadbalancer 1"
  }

  vpc = "true"
}

resource "aws_eip" "tfer--eipalloc-045ef3f84510fb62f" {
  network_border_group = var.region
  #network_interface    = var.elb_eni_2 #eni-024806e1d471b89ae
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "Network Loadbalancer 2"
  }

  tags_all = {
    Name = "Network Loadbalancer 2"
  }

  vpc = "true"
}

resource "aws_eip" "tfer--eipalloc-01ec88f75cdb767fa" {
  network_border_group = var.region
  network_interface    = var.redshift_eni #eni-025c501cd2d12d572
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "Redshift"
  }

  tags_all = {
    Name = "Redshift"
  }

  vpc = "true"
}

/*resource "aws_eip" "tfer--eipalloc-02966e43fa4f9e822" {
  network_border_group = var.region
  network_interface    = var.elb_eni_1 #eni-02bc05185e770a3db
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "Network Loadbalancer 1"
  }

  tags_all = {
    Name = "Network Loadbalancer 1"
  }

  vpc = "true"
}*/

resource "aws_eip" "tfer--eipalloc-03ed668dfe3da3db5" {
  network_border_group = var.region
  #network_interface    = var.nat_gateway_eni_1 #eni-0607359bd7504d318
  public_ipv4_pool     = "amazon"
  #associate_with_private_ip = "10.20.100.175"
  tags = {
    Name = "NAT Gateway - us-east-1a"
  }

  tags_all = {
    Name = "NAT Gateway - us-east-1a"
  }

  vpc = "true"

  depends_on = []
}

/*resource "aws_eip" "tfer--eipalloc-045ef3f84510fb62f" {
  network_border_group = var.region
  network_interface    = var.elb_eni_2 #eni-024806e1d471b89ae
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "Network Loadbalancer 2"
  }

  tags_all = {
    Name = "Network Loadbalancer 2"
  }

  vpc = "true"
}*/

resource "aws_eip" "tfer--eipalloc-0ec3904e2060e6073" {
  network_border_group = var.region
  #network_interface    = var.nat_gateway_eni_2 #"eni-053d2ce6e69141c46"
  public_ipv4_pool     = "amazon"
  #associate_with_private_ip = "10.20.101.20"

  tags = {
    Name = "NAT Gateway - ${var.region}"
  }

  tags_all = {
    Name = "NAT Gateway - us-east-1b"
  }

  vpc = "true"
}
