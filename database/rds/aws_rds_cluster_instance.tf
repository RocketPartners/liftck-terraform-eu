resource "aws_rds_cluster_instance" "tfer--cirk-prod" {
  identifier                            = "cirk-prod"
  cluster_identifier = aws_rds_cluster.tfer--cirk-prod.id
  engine             = aws_rds_cluster.tfer--cirk-prod.engine
  engine_version     = aws_rds_cluster.tfer--cirk-prod.engine_version
  availability_zone                     = "${var.region}b"
  #preferred_backup_window                         = "03:21-03:51"
  ca_cert_identifier                    = "rds-ca-2019"
  copy_tags_to_snapshot                 = "false"
  db_subnet_group_name                  = aws_db_subnet_group.tfer--cirk-prod-subnet-group.name
  instance_class                        = "db.r5.4xlarge"
  preferred_maintenance_window                    = "sun:11:05-sun:11:35"
  monitoring_interval                   = "60"
  monitoring_role_arn                   = var.iam_rds_monitoring #"arn:aws:iam::799611636099:role/rds-monitoring-role"
  db_parameter_group_name                  = "default.aurora-mysql5.7"
  performance_insights_enabled          = "false"
  #performance_insights_retention_period = "0"
  publicly_accessible                   = "false"
}

resource "aws_rds_cluster_instance" "tfer--cirk-prod-us-eu-west-1a" {
  identifier                            = "cirk-prod-${var.region}a"
  cluster_identifier = aws_rds_cluster.tfer--cirk-prod.id
  engine             = aws_rds_cluster.tfer--cirk-prod.engine
  engine_version     = aws_rds_cluster.tfer--cirk-prod.engine_version
  availability_zone                     = "${var.region}a"
  #preferred_backup_window                         = "03:21-03:51"
  ca_cert_identifier                    = "rds-ca-2019"
  copy_tags_to_snapshot                 = "false"
  db_subnet_group_name                  = aws_db_subnet_group.tfer--cirk-prod-subnet-group.name
  instance_class                        = "db.r5.4xlarge"
  preferred_maintenance_window                    = "sun:11:05-sun:11:35"
  monitoring_interval                   = "60"
  monitoring_role_arn                   = var.iam_rds_monitoring #"arn:aws:iam::799611636099:role/rds-monitoring-role"
  db_parameter_group_name                  = "default.aurora-mysql5.7"
  performance_insights_enabled          = "false"
  #performance_insights_retention_period = "0"
  publicly_accessible                   = "false"
}

resource "aws_rds_cluster_instance" "tfer--cirk-services" {
  identifier                            = "cirk-services"
  cluster_identifier = aws_rds_cluster.tfer--cirk-services.id
  engine             = aws_rds_cluster.tfer--cirk-services.engine
  engine_version     = aws_rds_cluster.tfer--cirk-services.engine_version
  availability_zone                     = "${var.region}b"
  #preferred_backup_window                         = "03:48-04:18"
  ca_cert_identifier                    = "rds-ca-2019"
  copy_tags_to_snapshot                 = "false"
  db_subnet_group_name                  = aws_db_subnet_group.tfer--cirk-prod-subnet-group.name
  instance_class                        = "db.r5.4xlarge"
  preferred_maintenance_window                    = "mon:09:52-mon:10:22"
  monitoring_interval                   = "60"
  monitoring_role_arn                   = var.iam_rds_monitoring #"arn:aws:iam::799611636099:role/rds-monitoring-role"
  db_parameter_group_name                  = "default.aurora-mysql5.7"
  performance_insights_enabled          = "false"
  #performance_insights_retention_period = "0"
  publicly_accessible                   = "false"
}

resource "aws_rds_cluster_instance" "tfer--cirk-services-eu-west-1a" {
  identifier                            = "cirk-services-${var.region}a"
  cluster_identifier = aws_rds_cluster.tfer--cirk-services.id
  engine             = aws_rds_cluster.tfer--cirk-services.engine
  engine_version     = aws_rds_cluster.tfer--cirk-services.engine_version
  availability_zone                     = "${var.region}b"
  #preferred_backup_window                         = "03:48-04:18"
  ca_cert_identifier                    = "rds-ca-2019"
  copy_tags_to_snapshot                 = "false"
  db_subnet_group_name                  = aws_db_subnet_group.tfer--cirk-prod-subnet-group.name
  instance_class                        = "db.r5.4xlarge"
  preferred_maintenance_window                    = "thu:07:43-thu:08:13"
  monitoring_interval                   = "60"
  monitoring_role_arn                   = var.iam_rds_monitoring #"arn:aws:iam::799611636099:role/rds-monitoring-role"
  db_parameter_group_name                  = "default.aurora-mysql5.7"
  performance_insights_enabled          = "false"
  #performance_insights_retention_period = "0"
  publicly_accessible                   = "false"
}
