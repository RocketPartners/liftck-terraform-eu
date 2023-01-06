variable "domain" {
  default = "gen2"
}

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

resource "aws_opensearch_domain" "gen2" {
  domain_name = var.domain
  access_policies = "{\"Statement\":[{\"Action\":\"es:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"arn:aws:es:${data.aws_region.current.name}:${data.aws_region.current.name}:domain/${var.domain}/*\"}],\"Version\":\"2012-10-17\"}"
  advanced_security_options {
    enabled                        = false
    internal_user_database_enabled = false
  }


  cluster_config {

    dedicated_master_count= 3
    dedicated_master_enabled = true
    dedicated_master_type = "r5.large.search"
    instance_count = 12
    instance_type = "c5.9xlarge.search"
    #warm_count = 0
    warm_enabled = false
    zone_awareness_config {
      availability_zone_count = 2
    }
    zone_awareness_enabled = true
  }

  domain_endpoint_options {
    custom_endpoint_enabled = false
    enforce_https = false
    tls_security_policy = "Policy-Min-TLS-1-0-2019-07"
  }

  ebs_options {
    ebs_enabled = true
    iops = 0
    volume_size = 120
    volume_type = "gp2"
  }

  engine_version = "Elasticsearch_6.5"
  vpc_options {
    subnet_ids = [var.priv_sub_1_id, var.priv_sub_2_id]
    security_group_ids = [aws_security_group.tfer--elasticsearchdev_sg-0f858c3374258edd3.id,]
  }

}


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
