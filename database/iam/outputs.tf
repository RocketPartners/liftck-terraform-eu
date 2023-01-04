output "aws_iam_role_tfer--rds-dev-monitoring-role_arn" {
  value = "${aws_iam_role.tfer--rds-dev-monitoring-role.arn}"
}

output "aws_iam_role_tfer--cirkdev-rds-role_arn" {
  value = "${aws_iam_role.tfer--cirkdev-rds-role.arn}"
}

output "aws_iam_policy_tfer--cirkdev-rds-invoke-lambda_arn" {
  value = "${aws_iam_policy.tfer--cirkdev-rds-invoke-lambda.arn}"
}
