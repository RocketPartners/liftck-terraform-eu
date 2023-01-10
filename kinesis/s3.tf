
resource "aws_s3_bucket" "circlekdev-prod-firehose" {
  bucket        = "circlekdev-prod-firehose"
  force_destroy = "false"
  object_lock_enabled = "false"
}

resource "aws_s3_bucket_acl" "circlekdev-prod-firehose" {
  bucket = aws_s3_bucket.circlekdev-prod-firehose.bucket
  access_control_policy {
    grant {
      grantee {
        id   = data.aws_canonical_user_id.current.id
        type = "CanonicalUser"
      }
      permission = "FULL_CONTROL"

    }
    owner {
      id = data.aws_canonical_user_id.current.id
    }
  }
}

resource "aws_s3_bucket_versioning" "circlekdev-prod-firehose" {
  bucket = aws_s3_bucket.circlekdev-prod-firehose.id
  versioning_configuration {
    status    = "Suspended"
    mfa_delete = "Disabled"
  }
}

resource "aws_s3_bucket_request_payment_configuration" "circlekdev-prod-firehose" {
  bucket = aws_s3_bucket.circlekdev-prod-firehose.bucket
  payer  = "BucketOwner"
}

resource "aws_s3_bucket" "circlekdev-dev-firehose" {
  bucket        = "circlekdev-dev-firehose"
  force_destroy = "false"
  object_lock_enabled = "false"

}

resource "aws_s3_bucket_acl" "circlekdev-dev-firehose" {
  bucket = aws_s3_bucket.circlekdev-dev-firehose.bucket
  access_control_policy {
    grant {
      grantee {
        id   = data.aws_canonical_user_id.current.id
        type = "CanonicalUser"
      }
      permission = "FULL_CONTROL"

    }
    owner {
      id = data.aws_canonical_user_id.current.id
    }
  }
}

resource "aws_s3_bucket_versioning" "circlekdev-dev-firehose" {
  bucket = aws_s3_bucket.circlekdev-dev-firehose.bucket
  versioning_configuration {
    status    = "Suspended"
    mfa_delete = "Disabled"
  }
}

resource "aws_s3_bucket_request_payment_configuration" "circlekdev-dev-firehose" {
  bucket = aws_s3_bucket.circlekdev-dev-firehose.bucket
  payer  = "BucketOwner"
}

