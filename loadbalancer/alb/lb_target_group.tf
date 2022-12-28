/*













*/

resource "aws_lb_target_group" "tfer--reports-tg" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "10"
    matcher             = "200-299"
    path                = "/reports/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  name                          = "reports-tg"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group" "tfer--player-alb-443" {
  connection_termination = "false"
  deregistration_delay   = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "3"
    interval            = "30"
    port                = "traffic-port"
    protocol            = "TCP"
    #timeout             = "10"
    unhealthy_threshold = "3"
  }

  ip_address_type    = "ipv4"
  name               = "player-alb-443"
  port               = "443"
  preserve_client_ip = "false"
  protocol           = "TCP"
  proxy_protocol_v2  = "false"

  stickiness {
    cookie_duration = "0"
    enabled         = "false"
    type            = "source_ip"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group" "tfer--player-alb-80" {
  connection_termination = "false"
  deregistration_delay   = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "3"
    interval            = "30"
    port                = "traffic-port"
    protocol            = "TCP"
    #timeout             = "10"
    unhealthy_threshold = "3"
  }

  ip_address_type    = "ipv4"
  name               = "player-alb-80"
  port               = "80"
  preserve_client_ip = "false"
  protocol           = "TCP"
  proxy_protocol_v2  = "false"

  stickiness {
    cookie_duration = "0"
    enabled         = "false"
    type            = "source_ip"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group" "tfer--player-push-rabbitmq3" {
  connection_termination = "false"
  deregistration_delay   = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "3"
    interval            = "30"
    matcher             = "200-399"
    path                = "/"
    port                = "443"
    protocol            = "HTTPS"
    timeout             = "10"
    unhealthy_threshold = "3"
  }

  ip_address_type    = "ipv4"
  name               = "player-push-rabbitmq3"
  port               = "5671"
  preserve_client_ip = "false"
  protocol           = "TLS"
  proxy_protocol_v2  = "false"

  stickiness {
    cookie_duration = "0"
    enabled         = "false"
    type            = "source_ip"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group" "tfer--player-api" {
  deregistration_delay = "120"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "120"
    matcher             = "200-299"
    path                = "/api/lift/snooze/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "70"
    unhealthy_threshold = "4"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "least_outstanding_requests"
  name                          = "player-api"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name = "player-api"
  }

  tags_all = {
    Name = "player-api"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}


resource "aws_lb_target_group" "tfer--player-loyalty" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "10"
    matcher             = "200-299"
    path                = "/loyalty/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  name                          = "player-loyalty"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name = "player-loyalty"
  }

  tags_all = {
    Name = "player-loyalty"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group" "tfer--player-event-api" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "70"
    matcher             = "200-299"
    path                = "/api/lift/snooze/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "60"
    unhealthy_threshold = "4"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  name                          = "player-event-api"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name = "player-event-api"
  }

  tags_all = {
    Name = "player-event-api"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group" "tfer--portal-api" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "10"
    matcher             = "200-299"
    path                = "/api/lift/system/plugins?includes=id\u0026limit=1"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  name                          = "portal-api"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name = "portal-api"
  }

  tags_all = {
    Name = "portal-api"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}


resource "aws_lb_target_group" "tfer--player-punchcard" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "10"
    matcher             = "200-299"
    path                = "/api/lift/snooze/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  name                          = "player-punchcard"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name = "player-punchcard"
  }

  tags_all = {
    Name = "player-punchcard"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}


resource "aws_lb_target_group" "tfer--player-lift-okta-integration" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "60"
    matcher             = "200-299"
    path                = "/api/okta/actuator/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  name                          = "player-lift-okta-integration"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name = "player-lift-okta-integration"
  }

  tags_all = {
    Name = "player-lift-okta-integration"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}


resource "aws_lb_target_group" "tfer--player-token-tracker" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "10"
    matcher             = "200-299"
    path                = "/token-tracker/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  name                          = "player-token-tracker"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name = "player-token-tracker"
  }

  tags_all = {
    Name = "player-token-tracker"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}


resource "aws_lb_target_group" "tfer--player-file-api" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "50"
    matcher             = "200-299"
    path                = "/api/lift/snooze/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "20"
    unhealthy_threshold = "3"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  name                          = "player-file-api"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name = "player-file-api"
  }

  tags_all = {
    Name = "player-file-api"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}


resource "aws_lb_target_group" "tfer--player-ngrp-proxy" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "10"
    matcher             = "200-299"
    path                = "/api/lift/snooze/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type               = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  name                          = "player-ngrp-proxy"
  port                          = "80"
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  slow_start                    = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    Name = "player-ngrp-proxy"
  }

  tags_all = {
    Name = "player-ngrp-proxy"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group" "tfer--PlayerPushRabbitMQ5" {
  connection_termination = "false"
  deregistration_delay   = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "3"
    interval            = "30"
    matcher             = "200-399"
    path                = "/"
    port                = "443"
    protocol            = "HTTPS"
    timeout             = "10"
    unhealthy_threshold = "3"
  }

  ip_address_type    = "ipv4"
  name               = "PlayerPushRabbitMQ5"
  port               = "5671"
  preserve_client_ip = "false"
  protocol           = "TLS"
  proxy_protocol_v2  = "false"

  stickiness {
    cookie_duration = "0"
    enabled         = "false"
    type            = "source_ip"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group" "tfer--player-push-rabbitmq2" {
  connection_termination = "false"
  deregistration_delay   = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "3"
    interval            = "30"
    matcher             = "200-399"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTPS"
    timeout             = "10"
    unhealthy_threshold = "3"
  }

  ip_address_type    = "ipv4"
  name               = "player-push-rabbitmq2"
  port               = "5671"
  preserve_client_ip = "false"
  protocol           = "TLS"
  proxy_protocol_v2  = "false"

  stickiness {
    cookie_duration = "0"
    enabled         = "false"
    type            = "source_ip"
  }

  target_type = "ip"
  vpc_id      = var.vpc_id
}