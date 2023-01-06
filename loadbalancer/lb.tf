
resource "aws_lb" "tfer--nlb" {
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  internal                         = "false"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "network"
  name                             = "nlb"

  subnet_mapping {
    allocation_id = var.eip_nlb_1 #aws_eip.tfer--eipalloc-02966e43fa4f9e822.allocation_id
    #allocation_id = var.nlb1
    subnet_id     = var.pub_sub_1_id
  }

  subnet_mapping {
    allocation_id = var.eip_nlb_2 #aws_eip.tfer--eipalloc-045ef3f84510fb62f.allocation_id
    #allocation_id = var.nlb2
    subnet_id     = var.pub_sub_2_id
  }

  #subnets = [var.pub_sub_1_id, var.pub_sub_2_id]
  /*depends_on = [
    var.eip_nlb_1,
    var.eip_nlb_2
  ]*/
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
  security_groups                  = [aws_security_group.tfer--alb-player_sg-075ee2d0c09048822.id]

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
  security_groups                  = [aws_security_group.tfer--alb-portal_sg-06d59a5e786ab73fd.id]

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
  security_groups                  = [aws_security_group.tfer--reports-group_sg-00af07a43287c65ba.id]

  subnet_mapping {
    subnet_id = var.priv_sub_2_id
  }

  subnet_mapping {
    subnet_id = var.priv_sub_1_id
  }

  #subnets = [var.priv_sub_2_id, var.priv_sub_1_id]
}
