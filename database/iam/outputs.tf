output "aws_iam_role_tfer--rds-dev-monitoring-role_id" {
  value = "${aws_iam_role.tfer--rds-dev-monitoring-role.id}"
}

output "aws_iam_role_tfer--cirkdev-rds-role_id" {
  value = "${aws_iam_role.tfer--cirkdev-rds-role.id}"
}

output "aws_iam_policy_tfer--cirkdev-rds-invoke-lambda_id" {
  value = "${aws_iam_policy.tfer--cirkdev-rds-invoke-lambda.id}"
}
