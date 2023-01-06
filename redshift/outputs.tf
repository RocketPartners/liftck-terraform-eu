output "redshift_endpoint" {
  value = aws_redshift_cluster.redshift-cluster-1.endpoint
}

output "redshift_database_name" {
  value = aws_redshift_cluster.redshift-cluster-1.database_name
}

output "redshift_sg" {
  value = aws_security_group.tfer--redshiftdev-cluster-1-sg_sg-0abf449eb49a6fab9.id
}