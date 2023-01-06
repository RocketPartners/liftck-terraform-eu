data "aws_canonical_user_id" "current" {}

resource "aws_cloudwatch_log_group" "Log-circleklift-basket"{
  name = "Log-circleklift-basket"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery" {
  log_group_name = aws_cloudwatch_log_group.Log-circleklift-basket.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery" {
  log_group_name = aws_cloudwatch_log_group.Log-circleklift-basket.name
  name           = "S3Delivery"
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

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-basket" {
  #arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-basket"
  destination    = "redshift"
  #destination_id = "destinationId-000000000001"
  name           = "circleklift-basket"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group.Log-circleklift-basket.name #"Log-circleklift-basket"
      log_stream_name = aws_cloudwatch_log_stream.RedshiftDelivery.name #"RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://${var.redshift_endpoint}/${var.redshift_database_name}" #"jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_basket9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = aws_iam_role.tfer--circlekliftdev-basket-kinesis-stream-role.arn
    s3_backup_mode = "Disabled"
    username       = "firehose2"
    password       = var.db_password
  }

  s3_configuration {
    bucket_arn      = aws_s3_bucket.circlekdev-prod-firehose.arn
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group.Log-circleklift-basket.name #"Log-circleklift-basket"
      log_stream_name = aws_cloudwatch_log_stream.S3Delivery.name
    }

    compression_format = "GZIP"
    prefix             = "basket"
    role_arn           = aws_iam_role.tfer--circlekliftdev-basket-kinesis-stream-role.arn
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }
  
  #version_id = "LATEST"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-event"{
  name = "/aws/kinesisfirehose/circleklift-event"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-event" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-event.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-event" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-event.name
  name           = "S3Delivery"
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

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-event" {
  #arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-event"
  destination    = "redshift"
  #destination_id = "destinationId-000000000001"
  name           = "circleklift-event"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-event.name
      log_stream_name = aws_cloudwatch_log_stream.RedshiftDelivery_circleklift-event.name
    }

    cluster_jdbcurl = "jdbc:redshift://${var.redshift_endpoint}/${var.redshift_database_name}" #"jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns GZIP"
    data_table_name = "firehose_event9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = aws_iam_role.tfer--circlekliftdev-event-kinesis-stream-role.arn
    s3_backup_mode = "Disabled"
    username       = "firehose"
    password       = var.db_password

  }

  s3_configuration {
    bucket_arn      = aws_s3_bucket.circlekdev-prod-firehose.arn
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-event.name
      log_stream_name = aws_cloudwatch_log_stream.S3Delivery_circleklift-event.name
    }

    compression_format = "GZIP"
    prefix             = "event"
    role_arn           = aws_iam_role.tfer--circlekliftdev-event-kinesis-stream-role.arn
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  #version_id = "LATEST"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-impression"{
  name = "/aws/kinesisfirehose/circleklift-impression"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-impression" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-impression.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-impression" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-impression.name
  name           = "S3Delivery"
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

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-impression" {
  #arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-impression"
  destination    = "redshift"
  #destination_id = "destinationId-000000000001"
  name           = "circleklift-impression"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-impression.name
      log_stream_name = aws_cloudwatch_log_stream.S3Delivery_circleklift-impression.name
    }

    cluster_jdbcurl = "jdbc:redshift://${var.redshift_endpoint}/${var.redshift_database_name}" #"jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns GZIP"
    data_table_name = "firehose_impression9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = aws_iam_role.tfer--circlekliftdev-impression-kinesis-stream-role.arn
    s3_backup_mode = "Disabled"
    username       = "firehose"
    password       = var.db_password

  }

  s3_configuration {
    bucket_arn      = aws_s3_bucket.circlekdev-prod-firehose.arn
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-impression.name
      log_stream_name = aws_cloudwatch_log_stream.S3Delivery_circleklift-impression.name
    }

    compression_format = "GZIP"
    prefix             = "impression"
    role_arn       = aws_iam_role.tfer--circlekliftdev-impression-kinesis-stream-role.arn
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  #version_id = "LATEST"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-input"{
  name = "/aws/kinesisfirehose/circleklift-input"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-input" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-input.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-input" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-input.name
  name           = "S3Delivery"
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


resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-input" {
  #arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-input"
  destination    = "redshift"
  #destination_id = "destinationId-000000000001"
  name           = "circleklift-input"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-input.name
      log_stream_name = aws_cloudwatch_log_stream.RedshiftDelivery_circleklift-input.name
    }

    cluster_jdbcurl = "jdbc:redshift://${var.redshift_endpoint}/${var.redshift_database_name}" #"jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_input9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = aws_iam_role.tfer--circlekliftdev-input-kinesis-stream-role.arn
    s3_backup_mode = "Disabled"
    username       = "firehose2"
    password       = var.db_password

  }

  s3_configuration {
    bucket_arn      = aws_s3_bucket.circlekdev-prod-firehose.arn
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-input.name
      log_stream_name = aws_cloudwatch_log_stream.S3Delivery_circleklift-input.name
    }

    compression_format = "GZIP"
    prefix             = "input"
    role_arn       = aws_iam_role.tfer--circlekliftdev-input-kinesis-stream-role.arn
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  #version_id = "LATEST"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-lineitem"{
  name = "Log-circleklift-lineitem"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-lineitem" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-lineitem.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-lineitem" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-lineitem.name
  name           = "S3Delivery"
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


resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-lineitem" {
  #arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-lineitem"
  destination    = "redshift"
  #destination_id = "destinationId-000000000001"
  name           = "circleklift-lineitem"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-lineitem.name
      log_stream_name = aws_cloudwatch_log_stream.RedshiftDelivery_circleklift-lineitem.name
    }

    cluster_jdbcurl = "jdbc:redshift://${var.redshift_endpoint}/${var.redshift_database_name}" #"jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_lineitem9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = aws_iam_role.tfer--circlekliftdev-lineitem-kinesis-stream-role.arn
    s3_backup_mode = "Disabled"
    username       = "firehose2"
    password       = var.db_password

  }

  s3_configuration {
    bucket_arn      = aws_s3_bucket.circlekdev-prod-firehose.arn
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-lineitem.name
      log_stream_name = aws_cloudwatch_log_stream.S3Delivery_circleklift-lineitem.name
    }

    compression_format = "GZIP"
    prefix             = "lineitem"
    role_arn       = aws_iam_role.tfer--circlekliftdev-lineitem-kinesis-stream-role.arn
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  #version_id = "LATEST"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-message"{
  name = "Log-circleklift-message"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-message" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-message.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-message" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-message.name
  name           = "S3Delivery"
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

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-message" {
  #arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-message"
  destination    = "redshift"
  #destination_id = "destinationId-000000000001"
  name           = "circleklift-message"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-message.name
      log_stream_name = aws_cloudwatch_log_stream.RedshiftDelivery_circleklift-message.name
    }

    cluster_jdbcurl = "jdbc:redshift://${var.redshift_endpoint}/${var.redshift_database_name}" #"jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_message9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = aws_iam_role.tfer--circlekliftdev-message-kinesis-stream-role.arn
    s3_backup_mode = "Disabled"
    username       = "firehose2"
    password       = var.db_password

  }

  s3_configuration {
    bucket_arn      = aws_s3_bucket.circlekdev-prod-firehose.arn
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-message.name
      log_stream_name = aws_cloudwatch_log_stream.S3Delivery_circleklift-message.name
    }

    compression_format = "GZIP"
    prefix             = "message"
    role_arn       = aws_iam_role.tfer--circlekliftdev-message-kinesis-stream-role.arn
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  #version_id = "LATEST"
}

resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-offer"{
  name = "Log-circleklift-offer"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-offer" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-offer.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-offer" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-offer.name
  name           = "S3Delivery"
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
resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-offer" {
  #arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-offer"
  destination    = "redshift"
  #destination_id = "destinationId-000000000001"
  name           = "circleklift-offer"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-offer.name
      log_stream_name = aws_cloudwatch_log_stream.RedshiftDelivery_circleklift-offer.name
    }

    cluster_jdbcurl = "jdbc:redshift://${var.redshift_endpoint}/${var.redshift_database_name}" #"jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_offer9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = aws_iam_role.tfer--circlekliftdev-offer-kinesis-stream-role.arn
    s3_backup_mode = "Disabled"
    username       = "firehose2"
    password       = var.db_password

  }

  s3_configuration {
    bucket_arn      = aws_s3_bucket.circlekdev-prod-firehose.arn
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-offer.name
      log_stream_name = aws_cloudwatch_log_stream.S3Delivery_circleklift-offer.name
    }

    compression_format = "GZIP"
    prefix             = "offer"
    role_arn       = aws_iam_role.tfer--circlekliftdev-offer-kinesis-stream-role.arn
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  #version_id = "LATEST"
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-sms"{
  name = "/aws/kinesisfirehose/circleklift-sms-opt-in"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-sms" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-sms.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-sms" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-sms.name
  name           = "S3Delivery"
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

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-sms-opt-in" {
  #arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-sms-opt-in"
  destination    = "redshift"
  #destination_id = "destinationId-000000000001"
  name           = "circleklift-sms-opt-in"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-sms.name
      log_stream_name = aws_cloudwatch_log_stream.RedshiftDelivery_circleklift-sms.name
    }

    cluster_jdbcurl = "jdbc:redshift://${var.redshift_endpoint}/${var.redshift_database_name}" #"jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns GZIP"
    data_table_name = "firehose_sms_opt_in"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = aws_iam_role.tfer--circlekdev-smsoptin-kinesis-stream-role.arn
    s3_backup_mode = "Disabled"
    username       = "firehose"
    password       = var.db_password

  }

  s3_configuration {
    bucket_arn      = aws_s3_bucket.circlekdev-prod-firehose.arn
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-sms-opt-in"
      log_stream_name = "S3Delivery"
    }

    compression_format = "GZIP"
    prefix             = "smsoptin"
    role_arn       = aws_iam_role.tfer--circlekdev-smsoptin-kinesis-stream-role.arn
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  #version_id = "LATEST"
}



resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-smsdev"{
  name = "/aws/kinesisfirehose/circleklift-sms-opt-in-dev"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-smsdev" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-smsdev.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-smsdev" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-smsdev.name
  name           = "S3Delivery"
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

resource "aws_iam_policy" "tfer--KinesisFirehoseServicePolicy-circleklift-sms-opt-in-dev" {
  name = "KinesisFirehoseServicePolicy-circleklift-sms-opt-in-dev-${data.aws_region.current.name}"
  path = "/service-role/"

  policy = jsonencode(
{
  "Statement": [
    {
      "Action": [
        "glue:GetTable",
        "glue:GetTableVersion",
        "glue:GetTableVersions"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:glue:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:catalog",
        "arn:aws:glue:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:database/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
        "arn:aws:glue:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:table/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "s3:AbortMultipartUpload",
        "s3:GetBucketLocation",
        "s3:GetObject",
        "s3:ListBucket",
        "s3:ListBucketMultipartUploads",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        aws_s3_bucket.circlekdev-dev-firehose.arn,
        "${aws_s3_bucket.circlekdev-dev-firehose.arn}/*"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:GetFunctionConfiguration"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
      "Sid": ""
    },
    {
      "Action": [
        "kms:GenerateDataKey",
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "s3.${data.aws_region.current.name}.amazonaws.com"
        },
        "StringLike": {
          "kms:EncryptionContext:aws:s3:arn": [
            "arn:aws:s3:::%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/*"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:key/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:log-group:/aws/kinesisfirehose/circleklift-sms-opt-in-dev:log-stream:*"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "kinesis:DescribeStream",
        "kinesis:GetShardIterator",
        "kinesis:GetRecords",
        "kinesis:ListShards"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:kinesis:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:stream/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
      "Sid": ""
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "kinesis.${data.aws_region.current.name}.amazonaws.com"
        },
        "StringLike": {
          "kms:EncryptionContext:aws:kinesis:arn": "arn:aws:kinesis:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:stream/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:key/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ]
    }
  ],
  "Version": "2012-10-17"
}
)
}

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

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-sms-opt-in-dev" {
  #arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-sms-opt-in-dev"
  destination    = "redshift"
  #destination_id = "destinationId-000000000001"
  name           = "circleklift-sms-opt-in-dev"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-smsdev.name
      log_stream_name = aws_cloudwatch_log_stream.RedshiftDelivery_circleklift-smsdev.name
    }

    cluster_jdbcurl = "jdbc:redshift://${var.redshift_endpoint}/${var.redshift_database_name}" #"jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns GZIP"
    data_table_name = "_firehose_sms_opt_in_dev"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = aws_iam_role.tfer--KinesisFirehoseServiceRole-circleklift-s-1614626220344.arn
    s3_backup_mode = "Disabled"
    username       = "firehose_dev"
    password       = var.db_password

  }

  s3_configuration {
    bucket_arn      = aws_s3_bucket.circlekdev-dev-firehose.arn
    buffer_interval = "300"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-smsdev.name
      log_stream_name = aws_cloudwatch_log_stream.S3Delivery_circleklift-smsdev.name
    }

    compression_format = "GZIP"
    prefix             = "smsoptin"
    role_arn       = aws_iam_role.tfer--KinesisFirehoseServiceRole-circleklift-s-1614626220344.arn
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  #version_id = "LATEST"
}
