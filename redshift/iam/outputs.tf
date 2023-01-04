output "tfer--RedshiftCopydev" {
  value = aws_iam_role.tfer--RedshiftCopydev.arn
}

output "tfer--cross-account-s3-to-redshift-role" {
  value = aws_iam_role.tfer--cross-account-s3-to-redshift-role.arn
}

output "tfer--redshiftdev-altria-role" {
  value = aws_iam_role.tfer--redshiftdev-altria-role.arn
}

output "tfer--redshiftdev-s3-dump-access" {
  value = aws_iam_role.tfer--redshiftdev-s3-dump-access.arn
}

output "tfer--redshiftdev-unload-bucket-tobacco" {
  value = aws_iam_role.tfer--redshiftdev-unload-bucket-tobacco.arn
}

output "tfer--redshiftdev-unload-s3-buckets" {
  value = aws_iam_role.tfer--redshiftdev-unload-s3-buckets.arn
}