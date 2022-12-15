output "aws_elasticache_cluster_tfer--gen2-redis_id" {
  value = "${aws_elasticache_cluster.tfer--gen2-redis.id}"
}

output "aws_elasticache_subnet_group_tfer--gen2-redis-subnet_id" {
  value = "${aws_elasticache_subnet_group.tfer--gen2-redis-subnet.id}"
}
