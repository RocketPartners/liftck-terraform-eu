resource "aws_security_group" "tfer--rds-launch-wizard_sg-0c35a4474b18863d5" {
  description = "Created from the RDS Management Console: 2019/04/16 20:58:06"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.2.0.0/16"]
    description = "VPN Access / ckmarketing"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.20.0.0/16"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "rds-launch-wizard"

  tags = {
    Name = "cirk-prod-rds-sg"
  }

  tags_all = {
    Name = "cirk-prod-rds-sg"
  }

  vpc_id = var.vpc_id
}


resource "aws_security_group" "tfer--cirk-services-rds-sg_sg-019e0d7419c048856" {
  description = "Created by RDS management console"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.2.0.0/16"]
    description = "VPN Access / ckmarketing"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.20.0.0/16"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name   = "cirk-services-rds-sg"
  vpc_id = var.vpc_id
}