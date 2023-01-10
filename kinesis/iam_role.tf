
resource "aws_iam_role" "tfer--KinesisFirehoseServiceRole-circleklift-s-1614626220344" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = [aws_iam_policy.tfer--KinesisFirehoseServicePolicy-circleklift-sms-opt-in-dev.arn,]
  max_session_duration = "3600"
  name                 = "KinesisFirehoseServiceRole-circleklift-s-${data.aws_region.current.name}-1614626220344"
  path                 = "/service-role/"
}


resource "aws_iam_role" "tfer--circlekliftdev-basket-kinesis-stream-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "kinesis"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"redshift:GetClusterCredentials\",\"redshift:ListSchemas\",\"redshift:ListTables\",\"redshift:ListDatabases\",\"redshift:ExecuteQuery\",\"redshift:FetchResults\",\"redshift:CancelQuery\",\"redshift:DescribeClusters\",\"redshift:DescribeQuery\",\"redshift:DescribeTable\",\"redshift:ViewQueriesFromConsole\",\"redshift:DescribeSavedQueries\",\"redshift:CreateSavedQuery\",\"redshift:DeleteSavedQueries\",\"redshift:ModifySavedQuery\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "circlekliftdev-basket-kinesis-stream-role"
  path                 = "/"
}


resource "aws_iam_role" "tfer--circlekliftdev-event-kinesis-stream-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "kinesis"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"redshift:GetClusterCredentials\",\"redshift:ListSchemas\",\"redshift:ListTables\",\"redshift:ListDatabases\",\"redshift:ExecuteQuery\",\"redshift:FetchResults\",\"redshift:CancelQuery\",\"redshift:DescribeClusters\",\"redshift:DescribeQuery\",\"redshift:DescribeTable\",\"redshift:ViewQueriesFromConsole\",\"redshift:DescribeSavedQueries\",\"redshift:CreateSavedQuery\",\"redshift:DeleteSavedQueries\",\"redshift:ModifySavedQuery\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "circlekliftdev-event-kinesis-stream-role"
  path                 = "/"
}



resource "aws_iam_role" "tfer--circlekliftdev-impression-kinesis-stream-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "kinesis"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"redshift:GetClusterCredentials\",\"redshift:ListSchemas\",\"redshift:ListTables\",\"redshift:ListDatabases\",\"redshift:ExecuteQuery\",\"redshift:FetchResults\",\"redshift:CancelQuery\",\"redshift:DescribeClusters\",\"redshift:DescribeQuery\",\"redshift:DescribeTable\",\"redshift:ViewQueriesFromConsole\",\"redshift:DescribeSavedQueries\",\"redshift:CreateSavedQuery\",\"redshift:DeleteSavedQueries\",\"redshift:ModifySavedQuery\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "circlekliftdev-impression-kinesis-stream-role"
  path                 = "/"
}


resource "aws_iam_role" "tfer--circlekliftdev-input-kinesis-stream-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "kinesis"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"redshift:GetClusterCredentials\",\"redshift:ListSchemas\",\"redshift:ListTables\",\"redshift:ListDatabases\",\"redshift:ExecuteQuery\",\"redshift:FetchResults\",\"redshift:CancelQuery\",\"redshift:DescribeClusters\",\"redshift:DescribeQuery\",\"redshift:DescribeTable\",\"redshift:ViewQueriesFromConsole\",\"redshift:DescribeSavedQueries\",\"redshift:CreateSavedQuery\",\"redshift:DeleteSavedQueries\",\"redshift:ModifySavedQuery\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "circlekliftdev-input-kinesis-stream-role"
  path                 = "/"
}


resource "aws_iam_role" "tfer--circlekliftdev-lineitem-kinesis-stream-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "kinesis"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"redshift:GetClusterCredentials\",\"redshift:ListSchemas\",\"redshift:ListTables\",\"redshift:ListDatabases\",\"redshift:ExecuteQuery\",\"redshift:FetchResults\",\"redshift:CancelQuery\",\"redshift:DescribeClusters\",\"redshift:DescribeQuery\",\"redshift:DescribeTable\",\"redshift:ViewQueriesFromConsole\",\"redshift:DescribeSavedQueries\",\"redshift:CreateSavedQuery\",\"redshift:DeleteSavedQueries\",\"redshift:ModifySavedQuery\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "circlekliftdev-lineitem-kinesis-stream-role"
  path                 = "/"
}


resource "aws_iam_role" "tfer--circlekliftdev-message-kinesis-stream-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "kinesis"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"redshift:GetClusterCredentials\",\"redshift:ListSchemas\",\"redshift:ListTables\",\"redshift:ListDatabases\",\"redshift:ExecuteQuery\",\"redshift:FetchResults\",\"redshift:CancelQuery\",\"redshift:DescribeClusters\",\"redshift:DescribeQuery\",\"redshift:DescribeTable\",\"redshift:ViewQueriesFromConsole\",\"redshift:DescribeSavedQueries\",\"redshift:CreateSavedQuery\",\"redshift:DeleteSavedQueries\",\"redshift:ModifySavedQuery\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "circlekliftdev-message-kinesis-stream-role"
  path                 = "/"
}


resource "aws_iam_role" "tfer--circlekliftdev-offer-kinesis-stream-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "kinesis"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"redshift:GetClusterCredentials\",\"redshift:ListSchemas\",\"redshift:ListTables\",\"redshift:ListDatabases\",\"redshift:ExecuteQuery\",\"redshift:FetchResults\",\"redshift:CancelQuery\",\"redshift:DescribeClusters\",\"redshift:DescribeQuery\",\"redshift:DescribeTable\",\"redshift:ViewQueriesFromConsole\",\"redshift:DescribeSavedQueries\",\"redshift:CreateSavedQuery\",\"redshift:DeleteSavedQueries\",\"redshift:ModifySavedQuery\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "circlekliftdev-offer-kinesis-stream-role"
  path                 = "/"
}



resource "aws_iam_role" "tfer--circlekdev-smsoptin-kinesis-stream-role" {
  assume_role_policy = jsonencode(
    {
      "Statement": [
        {
          "Action": "sts:AssumeRole",
          "Condition": {
            "StringEquals": {
              "sts:ExternalId": data.aws_caller_identity.current.account_id
            }
          },
          "Effect": "Allow",
          "Principal": {
            "Service": "firehose.amazonaws.com"
          },
          "Sid": ""
        }
      ],
      "Version": "2012-10-17"
    }
  )

  inline_policy {
    name   = "oneClick_firehose_delivery_role_1581530478484"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"glue:GetTable\",\n        \"glue:GetTableVersion\",\n        \"glue:GetTableVersions\"\n      ],\n      \"Resource\": \"*\"\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"s3:AbortMultipartUpload\",\n        \"s3:GetBucketLocation\",\n        \"s3:GetObject\",\n        \"s3:ListBucket\",\n        \"s3:ListBucketMultipartUploads\",\n        \"s3:PutObject\"\n      ],\n      \"Resource\": [\n        \"${aws_s3_bucket.circlekdev-prod-firehose.arn}\",\n        \"${aws_s3_bucket.circlekdev-prod-firehose.arn}/*\",\n        \"arn:aws:s3:::%FIREHOSE_BUCKET_NAME%\",\n        \"arn:aws:s3:::%FIREHOSE_BUCKET_NAME%/*\"\n      ]\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"lambda:InvokeFunction\",\n        \"lambda:GetFunctionConfiguration\"\n      ],\n      \"Resource\": \"arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:%FIREHOSE_DEFAULT_FUNCTION%:%FIREHOSE_DEFAULT_VERSION%\"\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"logs:PutLogEvents\"\n      ],\n      \"Resource\": [\n        \"arn:aws:logs:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:log-group:/aws/kinesisfirehose/:log-stream:*\"\n      ]\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"kinesis:DescribeStream\",\n        \"kinesis:GetShardIterator\",\n        \"kinesis:GetRecords\"\n      ],\n      \"Resource\": \"arn:aws:kinesis:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:stream/%FIREHOSE_STREAM_NAME%\"\n    },\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"kms:Decrypt\"\n      ],\n      \"Resource\": [\n        \"arn:aws:kms:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:key/%SSE_KEY_ID%\"\n      ],\n      \"Condition\": {\n        \"StringEquals\": {\n          \"kms:ViaService\": \"kinesis.%REGION_NAME%.amazonaws.com\"\n        },\n        \"StringLike\": {\n          \"kms:EncryptionContext:aws:kinesis:arn\": \"arn:aws:kinesis:%REGION_NAME%:${data.aws_caller_identity.current.account_id}:stream/%FIREHOSE_STREAM_NAME%\"\n        }\n      }\n    }\n  ]\n}"
  }

  inline_policy {
    name   = "oneClick_firehose_delivery_role_1581530646705"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"glue:GetTable\",\n        \"glue:GetTableVersion\",\n        \"glue:GetTableVersions\"\n      ],\n      \"Resource\": \"*\"\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"s3:AbortMultipartUpload\",\n        \"s3:GetBucketLocation\",\n        \"s3:GetObject\",\n        \"s3:ListBucket\",\n        \"s3:ListBucketMultipartUploads\",\n        \"s3:PutObject\"\n      ],\n      \"Resource\": [\n        \"${aws_s3_bucket.circlekdev-prod-firehose.arn}\",\n        \"${aws_s3_bucket.circlekdev-prod-firehose.arn}/*\",\n        \"arn:aws:s3:::%FIREHOSE_BUCKET_NAME%\",\n        \"arn:aws:s3:::%FIREHOSE_BUCKET_NAME%/*\"\n      ]\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"lambda:InvokeFunction\",\n        \"lambda:GetFunctionConfiguration\"\n      ],\n      \"Resource\": \"arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:%FIREHOSE_DEFAULT_FUNCTION%:%FIREHOSE_DEFAULT_VERSION%\"\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"logs:PutLogEvents\"\n      ],\n      \"Resource\": [\n        \"arn:aws:logs:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:log-group:/aws/kinesisfirehose/circleklift-sms-opt-in:log-stream:*\"\n      ]\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"kinesis:DescribeStream\",\n        \"kinesis:GetShardIterator\",\n        \"kinesis:GetRecords\"\n      ],\n      \"Resource\": \"arn:aws:kinesis:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:stream/%FIREHOSE_STREAM_NAME%\"\n    },\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"kms:Decrypt\"\n      ],\n      \"Resource\": [\n        \"arn:aws:kms:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:key/%SSE_KEY_ID%\"\n      ],\n      \"Condition\": {\n        \"StringEquals\": {\n          \"kms:ViaService\": \"kinesis.%REGION_NAME%.amazonaws.com\"\n        },\n        \"StringLike\": {\n          \"kms:EncryptionContext:aws:kinesis:arn\": \"arn:aws:kinesis:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:stream/%FIREHOSE_STREAM_NAME%\"\n        }\n      }\n    }\n  ]\n}"
  }

  max_session_duration = "3600"
  name                 = "circlekdev-smsoptin-kinesis-stream-role"
  path                 = "/"
}

