resource "aws_ecs_cluster" "tfer--player" {
  name = "player"
}

resource "aws_ecs_cluster" "tfer--portal" {
  name = "portal"
}

resource "aws_ecs_cluster" "tfer--reports" {
  name = "reports"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}
