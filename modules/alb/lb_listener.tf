resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4" {
  certificate_arn = "arn:aws:acm:us-east-1:799611636099:certificate/459af342-88df-4c7f-aa12-7a17dad4417c"

  default_action {
    fixed_response {
      content_type = "text/plain"
      message_body = "NOT FOUND - ALB DEFAULT MESSAGE"
      status_code  = "404"
    }

    type = "fixed-response"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--player_id}"
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-f41757a54e816ee7" {
  default_action {
    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_302"
    }

    type = "redirect"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--player_id}"
  port              = "80"
  protocol          = "HTTP"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-portal-002F-d8b10a6a47bdf009-002F-295441aa5213371a" {
  default_action {
    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_302"
    }

    type = "redirect"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--portal_id}"
  port              = "80"
  protocol          = "HTTP"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-portal-002F-d8b10a6a47bdf009-002F-dc4e7296b3a2839a" {
  certificate_arn = "arn:aws:acm:us-east-1:799611636099:certificate/459af342-88df-4c7f-aa12-7a17dad4417c"

  default_action {
    fixed_response {
      content_type = "text/plain"
      message_body = "NOT FOUND - ALB DEFAULT MESSAGE"
      status_code  = "404"
    }

    type = "fixed-response"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--portal_id}"
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-reports-alb-002F-665b406fa4523ce1-002F-2ac8919a971f4376" {
  certificate_arn = "arn:aws:acm:us-east-1:799611636099:certificate/459af342-88df-4c7f-aa12-7a17dad4417c"

  default_action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/reports-tg/37a350e196028e23"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--reports-alb_id}"
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-reports-alb-002F-665b406fa4523ce1-002F-ba06b26e5e6ff2f3" {
  default_action {
    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_302"
    }

    type = "redirect"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--reports-alb_id}"
  port              = "80"
  protocol          = "HTTP"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-net-002F-nlb-002F-ab25f3ac807d0ea8-002F-34b1429278b1414a" {
  default_action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-alb-80/3ec028af5f199507"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--nlb_id}"
  port              = "80"
  protocol          = "TCP"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-net-002F-nlb-002F-ab25f3ac807d0ea8-002F-7851f6d63e595e12" {
  certificate_arn = "arn:aws:acm:us-east-1:799611636099:certificate/459af342-88df-4c7f-aa12-7a17dad4417c"

  default_action {
    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-push-rabbitmq3/c13408f99fa3ac5f"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--nlb_id}"
  port              = "5671"
  protocol          = "TLS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-net-002F-nlb-002F-ab25f3ac807d0ea8-002F-82150af053a5f791" {
  default_action {
    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-alb-443/0fc9785933d9bd18"
    type             = "forward"
  }

  load_balancer_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--nlb_id}"
  port              = "443"
  protocol          = "TCP"
}
