resource "aws_ecs_service" "tfer--player_api" {
  cluster = "player"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "12"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "120"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "player-api-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-api/f5dbfe1f63b38a72"
  }

  name = "api"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-032d29010900e1c66"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/player-api-task:154"
}

resource "aws_ecs_service" "tfer--player_event-api" {
  cluster = "player"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "5"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "120"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "player-event-api-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-event-api/9b2c3405837b5302"
  }

  name = "event-api"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-063f9e6e2b18ed441"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/player-event-api-task:68"
}

resource "aws_ecs_service" "tfer--player_file-api" {
  cluster = "player"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "4"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "120"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "player-file-api-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-file-api/ee4b23723bdd5921"
  }

  name = "file-api"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-074e54a972387bb95"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/player-file-api-task:48"
}

resource "aws_ecs_service" "tfer--player_lift-okta-integration" {
  cluster = "player"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "4"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "60"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "player-lift-okta-integration-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-lift-okta-integration/d05431a8b3ba7a8b"
  }

  name = "lift-okta-integration"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-019e4241039743f1e"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/player-lift-okta-integration-task:24"
}

resource "aws_ecs_service" "tfer--player_loyalty" {
  cluster = "player"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "2"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "120"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "player-loyalty-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-loyalty/6158536458850381"
  }

  name = "loyalty"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-09e521b99ed8a0d58"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/player-loyalty-task:17"
}

resource "aws_ecs_service" "tfer--player_ngrp-proxy" {
  cluster = "player"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "3"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "120"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "player-ngrp-proxy-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-ngrp-proxy/94b6312540d246cd"
  }

  name = "ngrp-proxy"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-0902cedd5f90b83aa"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/player-ngrp-proxy-task:47"
}

resource "aws_ecs_service" "tfer--player_pricebook-indexer" {
  cluster = "player"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "FARGATE"
  name                               = "pricebook-indexer"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-0050e870b9c645858"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/player-pricebook-indexer-task:88"
}

resource "aws_ecs_service" "tfer--player_punchcard" {
  cluster = "player"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "2"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "120"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "player-punchcard-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-punchcard/47775e316b3363bf"
  }

  name = "punchcard"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-0a20177346b77f28b"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/player-punchcard-task:47"
}

resource "aws_ecs_service" "tfer--player_token-tracker" {
  cluster = "player"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "2"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "120"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "player-token-tracker-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-token-tracker/0947b4475199378f"
  }

  name = "token-tracker"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-03dde2bf264e99e63"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/player-token-tracker-task:5"
}

resource "aws_ecs_service" "tfer--portal_api" {
  cluster = "portal"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "3"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "120"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "portal-api-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/portal-api/8ea1ae48186cc8f6"
  }

  name = "api"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-09692131146ac5a26"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/portal-api-task:135"
}

resource "aws_ecs_service" "tfer--reports_reports-service" {
  cluster = "reports"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "2"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "240"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "reports-container"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/reports-tg/37a350e196028e23"
  }

  name = "reports-service"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["sg-00af07a43287c65ba"]
    subnets          = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0f592478c6198fa9e_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:us-east-1:799611636099:task-definition/reports-task:36"
}
