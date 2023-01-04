resource "aws_redshift_cluster" "redshift-cluster-1" {
  availability_zone = "${var.region}a"
  availability_zone_relocation_enabled = false
  cluster_identifier = "redshift-cluster-1"
  allow_version_upgrade = true
  cluster_parameter_group_name = "default.redshift-1.0"
  cluster_subnet_group_name = aws_redshift_subnet_group.redshiftdev-cluster-1.name
  cluster_type = "multi-node"
  cluster_version = "1.0"
  database_name = "warehouse"
  enhanced_vpc_routing = true
  iam_roles = ["arn:aws:iam::${var.account_number}:role/RedshiftCopydev",
    "arn:aws:iam::${var.account_number}:role/cross-account-s3-to-redshift-role",
    "arn:aws:iam::${var.account_number}:role/redshiftdev-altria-role",
    "arn:aws:iam::${var.account_number}:role/redshiftdev-s3-dump-access",
    "arn:aws:iam::${var.account_number}:role/redshiftdev-unload-bucket-tobacco",
    "arn:aws:iam::${var.account_number}:role/redshiftdev-unload-s3-buckets",]
  master_username = "liftadmin"
  node_type = "ra3.4xlarge"
  number_of_nodes = "3"
  preferred_maintenance_window = "mon:08:00-mon:08:30"
  skip_final_snapshot = true
  vpc_security_group_ids = [var.sg_redshift]
  master_password    = var.db_password
}