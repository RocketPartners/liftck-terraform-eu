resource "aws_docdb_cluster_parameter_group" "tfer--cirk-prod-cluster-mysql57" {
  description = "parameter group for cirk dev cluster"
  family      = "aurora-mysql5.7"
  name        = "cirk-prod-cluster-mysql57"

  parameter {
    apply_method = "immediate"
    name         = "aws_default_lambda_role"
    value        = "arn:aws:iam::799611636099:role/cirk-rds-role"
  }
}

resource "aws_docdb_cluster_parameter_group" "tfer--cirk-services-cluster-mysql57" {
  description = "Parameter group for cirk services MySql 5.7"
  family      = "aurora-mysql5.7"
  name        = "cirk-services-cluster-mysql57"

  parameter {
    apply_method = "immediate"
    name         = "aws_default_lambda_role"
    value        = "arn:aws:iam::799611636099:role/cirk-rds-role"
  }
}

resource "aws_docdb_cluster_parameter_group" "tfer--default-002E-aurora-mysql5-002E-7" {
  description = "Default cluster parameter group for aurora-mysql5.7"
  family      = "aurora-mysql5.7"
  name        = "default.aurora-mysql5.7"
}

resource "aws_docdb_cluster_parameter_group" "tfer--default-002E-aurora5-002E-6" {
  description = "Default cluster parameter group for aurora5.6"
  family      = "aurora5.6"
  name        = "default.aurora5.6"
}
