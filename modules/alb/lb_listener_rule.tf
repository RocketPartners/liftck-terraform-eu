resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4-002F-117d741ef04415e7" {
  action {
    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-api/f5dbfe1f63b38a72"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4_id}"
  priority     = "15"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4-002F-199358d025d4a476" {
  action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-loyalty/6158536458850381"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/loyalty*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4_id}"
  priority     = "17"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4-002F-739eb2d6e44d0add" {
  action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-event-api/9b2c3405837b5302"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/lift/*/playerevents*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4_id}"
  priority     = "14"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4-002F-8cb427e98f9efa1b" {
  action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-punchcard/47775e316b3363bf"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/lift/*/dynamo/loyalty-punchcards*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4_id}"
  priority     = "10"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4-002F-8e25f245eaef92cc" {
  action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-lift-okta-integration/d05431a8b3ba7a8b"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/okta/*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4_id}"
  priority     = "8"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4-002F-a5826868a501da4f" {
  action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-token-tracker/0947b4475199378f"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/token-tracker*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4_id}"
  priority     = "16"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4-002F-aa8fdc6cc7783f0b" {
  action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-file-api/ee4b23723bdd5921"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/lift/*/files*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4_id}"
  priority     = "12"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4-002F-ba0eae3b2fcf0be3" {
  action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-ngrp-proxy/94b6312540d246cd"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/lift/*/ngrp*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-1f54e68e8b044ee4_id}"
  priority     = "5"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-player-002F-64deb6688dcdede5-002F-f41757a54e816ee7-002F-8caa347f1852494e" {
  action {
    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-api/f5dbfe1f63b38a72"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api/lift/system/services/tunnels"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-player-002F-64deb6688dcdede5-002F-f41757a54e816ee7_id}"
  priority     = "1"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-portal-002F-d8b10a6a47bdf009-002F-dc4e7296b3a2839a-002F-ce67170e0ad08b7e" {
  action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/portal-api/8ea1ae48186cc8f6"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/api*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-portal-002F-d8b10a6a47bdf009-002F-dc4e7296b3a2839a_id}"
  priority     = "2"
}

resource "aws_lb_listener_rule" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-rule-002F-app-002F-reports-alb-002F-665b406fa4523ce1-002F-2ac8919a971f4376-002F-6ddfe24d35f6fc70" {
  action {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/reports-tg/37a350e196028e23"
    type             = "forward"
  }

  condition {
    path_pattern {
      values = ["/reports*"]
    }
  }

  listener_arn = "${data.terraform_remote_state.alb.outputs.aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-799611636099-003A-listener-002F-app-002F-reports-alb-002F-665b406fa4523ce1-002F-2ac8919a971f4376_id}"
  priority     = "1"
}
