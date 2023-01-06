resource "aws_iam_role" "tfer--RedshiftCopydev" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = [aws_iam_policy.tfer--redshiftdev-write-to-s3-ck-data-lake-prod.arn, "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "RedshiftCopydev"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cross-account-s3-to-redshift-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = [aws_iam_policy.tfer--cross-account-s3-to-redshift.arn]
  max_session_duration = "3600"
  name                 = "cross-account-s3-to-redshift-role"
  path                 = "/"
}


resource "aws_iam_role" "tfer--redshiftdev-altria-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Role for the Altria reconcile script - github repo support_liftck Reconcile.java"

  inline_policy {
    name   = "s3-access"
    policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Statement\": [\n        {\n            \"Sid\": \"VisualEditor0\",\n            \"Effect\": \"Allow\",\n            \"Action\": [\n                \"s3:PutAnalyticsConfiguration\",\n                \"s3:GetObjectVersionTagging\",\n                \"s3:CreateBucket\",\n                \"s3:ReplicateObject\",\n                \"s3:GetObjectAcl\",\n                \"s3:DeleteBucketWebsite\",\n                \"s3:PutLifecycleConfiguration\",\n                \"s3:GetObjectVersionAcl\",\n                \"s3:PutObjectTagging\",\n                \"s3:DeleteObject\",\n                \"s3:DeleteObjectTagging\",\n                \"s3:GetBucketWebsite\",\n                \"s3:PutReplicationConfiguration\",\n                \"s3:DeleteObjectVersionTagging\",\n                \"s3:GetBucketNotification\",\n                \"s3:PutBucketCORS\",\n                \"s3:GetReplicationConfiguration\",\n                \"s3:ListMultipartUploadParts\",\n                \"s3:PutObject\",\n                \"s3:GetObject\",\n                \"s3:PutBucketNotification\",\n                \"s3:PutBucketLogging\",\n                \"s3:GetAnalyticsConfiguration\",\n                \"s3:GetObjectVersionForReplication\",\n                \"s3:GetLifecycleConfiguration\",\n                \"s3:GetInventoryConfiguration\",\n                \"s3:GetBucketTagging\",\n                \"s3:PutAccelerateConfiguration\",\n                \"s3:DeleteObjectVersion\",\n                \"s3:GetBucketLogging\",\n                \"s3:ListBucketVersions\",\n                \"s3:ReplicateTags\",\n                \"s3:RestoreObject\",\n                \"s3:ListBucket\",\n                \"s3:GetAccelerateConfiguration\",\n                \"s3:GetBucketPolicy\",\n                \"s3:GetObjectVersionTorrent\",\n                \"s3:AbortMultipartUpload\",\n                \"s3:PutBucketTagging\",\n                \"s3:GetBucketRequestPayment\",\n                \"s3:GetObjectTagging\",\n                \"s3:GetMetricsConfiguration\",\n                \"s3:DeleteBucket\",\n                \"s3:PutBucketVersioning\",\n                \"ec2:RebootInstances\",\n                \"s3:ListBucketMultipartUploads\",\n                \"s3:PutMetricsConfiguration\",\n                \"s3:PutObjectVersionTagging\",\n                \"s3:GetBucketVersioning\",\n                \"s3:GetBucketAcl\",\n                \"s3:PutInventoryConfiguration\",\n                \"s3:GetObjectTorrent\",\n                \"s3:PutBucketWebsite\",\n                \"s3:PutBucketRequestPayment\",\n                \"s3:GetBucketCORS\",\n                \"s3:GetBucketLocation\",\n                \"s3:ReplicateDelete\",\n                \"s3:GetObjectVersion\"\n            ],\n            \"Resource\": [\n\n                \"${aws_s3_bucket.tfer--ck-altria-files.arn}\",\n                \"${aws_s3_bucket.tfer--ck-altria-files.arn}/*\"\n              \n            ]\n        }\n    ]\n}"
  }

  max_session_duration = "3600"
  name                 = "redshiftdev-altria-role"
  path                 = "/"
}


resource "aws_iam_role" "tfer--redshiftdev-s3-dump-access" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = [aws_iam_policy.tfer--redshiftdev-write-to-s3-ck-data-lake-prod.arn, "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "redshiftdev-s3-dump-access"
  path                 = "/"
}


resource "aws_iam_role" "tfer--redshiftdev-unload-bucket-tobacco" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to unload for tobacco bucket"
  managed_policy_arns  = [aws_iam_policy.tfer--redshiftdev-unload-tobaco-bucket.arn]
  max_session_duration = "3600"
  name                 = "redshiftdev-unload-bucket-tobacco"
  path                 = "/"
}


resource "aws_iam_role" "tfer--redshiftdev-unload-s3-buckets" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "redshiftdev-unload-s3-buckets"
  path                 = "/"
}



