data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

resource "aws_redshift_cluster" "redshift-cluster-1" {
  availability_zone = "${data.aws_region.current.name}a"
  availability_zone_relocation_enabled = false
  cluster_identifier = "redshift-cluster-1"
  allow_version_upgrade = true
  cluster_parameter_group_name = "default.redshift-1.0"
  cluster_subnet_group_name = aws_redshift_subnet_group.redshiftdev-cluster-1.name
  cluster_type = "multi-node"
  cluster_version = "1.0"
  database_name = "warehouse"
  enhanced_vpc_routing = true
  iam_roles = [aws_iam_role.tfer--redshiftdev-unload-bucket-tobacco.arn,
    aws_iam_role.tfer--redshiftdev-unload-bucket-tobacco.arn,
    aws_iam_role.tfer--redshiftdev-s3-dump-access.arn,
    aws_iam_role.tfer--cross-account-s3-to-redshift-role.arn,
    aws_iam_role.tfer--redshiftdev-altria-role.arn,
    aws_iam_role.tfer--RedshiftCopydev.arn,]
  master_username = "liftadmin"
  node_type = "ra3.4xlarge"
  number_of_nodes = "3"
  preferred_maintenance_window = "mon:08:00-mon:08:30"
  skip_final_snapshot = true
  vpc_security_group_ids = [aws_security_group.tfer--redshiftdev-cluster-1-sg_sg-0abf449eb49a6fab9.id]
  master_password    = var.db_password
}