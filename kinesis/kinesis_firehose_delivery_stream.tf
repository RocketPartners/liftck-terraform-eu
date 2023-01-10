data "aws_canonical_user_id" "current" {}
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

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
