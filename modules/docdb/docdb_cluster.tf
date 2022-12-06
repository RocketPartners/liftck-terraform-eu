resource "aws_docdb_cluster" "tfer--cirk-prod" {
  availability_zones              = ["us-east-1a", "us-east-1b", "us-east-1d"]
  backup_retention_period         = "7"
  cluster_identifier              = "cirk-prod"
  cluster_members                 = ["cirk-prod", "cirk-prod-us-east-1a"]
  db_cluster_parameter_group_name = "cirk-prod-cluster-mysql57"
  db_subnet_group_name            = "cirk-prod-subnet-group"
  deletion_protection             = "true"
  enabled_cloudwatch_logs_exports = ["error"]
  engine                          = "aurora-mysql"
  engine_version                  = "5.7.mysql_aurora.2.10.2"
  master_username                 = "cirkadmin"
  port                            = "3306"
  preferred_backup_window         = "03:21-03:51"
  preferred_maintenance_window    = "sun:11:05-sun:11:35"
  storage_encrypted               = "false"
  vpc_security_group_ids          = ["sg-0c35a4474b18863d5"]
}

resource "aws_docdb_cluster" "tfer--cirk-prod-david-recover-cluster" {
  availability_zones              = ["us-east-1a", "us-east-1b", "us-east-1d"]
  backup_retention_period         = "7"
  cluster_identifier              = "cirk-prod-david-recover-cluster"
  db_cluster_parameter_group_name = "cirk-prod-cluster-mysql57"
  db_subnet_group_name            = "cirk-prod-subnet-group"
  deletion_protection             = "false"
  engine                          = "aurora-mysql"
  engine_version                  = "5.7.mysql_aurora.2.07.2"
  master_username                 = "cirkadmin"
  port                            = "3306"
  preferred_backup_window         = "03:21-03:51"
  preferred_maintenance_window    = "sun:11:05-sun:11:35"
  storage_encrypted               = "false"
  vpc_security_group_ids          = ["sg-0c35a4474b18863d5"]
}

resource "aws_docdb_cluster" "tfer--cirk-services" {
  availability_zones              = ["us-east-1a", "us-east-1b", "us-east-1e"]
  backup_retention_period         = "7"
  cluster_identifier              = "cirk-services"
  cluster_members                 = ["cirk-services", "cirk-services-us-east-1a"]
  db_cluster_parameter_group_name = "cirk-services-cluster-mysql57"
  db_subnet_group_name            = "cirk-prod-subnet-group"
  deletion_protection             = "true"
  enabled_cloudwatch_logs_exports = ["error"]
  engine                          = "aurora-mysql"
  engine_version                  = "5.7.mysql_aurora.2.10.2"
  master_username                 = "cirkadmin"
  port                            = "3306"
  preferred_backup_window         = "03:48-04:18"
  preferred_maintenance_window    = "sun:11:20-sun:11:50"
  storage_encrypted               = "false"
  vpc_security_group_ids          = ["sg-019e0d7419c048856"]
}
