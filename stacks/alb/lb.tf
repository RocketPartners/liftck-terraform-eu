resource "aws_lb" "tfer--nlb" {
  enable_cross_zone_load_balancing = "true"
  enable_deletion_protection       = "false"
  internal                         = "false"
  ip_address_type                  = "ipv4"
  load_balancer_type               = "network"
  name                             = "nlb"

  subnet_mapping {
    allocation_id = "eipalloc-02966e43fa4f9e822"
    subnet_id     = "subnet-07d6918830b6abd48"
  }

  subnet_mapping {
    allocation_id = "eipalloc-045ef3f84510fb62f"
    subnet_id     = "subnet-0b79e29e16fd8d71c"
  }

  subnets = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07d6918830b6abd48_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id}"]
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
  security_groups                  = ["sg-075ee2d0c09048822"]

  subnet_mapping {
    subnet_id = "subnet-017cb385e5acdbec2"
  }

  subnet_mapping {
    subnet_id = "subnet-0f592478c6198fa9e"
  }

  subnets = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]

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
  security_groups                  = ["sg-06d59a5e786ab73fd"]

  subnet_mapping {
    subnet_id = "subnet-07d6918830b6abd48"
  }

  subnet_mapping {
    subnet_id = "subnet-0b79e29e16fd8d71c"
  }

  subnets = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07d6918830b6abd48_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id}"]

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
  security_groups                  = ["sg-00af07a43287c65ba"]

  subnet_mapping {
    subnet_id = "subnet-017cb385e5acdbec2"
  }

  subnet_mapping {
    subnet_id = "subnet-0f592478c6198fa9e"
  }

  subnets = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
}
