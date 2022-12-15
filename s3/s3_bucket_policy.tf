resource "aws_s3_bucket_policy" "tfer--age-verify-002E-circleklift-002E-com" {
  bucket = "age-verify.circleklift.com"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::age-verify.circleklift.com/*\",\"Sid\":\"PublicReadGetObject\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--billing-costusagereport" {
  bucket = "billing-costusagereport"
  policy = "{\"Id\":\"Policy1335892530063\",\"Statement\":[{\"Action\":[\"s3:GetBucketAcl\",\"s3:GetBucketPolicy\"],\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"799611636099\",\"aws:SourceArn\":\"arn:aws:cur:us-east-1:799611636099:definition/*\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"billingreports.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::billing-costusagereport\",\"Sid\":\"Stmt1335892150622\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"799611636099\",\"aws:SourceArn\":\"arn:aws:cur:us-east-1:799611636099:definition/*\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"billingreports.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::billing-costusagereport/*\",\"Sid\":\"Stmt1335892526596\"}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--circlek-prod-alb-logs" {
  bucket = "circlek-prod-alb-logs"
  policy = "{\"Id\":\"AWSConsole-AccessLogs-Policy-1614109156743\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::127311923021:root\"},\"Resource\":\"arn:aws:s3:::circlek-prod-alb-logs/player/AWSLogs/799611636099/*\",\"Sid\":\"AWSConsoleStmt-1614109156743\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"delivery.logs.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::circlek-prod-alb-logs/player/AWSLogs/799611636099/*\",\"Sid\":\"AWSLogDeliveryWrite\"},{\"Action\":\"s3:GetBucketAcl\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"delivery.logs.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::circlek-prod-alb-logs\",\"Sid\":\"AWSLogDeliveryAclCheck\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"ArnLike\":{\"aws:SourceArn\":\"arn:aws:logs:us-east-1:799611636099:*\"},\"StringEquals\":{\"aws:SourceAccount\":\"799611636099\",\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"delivery.logs.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::circlek-prod-alb-logs/VPC_LOGS/AWSLogs/799611636099/*\",\"Sid\":\"AWSLogDeliveryWrite2\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--circlek-prod-portal-webapp" {
  bucket = "circlek-prod-portal-webapp"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"arn:aws:s3:::circlek-prod-portal-webapp/*\",\"Sid\":\"AllowPublicRead\"}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--circlek-prod-registration-webapp" {
  bucket = "circlek-prod-registration-webapp"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"arn:aws:s3:::circlek-prod-registration-webapp/*\",\"Sid\":\"AllowPublicRead\"}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--circlekoffers-002E-com" {
  bucket = "circlekoffers.com"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"arn:aws:s3:::circlekoffers.com/*\",\"Sid\":\"AllowPublicRead\"}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--ck-prod-data-migration" {
  bucket = "ck-prod-data-migration"
  policy = "{\"Id\":\"\",\"Statement\":[{\"Action\":\"s3:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":[\"arn:aws:iam::713044078609:role/DataPipelineDefaultRole\",\"arn:aws:iam::713044078609:role/DataPipelineDefaultResourceRole\"]},\"Resource\":[\"arn:aws:s3:::ck-prod-data-migration\",\"arn:aws:s3:::ck-prod-data-migration/*\"],\"Sid\":\"\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--codepipeline-us-east-1-70041573072" {
  bucket = "codepipeline-us-east-1-70041573072"
  policy = "{\"Id\":\"SSEAndSSLPolicy\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringNotEquals\":{\"s3:x-amz-server-side-encryption\":\"aws:kms\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::codepipeline-us-east-1-70041573072/*\",\"Sid\":\"DenyUnEncryptedObjectUploads\"},{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::codepipeline-us-east-1-70041573072/*\",\"Sid\":\"DenyInsecureConnections\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--config-bucket-799611636099" {
  bucket = "config-bucket-799611636099"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-799611636099\",\"Sid\":\"AWSConfigBucketPermissionsCheck\"},{\"Action\":\"s3:ListBucket\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-799611636099\",\"Sid\":\"AWSConfigBucketExistenceCheck\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-799611636099/AWSLogs/799611636099/Config/*\",\"Sid\":\"AWSConfigBucketDelivery\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--files-002E-circleklift-002E-com" {
  bucket = "files.circleklift.com"
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::799611636099:root\"},\"Resource\":\"arn:aws:s3:::files.circleklift.com/*\",\"Sid\":\"Allow the AWS account full access\"},{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"NotPrincipal\":{\"AWS\":\"arn:aws:iam::799611636099:root\"},\"NotResource\":[\"arn:aws:s3:::files.circleklift.com/pdi/*\",\"arn:aws:s3:::files.circleklift.com/item_master/*\",\"arn:aws:s3:::files.circleklift.com/manifests/*\",\"arn:aws:s3:::files.circleklift.com/octane/*\"],\"Sid\":\"Allow everyone NOT in the AWS account full read excluding PDI, item_master, manifests and octane\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--kevin-deleteme" {
  bucket = "kevin-deleteme"
  policy = "{\"Id\":\"Policy1630099337148\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:PutObject\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::799611636099:root\"},\"Resource\":\"arn:aws:s3:::kevin-deleteme/*\",\"Sid\":\"Stmt1630099333683\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--myck-002E-site" {
  bucket = "myck.site"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::myck.site/*\",\"Sid\":\"PublicReadGetObject\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--sip-and-save-002E-circlekoffers-002E-com" {
  bucket = "sip-and-save.circlekoffers.com"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"arn:aws:s3:::sip-and-save.circlekoffers.com/*\",\"Sid\":\"AllowPublicRead\"}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--static-pages-002E-circleklift-002E-com" {
  bucket = "static-pages.circleklift.com"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"arn:aws:s3:::static-pages.circleklift.com/*\",\"Sid\":\"AllowPublicRead\"}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--tobacco-deals-002E-circleklift-002E-com" {
  bucket = "tobacco-deals.circleklift.com"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::tobacco-deals.circleklift.com/*\",\"Sid\":\"PublicReadGetObject\"}],\"Version\":\"2012-10-17\"}"
}
