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


resource "aws_security_group" "tfer--alb-player_sg-075ee2d0c09048822" {
  description = "Security Group for the player ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "alb-player"

  tags = {
    Name = "alb-player"
  }

  tags_all = {
    Name = "alb-player"
  }

  vpc_id = var.vpc_id
}


resource "aws_security_group" "tfer--alb-portal_sg-06d59a5e786ab73fd" {
  description = "Security Group for the portal ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "alb-portal"

  tags = {
    Name = "alb-portal"
  }

  tags_all = {
    Name = "alb-portal"
  }

  vpc_id = var.vpc_id
}


resource "aws_security_group" "tfer--reports-group_sg-00af07a43287c65ba" {
  description = "Security Group for ECS service reports"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "reports-group"

  tags = {
    Name = "reports-sg"
  }

  tags_all = {
    Name = "reports-sg"
  }

  vpc_id = var.vpc_id
}