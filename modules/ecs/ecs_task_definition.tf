resource "aws_ecs_task_definition" "tfer--task-definition-002F-ngrp-orchestrator-fargate-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/ngrp-orchestrator-prod:09d2628\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/ngrp-orchestrator/fargate\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/ngrp-orchestrator/fargate\"},\"secretOptions\":[]},\"memory\":2048,\"mountPoints\":[],\"name\":\"ngrp-orchestrator-fargate-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/role-ngrp-orchestrator-fargate-task-role"
  family                   = "ngrp-orchestrator-fargate-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/role-ngrp-orchestrator-fargate-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-player-api-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/player-api:7000bf0\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/player/api\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/player/api\"}},\"memory\":2048,\"mountPoints\":[],\"name\":\"player-api-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-player-api-task-role"
  family                   = "player-api-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-player-api-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-player-event-api-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/player-event-api:57a8a43\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/player/event-api\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/player/event-api\"},\"secretOptions\":[]},\"memory\":2048,\"mountPoints\":[],\"name\":\"player-event-api-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-player-event-api-task-role"
  family                   = "player-event-api-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-player-event-api-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-player-file-api-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/player-file-api:fa35bda\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/player/file-api\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/player/file-api\"},\"secretOptions\":[]},\"memory\":2048,\"mountPoints\":[],\"name\":\"player-file-api-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-player-file-api-task-role"
  family                   = "player-file-api-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-player-file-api-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-player-lift-okta-integration-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/lift-okta-integration:a52553a\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/player/lift-okta-integration\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/player/lift-okta-integration\"},\"secretOptions\":[]},\"memory\":2048,\"mountPoints\":[],\"name\":\"player-lift-okta-integration-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-player-lift-okta-integration-task-role"
  family                   = "player-lift-okta-integration-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-player-lift-okta-integration-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-player-loyalty-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/loyalty:1c67cd4\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/player/loyalty\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/player/loyalty\"},\"secretOptions\":[]},\"memory\":2048,\"mountPoints\":[],\"name\":\"player-loyalty-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-player-loyalty-task-role"
  family                   = "player-loyalty-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-player-loyalty-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-player-ngrp-proxy-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/player-ngrp-proxy:157bd25\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/player/ngrp-proxy\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/player/ngrp-proxy\"},\"secretOptions\":[]},\"memory\":2048,\"mountPoints\":[],\"name\":\"player-ngrp-proxy-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-player-ngrp-proxy-task-role"
  family                   = "player-ngrp-proxy-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-player-ngrp-proxy-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-player-pricebook-indexer-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/pricebook-indexer:f501dae\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/player/pricebook-indexer\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/player/pricebook-indexer\"},\"secretOptions\":[]},\"memory\":4096,\"mountPoints\":[],\"name\":\"player-pricebook-indexer-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-player-pricebook-indexer-task-role"
  family                   = "player-pricebook-indexer-task"
  memory                   = "4096"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-player-pricebook-indexer-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-player-punchcard-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"environmentFiles\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/player-punchcard:eb2029b\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/player/punchcard\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/player/punchcard\"},\"secretOptions\":[]},\"memory\":2048,\"mountPoints\":[],\"name\":\"player-punchcard-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-player-punchcard-task-role"
  family                   = "player-punchcard-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-player-punchcard-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-player-token-tracker-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/token-tracker:9961995\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/player/token-tracker\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/player/token-tracker\"},\"secretOptions\":[]},\"memory\":2048,\"mountPoints\":[],\"name\":\"player-token-tracker-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-player-token-tracker-task-role"
  family                   = "player-token-tracker-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-player-token-tracker-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-portal-api-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/portal-api:b63098d\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/portal/api\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/portal/api\"}},\"memory\":2048,\"mountPoints\":[],\"name\":\"portal-api-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-portal-api-task-role"
  family                   = "portal-api-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-portal-api-task-role"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-reports-task" {
  container_definitions    = "[{\"command\":[],\"cpu\":1024,\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"799611636099.dkr.ecr.us-east-1.amazonaws.com/reports:edc7211\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/reports\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"/ecs/reports\"},\"secretOptions\":[]},\"memory\":2048,\"mountPoints\":[],\"name\":\"reports-container\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[],\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::799611636099:role/cirk-reports-task-role"
  family                   = "reports-task"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  task_role_arn            = "arn:aws:iam::799611636099:role/cirk-reports-task-role"
}
