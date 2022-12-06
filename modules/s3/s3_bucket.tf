resource "aws_s3_bucket" "tfer--age-verify-002E-circleklift-002E-com" {
  bucket        = "age-verify.circleklift.com"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::age-verify.circleklift.com/*",
      "Sid": "PublicReadGetObject"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "tfer--billing-costusagereport" {
  bucket        = "billing-costusagereport"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "Policy1335892530063",
  "Statement": [
    {
      "Action": [
        "s3:GetBucketAcl",
        "s3:GetBucketPolicy"
      ],
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "799611636099",
          "aws:SourceArn": "arn:aws:cur:us-east-1:799611636099:definition/*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "billingreports.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::billing-costusagereport",
      "Sid": "Stmt1335892150622"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "799611636099",
          "aws:SourceArn": "arn:aws:cur:us-east-1:799611636099:definition/*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "billingreports.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::billing-costusagereport/*",
      "Sid": "Stmt1335892526596"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--cf-templates-1dwgm5lki7r96-us-east-1" {
  bucket        = "cf-templates-1dwgm5lki7r96-us-east-1"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-dev-firehose" {
  bucket        = "circlek-dev-firehose"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-alb-logs" {
  bucket        = "circlek-prod-alb-logs"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "AWSConsole-AccessLogs-Policy-1614109156743",
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::127311923021:root"
      },
      "Resource": "arn:aws:s3:::circlek-prod-alb-logs/player/AWSLogs/799611636099/*",
      "Sid": "AWSConsoleStmt-1614109156743"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "delivery.logs.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::circlek-prod-alb-logs/player/AWSLogs/799611636099/*",
      "Sid": "AWSLogDeliveryWrite"
    },
    {
      "Action": "s3:GetBucketAcl",
      "Effect": "Allow",
      "Principal": {
        "Service": "delivery.logs.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::circlek-prod-alb-logs",
      "Sid": "AWSLogDeliveryAclCheck"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "ArnLike": {
          "aws:SourceArn": "arn:aws:logs:us-east-1:799611636099:*"
        },
        "StringEquals": {
          "aws:SourceAccount": "799611636099",
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "delivery.logs.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::circlek-prod-alb-logs/VPC_LOGS/AWSLogs/799611636099/*",
      "Sid": "AWSLogDeliveryWrite2"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-bi-reports" {
  bucket        = "circlek-prod-bi-reports"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-cloudformation-builds" {
  bucket        = "circlek-prod-cloudformation-builds"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-codepipeline-artifacts" {
  bucket        = "circlek-prod-codepipeline-artifacts"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-data-integration" {
  bucket        = "circlek-prod-data-integration"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-etl" {
  bucket        = "circlek-prod-etl"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-etl2" {
  bucket        = "circlek-prod-etl2"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-firehose" {
  bucket        = "circlek-prod-firehose"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-nlb-alb-ip-updater" {
  bucket        = "circlek-prod-nlb-alb-ip-updater"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-portal-packages" {
  bucket        = "circlek-prod-portal-packages"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-portal-webapp" {
  bucket        = "circlek-prod-portal-webapp"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:s3:::circlek-prod-portal-webapp/*",
      "Sid": "AllowPublicRead"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-registration-webapp" {
  bucket        = "circlek-prod-registration-webapp"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:s3:::circlek-prod-registration-webapp/*",
      "Sid": "AllowPublicRead"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-serverless-builds" {
  bucket        = "circlek-prod-serverless-builds"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlek-prod-sms-opt-in" {
  bucket        = "circlek-prod-sms-opt-in"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--circlekoffers-002E-com" {
  bucket        = "circlekoffers.com"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:s3:::circlekoffers.com/*",
      "Sid": "AllowPublicRead"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    index_document = "index.html"
    routing_rules  = "[{\"Condition\":{\"KeyPrefixEquals\":\"innercircle/enrollment/\"},\"Redirect\":{\"HostName\":\"inner-circle.circlekoffers.com\",\"HttpRedirectCode\":\"301\",\"Protocol\":\"https\",\"ReplaceKeyPrefixWith\":\"enrollment\"}},{\"Condition\":{\"KeyPrefixEquals\":\"innercircle/enrollment\"},\"Redirect\":{\"HostName\":\"inner-circle.circlekoffers.com\",\"HttpRedirectCode\":\"301\",\"Protocol\":\"https\",\"ReplaceKeyPrefixWith\":\"enrollment\"}},{\"Condition\":{\"KeyPrefixEquals\":\"innercircle/\"},\"Redirect\":{\"HostName\":\"inner-circle.circlekoffers.com\",\"HttpRedirectCode\":\"301\",\"Protocol\":\"https\",\"ReplaceKeyPrefixWith\":\"\"}},{\"Condition\":{\"KeyPrefixEquals\":\"innercircle\"},\"Redirect\":{\"HostName\":\"inner-circle.circlekoffers.com\",\"HttpRedirectCode\":\"301\",\"Protocol\":\"https\",\"ReplaceKeyPrefixWith\":\"\"}}]"
  }
}

resource "aws_s3_bucket" "tfer--ck-altria-files" {
  bucket        = "ck-altria-files"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ck-data-lake-prod" {
  bucket        = "ck-data-lake-prod"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ck-dynamodb-backups" {
  bucket        = "ck-dynamodb-backups"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ck-indexer-ec2" {
  bucket        = "ck-indexer-ec2"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ck-marketing-to-prod" {
  bucket        = "ck-marketing-to-prod"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ck-prod-data-migration" {
  bucket        = "ck-prod-data-migration"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "",
  "Statement": [
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": [
          "arn:aws:iam::713044078609:role/DataPipelineDefaultRole",
          "arn:aws:iam::713044078609:role/DataPipelineDefaultResourceRole"
        ]
      },
      "Resource": [
        "arn:aws:s3:::ck-prod-data-migration",
        "arn:aws:s3:::ck-prod-data-migration/*"
      ],
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--codepipeline-us-east-1-70041573072" {
  bucket        = "codepipeline-us-east-1-70041573072"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "SSEAndSSLPolicy",
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringNotEquals": {
          "s3:x-amz-server-side-encryption": "aws:kms"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": "arn:aws:s3:::codepipeline-us-east-1-70041573072/*",
      "Sid": "DenyUnEncryptedObjectUploads"
    },
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": "arn:aws:s3:::codepipeline-us-east-1-70041573072/*",
      "Sid": "DenyInsecureConnections"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--config-bucket-799611636099" {
  bucket        = "config-bucket-799611636099"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetBucketAcl",
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::config-bucket-799611636099",
      "Sid": "AWSConfigBucketPermissionsCheck"
    },
    {
      "Action": "s3:ListBucket",
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::config-bucket-799611636099",
      "Sid": "AWSConfigBucketExistenceCheck"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::config-bucket-799611636099/AWSLogs/799611636099/Config/*",
      "Sid": "AWSConfigBucketDelivery"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--cors-proxy-prod-serverlessdeploymentbucket-1v50n1fot9g7m" {
  bucket        = "cors-proxy-prod-serverlessdeploymentbucket-1v50n1fot9g7m"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--files-002E-circleklift-002E-com" {
  bucket        = "files.circleklift.com"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::799611636099:root"
      },
      "Resource": "arn:aws:s3:::files.circleklift.com/*",
      "Sid": "Allow the AWS account full access"
    },
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "NotPrincipal": {
        "AWS": "arn:aws:iam::799611636099:root"
      },
      "NotResource": [
        "arn:aws:s3:::files.circleklift.com/pdi/*",
        "arn:aws:s3:::files.circleklift.com/item_master/*",
        "arn:aws:s3:::files.circleklift.com/manifests/*",
        "arn:aws:s3:::files.circleklift.com/octane/*"
      ],
      "Sid": "Allow everyone NOT in the AWS account full read excluding PDI, item_master, manifests and octane"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--kevin-deleteme" {
  bucket        = "kevin-deleteme"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "Policy1630099337148",
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::799611636099:root"
      },
      "Resource": "arn:aws:s3:::kevin-deleteme/*",
      "Sid": "Stmt1630099333683"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--myck-002E-site" {
  bucket        = "myck.site"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::myck.site/*",
      "Sid": "PublicReadGetObject"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ngrp-orchestrator-codepipeline-artifacts-prod" {
  bucket        = "ngrp-orchestrator-codepipeline-artifacts-prod"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--prodbuckettransfer" {
  bucket        = "prodbuckettransfer"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--scriptprodbucket" {
  bucket        = "scriptprodbucket"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--sip-and-save-002E-circlekoffers-002E-com" {
  bucket        = "sip-and-save.circlekoffers.com"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:s3:::sip-and-save.circlekoffers.com/*",
      "Sid": "AllowPublicRead"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "tfer--sscs-tobacco-club" {
  bucket        = "sscs-tobacco-club"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--static-pages-002E-circleklift-002E-com" {
  bucket        = "static-pages.circleklift.com"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:s3:::static-pages.circleklift.com/*",
      "Sid": "AllowPublicRead"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--tobacco-deals-002E-circleklift-002E-com" {
  bucket        = "tobacco-deals.circleklift.com"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::tobacco-deals.circleklift.com/*",
      "Sid": "PublicReadGetObject"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "tfer--www-002E-circlekoffers-002E-com" {
  bucket        = "www.circlekoffers.com"
  force_destroy = "false"

  grant {
    id          = "5c71e10e59db03a96615ff8fdc4de9e08e68719ffb0e5d9043c30725214f880f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    redirect_all_requests_to = "circlekoffers.com"
  }
}
