data "aws_canonical_user_id" "current" {}

resource "aws_s3_bucket" "tfer--ckdev-data-lake-prod" {
  bucket        = "ckdev-data-lake-prod"
  force_destroy = "false"
  object_lock_enabled = "false"
}

resource "aws_s3_bucket_request_payment_configuration" "tfer--ckdev-data-lake-prod" {
  bucket = aws_s3_bucket.tfer--ckdev-data-lake-prod.bucket
  payer  = "BucketOwner"
}
resource "aws_s3_bucket_acl" "tfer--ckdev-data-lake-prod" {
  bucket = aws_s3_bucket.tfer--ckdev-data-lake-prod.bucket
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

resource "aws_s3_bucket_versioning" "tfer--ckdev-data-lake-prod" {
  bucket = aws_s3_bucket.tfer--ckdev-data-lake-prod.id
  versioning_configuration {
    status = "Enabled"
    mfa_delete = "Disabled"
  }
}


resource "aws_s3_bucket" "tfer--sscsdev-tobacco-club" {
  bucket        = "sscsdev-tobacco-club"
  force_destroy = "false"
  object_lock_enabled = "false"
}

resource "aws_s3_bucket_acl" "tfer--sscsdev-tobacco-club" {
  bucket = aws_s3_bucket.tfer--sscsdev-tobacco-club.bucket
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

resource "aws_s3_bucket_versioning" "tfer--sscsdev-tobacco-club" {
  bucket = aws_s3_bucket.tfer--sscsdev-tobacco-club.id
  versioning_configuration {
    status    = "Enabled"
    mfa_delete = "Disabled"
  }
}

resource "aws_s3_bucket_request_payment_configuration" "tfer--sscsdev-tobacco-club" {
  bucket = aws_s3_bucket.tfer--sscsdev-tobacco-club.bucket
  payer  = "BucketOwner"
}

resource "aws_s3_bucket" "tfer--ck-altria-files" {
  bucket        = "ck-altria-files"
  force_destroy = "false"
  object_lock_enabled = "false"
}

resource "aws_s3_bucket_acl" "tfer--ck-altria-files" {
  bucket = aws_s3_bucket.tfer--ck-altria-files.bucket
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

resource "aws_s3_bucket_versioning" "tfer--ck-altria-files" {
  bucket = aws_s3_bucket.tfer--ck-altria-files.id
  versioning_configuration {
    status    = "Enabled"
    mfa_delete = "Disabled"
  }
}

resource "aws_s3_bucket_request_payment_configuration" "tfer--ck-altria-files" {
  bucket = aws_s3_bucket.tfer--ck-altria-files.id
  payer  = "BucketOwner"
}