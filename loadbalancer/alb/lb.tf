resource "aws_lb" "tfer--nlb" {
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  internal                         = "false"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "network"
  name                             = "nlb"

  subnet_mapping {
    #allocation_id = var.nlb1
    subnet_id     = var.pub_sub_1_id
  }

  subnet_mapping {
    #allocation_id = var.nlb2
    subnet_id     = var.pub_sub_2_id
  }

  #subnets = [var.pub_sub_1_id, var.pub_sub_2_id]
}

resource "aws_lb" "tfer--player" {
  desync_mitigation_mode           = "defensive"
  drop_invalid_header_fields       = "false"
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  enable_http2                     = "true"
  enable_waf_fail_open             = "false"
  idle_timeout                     = "120"
  internal                         = "true"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "application"
  name                             = "player"
  preserve_host_header             = "false"
  security_groups                  = [var.sg-alb-player]

  subnet_mapping {
    subnet_id = var.priv_sub_2_id
  }

  subnet_mapping {
    subnet_id = var.priv_sub_1_id
  }

  #subnets = [var.priv_sub_2_id, var.priv_sub_1_id]

  tags = {
    Name = "player"
  }

  tags_all = {
    Name = "player"
  }
}

resource "aws_lb" "tfer--portal" {
  desync_mitigation_mode           = "defensive"
  drop_invalid_header_fields       = "false"
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  enable_http2                     = "true"
  enable_waf_fail_open             = "false"
  idle_timeout                     = "60"
  internal                         = "false"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "application"
  name                             = "portal"
  preserve_host_header             = "false"
  security_groups                  = [var.sg-alb-portal]

  subnet_mapping {
    subnet_id = var.pub_sub_1_id
  }

  subnet_mapping {
    subnet_id = var.pub_sub_2_id
  }

  #subnets = [var.pub_sub_1_id, var.pub_sub_2_id]

  tags = {
    Name = "portal"
  }

  tags_all = {
    Name = "portal"
  }
}

resource "aws_lb" "tfer--reports-alb" {
  desync_mitigation_mode           = "defensive"
  drop_invalid_header_fields       = "false"
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  enable_http2                     = "false"
  enable_waf_fail_open             = "false"
  idle_timeout                     = "3600"
  internal                         = "true"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "application"
  name                             = "reports-alb"
  preserve_host_header             = "false"
  security_groups                  = [var.sg-alb-ecs]

  subnet_mapping {
    subnet_id = var.priv_sub_2_id
  }

  subnet_mapping {
    subnet_id = var.priv_sub_1_id
  }

  #subnets = [var.priv_sub_2_id, var.priv_sub_1_id]
}
