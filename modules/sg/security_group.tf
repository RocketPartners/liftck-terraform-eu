resource "aws_security_group" "tfer--redshift-cluster-1-sg_sg-0abf449eb49a6fab9" {
  description = "redshift-cluster-1-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.10.0.0/16"]
    description = "dev"
    from_port   = "5439"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5439"
  }

  ingress {
    cidr_blocks = ["10.2.0.0/16"]
    description = "ckmarketing"
    from_port   = "5439"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5439"
  }

  ingress {
    cidr_blocks = ["10.20.0.0/16"]
    description = "cirk vpc in this account"
    from_port   = "5439"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5439"
  }

  ingress {
    cidr_blocks = ["52.70.63.192/27"]
    description = "kinesis"
    from_port   = "5439"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5439"
  }

  name = "redshift-cluster-1-sg"

  tags = {
    Name = "redshift-cluster-1-sg"
  }

  tags_all = {
    Name = "redshift-cluster-1-sg"
  }

  vpc_id = var.vpc_id
}