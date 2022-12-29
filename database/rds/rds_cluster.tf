resource "aws_rds_cluster" "tfer--cirk-prod" {
  #allocated_storage                   = "1"
  availability_zones                  = ["${var.region}a", "${var.region}b",]
  backtrack_window                    = "0"
  backup_retention_period             = "7"
  cluster_identifier                  = "cirk-prod"
  cluster_members                     = ["cirk-prod", "cirk-prod-${var.region}a"]
  copy_tags_to_snapshot               = "true"
  db_cluster_parameter_group_name     = "cirk-prod-cluster-mysql57"
  db_subnet_group_name                = aws_db_subnet_group.tfer--cirk-prod-subnet-group.name
  deletion_protection                 = "true"
  enable_http_endpoint                = "false"
  enabled_cloudwatch_logs_exports     = ["error"]
  engine                              = "aurora-mysql"
  engine_mode                         = "provisioned"
  engine_version                      = "5.7.mysql_aurora.2.10.2"
  iam_database_authentication_enabled = "false"
  iam_roles                           = [var.iam_rds] #["arn:aws:iam::799611636099:role/cirk-rds-role"]
  #iops                                = "0"
  master_username                     = "cirkadmin"
  master_password                     = var.master_password
  network_type                        = "IPV4"
  port                                = "3306"
  preferred_backup_window             = "03:21-03:51"
  preferred_maintenance_window        = "sun:11:05-sun:11:35"
  storage_encrypted                   = "false"
  vpc_security_group_ids              = [var.sg_rds]
}

/*resource "aws_rds_cluster" "tfer--cirk-prod-david-recover-cluster" {
  allocated_storage                   = "1"
  availability_zones                  = ["us-east-1a", "us-east-1b", "us-east-1d"]
  backtrack_window                    = "0"
  backup_retention_period             = "7"
  cluster_identifier                  = "cirk-prod-david-recover-cluster"
  copy_tags_to_snapshot               = "false"
  db_cluster_parameter_group_name     = "cirk-prod-cluster-mysql57"
  db_subnet_group_name                = "${aws_db_subnet_group.tfer--cirk-prod-subnet-group.name}"
  deletion_protection                 = "false"
  enable_http_endpoint                = "false"
  engine                              = "aurora-mysql"
  engine_mode                         = "provisioned"
  engine_version                      = "5.7.mysql_aurora.2.07.2"
  iam_database_authentication_enabled = "false"
  iops                                = "0"
  master_username                     = "cirkadmin"
  network_type                        = "IPV4"
  port                                = "3306"
  preferred_backup_window             = "03:21-03:51"
  preferred_maintenance_window        = "sun:11:05-sun:11:35"
  storage_encrypted                   = "false"
  vpc_security_group_ids              = ["sg-0c35a4474b18863d5"]
}*/

resource "aws_rds_cluster" "tfer--cirk-services" {
  #allocated_storage                   = "1"
  availability_zones                  = ["${var.region}a", "${var.region}b",]
  backtrack_window                    = "0"
  backup_retention_period             = "7"
  cluster_identifier                  = "cirk-services"
  cluster_members                     = ["cirk-services", "cirk-services-${var.region}a"]
  copy_tags_to_snapshot               = "true"
  database_name                       = "cirk_services"
  db_cluster_parameter_group_name     = "cirk-services-cluster-mysql57"
  db_subnet_group_name                = aws_db_subnet_group.tfer--cirk-prod-subnet-group.name
  deletion_protection                 = "true"
  enable_http_endpoint                = "false"
  enabled_cloudwatch_logs_exports     = ["error"]
  engine                              = "aurora-mysql"
  engine_mode                         = "provisioned"
  engine_version                      = "5.7.mysql_aurora.2.10.2"
  iam_database_authentication_enabled = "false"
  #iops                                = "0"
  master_username                     = "cirkadmin"
  master_password                     = var.master_password
  network_type                        = "IPV4"
  port                                = "3306"
  preferred_backup_window             = "03:48-04:18"
  preferred_maintenance_window        = "sun:11:20-sun:11:50"
  storage_encrypted                   = "false"
  vpc_security_group_ids              = [var.sg_rds_services]
}
