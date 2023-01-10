
resource "aws_security_group" "tfer--elasticsearchdev_sg-0f858c3374258edd3" {
  description = "Security Group for Dev Elastic Search"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.2.0.0/16"]
    description = "allow vpn kibana access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["10.20.0.0/16"]
    description = "allow local access"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "elasticsearchdev"

  tags = {
    Name = "elastic"
  }

  tags_all = {
    Name = "elastic"
  }

  vpc_id = var.vpc_id
}
