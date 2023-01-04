resource "aws_rds_cluster_parameter_group" "cirk-prod-cluster-mysql57" {
  name        = "cirk-prod-cluster-mysql57"
  family      = "aurora-mysql5.7"
  description = "parameter group for cirk dev cluster"

  parameter {
    name  = "aws_default_lambda_role"
    value = "arn:aws:iam::${var.account_number}:role/cirkdev-rds-role"
    apply_method = "immediate"
  }

  parameter {
    name  = "max_allowed_packet"
    value = "31457280"
    apply_method = "immediate"
  }
}

resource "aws_rds_cluster_parameter_group" "cirk-services-cluster-mysql57" {
  name        = "cirk-services-cluster-mysql57"
  family      = "aurora-mysql5.7"
  description = "Parameter group for cirk services MySql 5.7"

  parameter {
    name  = "aws_default_lambda_role"
    value = "arn:aws:iam::${var.account_number}:role/cirkdev-rds-role"
    apply_method = "immediate"
  }

  parameter {
    name  = "max_allowed_packet"
    value = "31457280"
    apply_method = "immediate"
  }
}
