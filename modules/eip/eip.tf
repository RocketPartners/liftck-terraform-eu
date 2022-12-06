resource "aws_eip" "tfer--eipalloc-01ec88f75cdb767fa" {
  network_border_group = "us-east-1"
  network_interface    = "eni-025c501cd2d12d572"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "Redshift"
  }

  tags_all = {
    Name = "Redshift"
  }

  vpc = "true"
}

resource "aws_eip" "tfer--eipalloc-02966e43fa4f9e822" {
  network_border_group = "us-east-1"
  network_interface    = "eni-02bc05185e770a3db"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "Network Loadbalancer 1"
  }

  tags_all = {
    Name = "Network Loadbalancer 1"
  }

  vpc = "true"
}

resource "aws_eip" "tfer--eipalloc-03ed668dfe3da3db5" {
  network_border_group = "us-east-1"
  network_interface    = "eni-0607359bd7504d318"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "NAT Gateway - us-east-1a"
  }

  tags_all = {
    Name = "NAT Gateway - us-east-1a"
  }

  vpc = "true"
}

resource "aws_eip" "tfer--eipalloc-045ef3f84510fb62f" {
  network_border_group = "us-east-1"
  network_interface    = "eni-024806e1d471b89ae"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "Network Loadbalancer 2"
  }

  tags_all = {
    Name = "Network Loadbalancer 2"
  }

  vpc = "true"
}

resource "aws_eip" "tfer--eipalloc-0ec3904e2060e6073" {
  network_border_group = "us-east-1"
  network_interface    = "eni-053d2ce6e69141c46"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "NAT Gateway - us-east-1b"
  }

  tags_all = {
    Name = "NAT Gateway - us-east-1b"
  }

  vpc = "true"
}
