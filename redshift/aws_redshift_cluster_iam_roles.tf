resource "aws_redshift_cluster_iam_roles" "redshift-cluster-1" {
  cluster_identifier = aws_redshift_cluster.redshift-cluster-1.cluster_identifier
  iam_role_arns      = [aws_iam_role.tfer--redshiftdev-unload-bucket-tobacco.arn,
    aws_iam_role.tfer--redshiftdev-unload-bucket-tobacco.arn,
    aws_iam_role.tfer--redshiftdev-s3-dump-access.arn,
    aws_iam_role.tfer--cross-account-s3-to-redshift-role.arn,
    aws_iam_role.tfer--redshiftdev-altria-role.arn,
    aws_iam_role.tfer--RedshiftCopydev.arn,]
}