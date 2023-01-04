resource "aws_redshift_cluster_iam_roles" "redshift-cluster-1" {
  cluster_identifier = aws_redshift_cluster.redshift-cluster-1.cluster_identifier
  iam_role_arns      = [var.cross-account-s3-to-redshift_role, var.redshiftCopydev_role, var.redshiftdev-altria_role, var.redshiftdev-s3-dump-access_role, var.redshiftdev-unload-bucket-tobacco_role, var.redshiftdev-unload-s3-buckets_role]
}