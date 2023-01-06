resource "aws_iam_role" "tfer--rds-dev-monitoring-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "monitoring.rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  max_session_duration = "3600"
  name                 = "rds-dev-monitoring-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirkdev-rds-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows you to grant RDS access to additional resources on your behalf."
  managed_policy_arns  = [aws_iam_policy.tfer--cirkdev-rds-invoke-lambda.arn]
  max_session_duration = "3600"
  name                 = "cirkdev-rds-role"
  path                 = "/"
}