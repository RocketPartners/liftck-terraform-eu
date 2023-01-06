/*
output "aws_db_instance_tfer--cirk-prod-us-east-1a_id" {
  value = "${aws_db_instance.tfer--cirk-prod-us-east-1a.id}"
}

output "aws_db_instance_tfer--cirk-prod_id" {
  value = "${aws_db_instance.tfer--cirk-prod.id}"
}

output "aws_db_instance_tfer--cirk-services-us-east-1a_id" {
  value = "${aws_db_instance.tfer--cirk-services-us-east-1a.id}"
}

output "aws_db_instance_tfer--cirk-services_id" {
  value = "${aws_db_instance.tfer--cirk-services.id}"
}
*/

output "aws_rds_cluster_instance--tfer--cirk-prod" {
  value = aws_rds_cluster_instance.tfer--cirk-prod.id
}

output "aws_rds_cluster_instance_tfer--tfer--cirk-prod-us-eu-west-1a" {
  value = aws_rds_cluster_instance.tfer--cirk-prod-us-eu-west-1a.id
}

output "aws_rds_cluster_instance_tfer--cirk-services" {
  value = aws_rds_cluster_instance.tfer--cirk-services.id
}

output "aws_rds_cluster_instance_tfer--cirk-services-eu-west-1a" {
  value = aws_rds_cluster_instance.tfer--cirk-services-eu-west-1a.id
}

output "aws_db_subnet_group_tfer--default-vpc-072a71590b8c6a80c_id" {
  value = "${aws_db_subnet_group.tfer--default-vpc-072a71590b8c6a80c.id}"
}

/*output "aws_db_subnet_group_tfer--default_id" {
  value = "${aws_db_subnet_group.tfer--default.id}"
}

output "aws_rds_cluster_tfer--cirk-prod-david-recover-cluster_id" {
  value = "${aws_rds_cluster.tfer--cirk-prod-david-recover-cluster.id}"
}*/

output "aws_rds_cluster_tfer--cirk-prod_id" {
  value = "${aws_rds_cluster.tfer--cirk-prod.id}"
}

output "aws_rds_cluster_tfer--cirk-services_id" {
  value = "${aws_rds_cluster.tfer--cirk-services.id}"
}
