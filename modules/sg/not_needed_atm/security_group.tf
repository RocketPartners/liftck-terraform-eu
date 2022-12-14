resource "aws_security_group" "tfer--ElasticMapReduce-master_sg-05225ccfce9606460" {
  description = "Master group for Elastic MapReduce created on 2019-12-16T22:18:10.618Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["207.171.167.101/32", "207.171.167.25/32", "207.171.167.26/32", "207.171.172.6/32", "54.239.98.0/24", "54.240.217.16/29", "54.240.217.64/28", "54.240.217.8/29", "54.240.217.80/29", "72.21.196.64/29", "72.21.198.64/29", "72.21.217.0/24"]
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  ingress {
    from_port       = "-1"
    protocol        = "icmp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"]
    self            = "true"
    to_port         = "-1"
  }

  ingress {
    from_port       = "0"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"]
    self            = "true"
    to_port         = "65535"
  }

  ingress {
    from_port       = "0"
    protocol        = "udp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032_id}"]
    self            = "true"
    to_port         = "65535"
  }

  name   = "ElasticMapReduce-master"
  vpc_id = "vpc-dd7ac4a7"
}

resource "aws_security_group" "tfer--ElasticMapReduce-slave_sg-02cc11c8fc6867032" {
  description = "Slave group for Elastic MapReduce created on 2019-12-16T22:18:10.618Z"
  name        = "ElasticMapReduce-slave"
  vpc_id      = "vpc-dd7ac4a7"
}

resource "aws_security_group" "tfer--SQL-0020-Server-0020-Port-0020-1433_sg-0bf4c2c87e309da47" {
  description = "SQL Server Port 1433"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "1433"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "1433"
  }

  name = "SQL Server Port 1433"

  tags = {
    Name = "circlek-sqlserver"
  }

  tags_all = {
    Name = "circlek-sqlserver"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--alarm-lambda-sg_sg-05f225e225971532b" {
  description = "alarm-lambda-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "alarm-lambda-sg"

  tags = {
    Name = "alarm-lambda-sg"
  }

  tags_all = {
    Name = "alarm-lambda-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
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

  vpc_id = "vpc-072a71590b8c6a80c"
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

  vpc_id = "vpc-072a71590b8c6a80c"
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
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--clear-tunnel-connection-sg_sg-0e7e6c6b32be59230" {
  description = "Security Group for Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "clear-tunnel-connection-sg"

  tags = {
    Name = "clear-tunnel-connection-sg"
  }

  tags_all = {
    Name = "clear-tunnel-connection-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--cloudwatch-endpoint-connectivity_sg-0d00d076553481cb5" {
  description = "allow connection between cloudwatch log service and vpc endpoint"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allows communication between tasks and endpoint"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allows communication between tasks and endpoint"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  name   = "cloudwatch-endpoint-connectivity"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--default_sg-065260779a3d2cbda" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--default_sg-7922833d" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-dd7ac4a7"
}

resource "aws_security_group" "tfer--ec2-sg-liftcksnooze_sg-0b98bd59e7bfe1580" {
  description = "launch-wizard-11 created 2020-11-25T12:48:24.992-05:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "8080"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "8080"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "8081"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "8081"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "8082"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "8082"
  }

  name   = "ec2-sg-liftcksnooze"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-player-api_sg-032d29010900e1c66" {
  description = "Security Group for ECS service api in cluster player"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "ecs-player-api"

  tags = {
    Name = "ecs-player-api"
  }

  tags_all = {
    Name = "ecs-player-api"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-player-event-api_sg-063f9e6e2b18ed441" {
  description = "Security Group for ECS service event-api in cluster player"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "ecs-player-event-api"

  tags = {
    Name = "ecs-player-event-api"
  }

  tags_all = {
    Name = "ecs-player-event-api"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-player-file-api_sg-074e54a972387bb95" {
  description = "Security Group for ECS service file-api in cluster player"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "ecs-player-file-api"

  tags = {
    Name = "ecs-player-file-api"
  }

  tags_all = {
    Name = "ecs-player-file-api"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-player-lift-okta-integration_sg-019e4241039743f1e" {
  description = "Security Group for ECS service lift-okta-integration in cluster player"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "ecs-player-lift-okta-integration"

  tags = {
    Name = "ecs-player-lift-okta-integration"
  }

  tags_all = {
    Name = "ecs-player-lift-okta-integration"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-player-loyalty_sg-09e521b99ed8a0d58" {
  description = "Security Group for ECS service loyalty in cluster player"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "ecs-player-loyalty"

  tags = {
    Name = "ecs-player-loyalty"
  }

  tags_all = {
    Name = "ecs-player-loyalty"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-player-ngrp-proxy_sg-0902cedd5f90b83aa" {
  description = "Security Group for ECS service ngrp-proxy in cluster player"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "ecs-player-ngrp-proxy"

  tags = {
    Name = "ecs-player-ngrp-proxy"
  }

  tags_all = {
    Name = "ecs-player-ngrp-proxy"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-player-pricebook-indexer_sg-0050e870b9c645858" {
  description = "Security Group for ECS service pricebook-indexer in cluster player"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "ecs-player-pricebook-indexer"

  tags = {
    Name = "ecs-player-pricebook-indexer"
  }

  tags_all = {
    Name = "ecs-player-pricebook-indexer"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-player-punchcard_sg-0a20177346b77f28b" {
  description = "Security Group for ECS service punchcard in cluster player"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "ecs-player-punchcard"

  tags = {
    Name = "ecs-player-punchcard"
  }

  tags_all = {
    Name = "ecs-player-punchcard"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-player-token-tracker_sg-03dde2bf264e99e63" {
  description = "Security Group for ECS service token-tracker in cluster player"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "ecs-player-token-tracker"

  tags = {
    Name = "ecs-player-token-tracker"
  }

  tags_all = {
    Name = "ecs-player-token-tracker"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--ecs-portal-api_sg-09692131146ac5a26" {
  description = "Security Group for ECS service api in cluster portal"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }

  name = "ecs-portal-api"

  tags = {
    Name = "ecs-portal-api"
  }

  tags_all = {
    Name = "ecs-portal-api"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--elasticsearch_sg-0f858c3374258edd3" {
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

  name = "elasticsearch"

  tags = {
    Name = "elastic"
  }

  tags_all = {
    Name = "elastic"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--gen2-redis_sg-0971f73c233e409e7" {
  description = "Security Group for Redis"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.2.0.0/16"]
    description = "VPN access / ckmarketing"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["10.20.0.0/16"]
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "gen2-redis"

  tags = {
    Name = "redis"
  }

  tags_all = {
    Name = "redis"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--indexer-lambda-2-sg_sg-0df6f0ff03fbbeba3" {
  description = "Security Group for Indexer Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "indexer-lambda-2-sg"

  tags = {
    Name = "indexer-lambda-2-sg"
  }

  tags_all = {
    Name = "indexer-lambda-2-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--indexer-lambda-sg_sg-0caf9494a308209a2" {
  description = "Security Group for Indexer Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "indexer-lambda-sg"

  tags = {
    Name = "indexer-lambda-sg"
  }

  tags_all = {
    Name = "indexer-lambda-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--launch-wizard-10_sg-029389812c7380b2c" {
  description = "launch-wizard-10 created 2020-10-13T13:09:41.972-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  name   = "launch-wizard-10"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--launch-wizard-11_sg-0498f10ab53b4e33e" {
  description = "launch-wizard-11 created 2021-05-05T22:17:39.041-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "8080"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "8080"
  }

  name   = "launch-wizard-11"
  vpc_id = "vpc-dd7ac4a7"
}

resource "aws_security_group" "tfer--launch-wizard-12_sg-06f31bd1ceef88682" {
  description = "launch-wizard-12 created 2022-08-26T20:55:42.931Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-12"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--launch-wizard-1_sg-0a4e7cb64f995e680" {
  description = "launch-wizard-1 created 2019-02-28T12:29:03.612-05:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-1"
  vpc_id = "vpc-dd7ac4a7"
}

resource "aws_security_group" "tfer--launch-wizard-2_sg-0a444aa4b89cf5c83" {
  description = "launch-wizard-2 created 2019-04-03T13:14:39.677-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  name   = "launch-wizard-2"
  vpc_id = "vpc-dd7ac4a7"
}

resource "aws_security_group" "tfer--launch-wizard-3_sg-0069596e745e189dd" {
  description = "launch-wizard-3 created 2019-04-03T14:39:24.976-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  name   = "launch-wizard-3"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--launch-wizard-4_sg-0cf9b0967193d4780" {
  description = "launch-wizard-4 created 2019-05-17T07:50:04.116-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-4"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--launch-wizard-5_sg-02416cf5037f84896" {
  description = "launch-wizard-5 created 2020-01-24T15:33:26.578-05:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.2.0.0/16", "10.20.0.0/16"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-5"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--launch-wizard-6_sg-046be34e6e2a32c72" {
  description = "launch-wizard-6 created 2020-01-28T22:34:23.949-05:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.2.0.0/16", "10.20.0.0/16"]
    description = "SSH"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-6"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--launch-wizard-7_sg-07e916b779196048b" {
  description = "launch-wizard-7 created 2020-06-08T17:24:59.754-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-7"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--launch-wizard-8_sg-0de11133a433bfdcd" {
  description = "launch-wizard-8 created 2020-06-08T17:30:46.345-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-8"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--launch-wizard-9_sg-00f248dad69c2ec4e" {
  description = "launch-wizard-9 created 2020-06-08T17:36:11.613-04:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-9"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--no-ingress-sg_sg-0e38d84e831247cb4" {
  description = "Security group with no ingress rule"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name   = "no-ingress-sg"
  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--one-time-code-sg_sg-0ddfbf5000869a7db" {
  description = "Security Group for One Time Code Service API Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "one-time-code-sg"

  tags = {
    Name = "one-time-code-sg"
  }

  tags_all = {
    Name = "one-time-code-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--power-bi-reports-prod-sg_sg-0e06cd821e0301498" {
  description = "Security Group for Power BI Report Lambdas"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "power-bi-reports-prod-sg"

  tags = {
    Name = "power-bi-reports-prod-sg"
  }

  tags_all = {
    Name = "power-bi-reports-prod-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--rabbitmq-player-push_sg-08e3a030c8e59bb25" {
  description = "opens 443 and 5671 for rabbit mq"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow rabbit 5671"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow rabbit console"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "rabbitmq-player-push"
  vpc_id = "vpc-072a71590b8c6a80c"
}

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

  vpc_id = "vpc-072a71590b8c6a80c"
}

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

  vpc_id = "vpc-072a71590b8c6a80c"
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

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--row-copier-items-prod-sg_sg-017d03101602e2ee4" {
  description = "Security Group for Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "row-copier-items-prod-sg"

  tags = {
    Name = "row-copier-items-prod-sg"
  }

  tags_all = {
    Name = "row-copier-items-prod-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--row-copier-legacylocation-prod-sg_sg-0d6900739eccef946" {
  description = "Security Group for Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "row-copier-legacylocation-prod-sg"

  tags = {
    Name = "row-copier-legacylocation-prod-sg"
  }

  tags_all = {
    Name = "row-copier-legacylocation-prod-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--row-copier-locations-prod-sg_sg-03f71996f91c1edef" {
  description = "Security Group for Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "row-copier-locations-prod-sg"

  tags = {
    Name = "row-copier-locations-prod-sg"
  }

  tags_all = {
    Name = "row-copier-locations-prod-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--row-copier-playerlegacy-prod-sg_sg-03194c99ee2fe6df2" {
  description = "Security Group for Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "row-copier-playerlegacy-prod-sg"

  tags = {
    Name = "row-copier-playerlegacy-prod-sg"
  }

  tags_all = {
    Name = "row-copier-playerlegacy-prod-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--row-copier-players-prod-sg_sg-01d3be7430059d4db" {
  description = "Security Group for Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "row-copier-players-prod-sg"

  tags = {
    Name = "row-copier-players-prod-sg"
  }

  tags_all = {
    Name = "row-copier-players-prod-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--sec-grp-rocket-etl-lambda_sg-0ff2af863bfa17934" {
  description = "Security Group for the rocket-etl lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "sec-grp-rocket-etl-lambda"

  tags = {
    Name = "ec-grp-rocket-etl-lambda"
  }

  tags_all = {
    Name = "ec-grp-rocket-etl-lambda"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--sms-opt-in-prod-inbound-sms-sg_sg-0075536c802632bc3" {
  description = "Security Group for Inbound SMS Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "sms-opt-in-prod-inbound-sms-sg"

  tags = {
    Name = "sms-opt-in-prod-inbound-sms-sg"
  }

  tags_all = {
    Name = "sms-opt-in-prod-inbound-sms-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}

resource "aws_security_group" "tfer--sms-opt-in-prod-sms-api-sg_sg-0523b69f53aa30d0e" {
  description = "Security Group for SMS API Lambda"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  name = "sms-opt-in-prod-sms-api-sg"

  tags = {
    Name = "sms-opt-in-prod-sms-api-sg"
  }

  tags_all = {
    Name = "sms-opt-in-prod-sms-api-sg"
  }

  vpc_id = "vpc-072a71590b8c6a80c"
}
