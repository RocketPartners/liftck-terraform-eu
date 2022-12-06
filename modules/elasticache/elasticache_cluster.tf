resource "aws_elasticache_cluster" "tfer--gen2-redis" {
  auto_minor_version_upgrade = "true"
  availability_zone          = "us-east-1a"
  az_mode                    = "single-az"
  cluster_id                 = "gen2-redis"
  engine                     = "redis"
  engine_version             = "5.0.3"
  ip_discovery               = "ipv4"
  maintenance_window         = "sun:08:00-sun:09:00"
  network_type               = "ipv4"
  node_type                  = "cache.m5.xlarge"
  num_cache_nodes            = "1"
  parameter_group_name       = "default.redis5.0"
  port                       = "6379"
  security_group_ids         = ["sg-0971f73c233e409e7"]
  snapshot_retention_limit   = "1"
  snapshot_window            = "00:00-01:00"
  subnet_group_name          = "${aws_elasticache_subnet_group.tfer--gen2-redis-subnet.name}"
}
