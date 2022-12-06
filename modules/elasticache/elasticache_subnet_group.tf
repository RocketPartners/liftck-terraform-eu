resource "aws_elasticache_subnet_group" "tfer--gen2-redis-subnet" {
  description = " "
  name        = "gen2-redis-subnet"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07d6918830b6abd48_id}"]
}
