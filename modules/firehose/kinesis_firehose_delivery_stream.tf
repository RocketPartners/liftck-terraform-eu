resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-basket" {
  arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-basket"
  destination    = "redshift"
  destination_id = "destinationId-000000000001"
  name           = "circleklift-basket"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "Log-circleklift-basket"
      log_stream_name = "RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_basket9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = "arn:aws:iam::799611636099:role/circleklift-basket-kinesis-stream-role"
    s3_backup_mode = "Disabled"
    username       = "firehose2"
  }

  s3_configuration {
    bucket_arn      = "arn:aws:s3:::circlek-prod-firehose"
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "Log-circleklift-basket"
      log_stream_name = "S3Delivery"
    }

    compression_format = "GZIP"
    prefix             = "basket"
    role_arn           = "arn:aws:iam::799611636099:role/circleklift-basket-kinesis-stream-role"
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  version_id = "5"
}

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-event" {
  arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-event"
  destination    = "redshift"
  destination_id = "destinationId-000000000001"
  name           = "circleklift-event"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-event"
      log_stream_name = "RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns GZIP"
    data_table_name = "firehose_event9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = "arn:aws:iam::799611636099:role/circleklift-event-kinesis-stream-role"
    s3_backup_mode = "Disabled"
    username       = "firehose"
  }

  s3_configuration {
    bucket_arn      = "arn:aws:s3:::circlek-prod-firehose"
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-event"
      log_stream_name = "S3Delivery"
    }

    compression_format = "GZIP"
    prefix             = "event"
    role_arn           = "arn:aws:iam::799611636099:role/circleklift-event-kinesis-stream-role"
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  version_id = "5"
}

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-impression" {
  arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-impression"
  destination    = "redshift"
  destination_id = "destinationId-000000000001"
  name           = "circleklift-impression"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-impression"
      log_stream_name = "RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns GZIP"
    data_table_name = "firehose_impression9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = "arn:aws:iam::799611636099:role/circleklift-impression-kinesis-stream-role"
    s3_backup_mode = "Disabled"
    username       = "firehose"
  }

  s3_configuration {
    bucket_arn      = "arn:aws:s3:::circlek-prod-firehose"
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-impression"
      log_stream_name = "S3Delivery"
    }

    compression_format = "GZIP"
    prefix             = "impression"
    role_arn           = "arn:aws:iam::799611636099:role/circleklift-impression-kinesis-stream-role"
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  version_id = "4"
}

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-input" {
  arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-input"
  destination    = "redshift"
  destination_id = "destinationId-000000000001"
  name           = "circleklift-input"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-input"
      log_stream_name = "RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_input9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = "arn:aws:iam::799611636099:role/circleklift-input-kinesis-stream-role"
    s3_backup_mode = "Disabled"
    username       = "firehose2"
  }

  s3_configuration {
    bucket_arn      = "arn:aws:s3:::circlek-prod-firehose"
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-input"
      log_stream_name = "S3Delivery"
    }

    compression_format = "GZIP"
    prefix             = "input"
    role_arn           = "arn:aws:iam::799611636099:role/circleklift-input-kinesis-stream-role"
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  version_id = "7"
}

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-lineitem" {
  arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-lineitem"
  destination    = "redshift"
  destination_id = "destinationId-000000000001"
  name           = "circleklift-lineitem"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "Log-circleklift-lineitem"
      log_stream_name = "RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_lineitem9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = "arn:aws:iam::799611636099:role/circleklift-lineitem-kinesis-stream-role"
    s3_backup_mode = "Disabled"
    username       = "firehose2"
  }

  s3_configuration {
    bucket_arn      = "arn:aws:s3:::circlek-prod-firehose"
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "Log-circleklift-lineitem"
      log_stream_name = "S3Delivery"
    }

    compression_format = "GZIP"
    prefix             = "lineitem"
    role_arn           = "arn:aws:iam::799611636099:role/circleklift-lineitem-kinesis-stream-role"
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  version_id = "5"
}

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-message" {
  arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-message"
  destination    = "redshift"
  destination_id = "destinationId-000000000001"
  name           = "circleklift-message"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "Log-circleklift-message"
      log_stream_name = "RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_message9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = "arn:aws:iam::799611636099:role/circleklift-message-kinesis-stream-role"
    s3_backup_mode = "Disabled"
    username       = "firehose2"
  }

  s3_configuration {
    bucket_arn      = "arn:aws:s3:::circlek-prod-firehose"
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "Log-circleklift-message"
      log_stream_name = "S3Delivery"
    }

    compression_format = "GZIP"
    prefix             = "message"
    role_arn           = "arn:aws:iam::799611636099:role/circleklift-message-kinesis-stream-role"
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  version_id = "5"
}

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-offer" {
  arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-offer"
  destination    = "redshift"
  destination_id = "destinationId-000000000001"
  name           = "circleklift-offer"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "Log-circleklift-offer"
      log_stream_name = "RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns ROUNDEC GZIP"
    data_table_name = "firehose_offer9"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = "arn:aws:iam::799611636099:role/circleklift-offer-kinesis-stream-role"
    s3_backup_mode = "Disabled"
    username       = "firehose2"
  }

  s3_configuration {
    bucket_arn      = "arn:aws:s3:::circlek-prod-firehose"
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "Log-circleklift-offer"
      log_stream_name = "S3Delivery"
    }

    compression_format = "GZIP"
    prefix             = "offer"
    role_arn           = "arn:aws:iam::799611636099:role/circleklift-offer-kinesis-stream-role"
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  version_id = "5"
}

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-sms-opt-in" {
  arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-sms-opt-in"
  destination    = "redshift"
  destination_id = "destinationId-000000000001"
  name           = "circleklift-sms-opt-in"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-sms-opt-in"
      log_stream_name = "RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns GZIP"
    data_table_name = "firehose_sms_opt_in"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = "arn:aws:iam::799611636099:role/circlek-smsoptin-kinesis-stream-role"
    s3_backup_mode = "Disabled"
    username       = "firehose"
  }

  s3_configuration {
    bucket_arn      = "arn:aws:s3:::circlek-prod-firehose"
    buffer_interval = "60"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-sms-opt-in"
      log_stream_name = "S3Delivery"
    }

    compression_format = "GZIP"
    prefix             = "smsoptin"
    role_arn           = "arn:aws:iam::799611636099:role/circlek-smsoptin-kinesis-stream-role"
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  version_id = "6"
}

resource "aws_kinesis_firehose_delivery_stream" "tfer--circleklift-sms-opt-in-dev" {
  arn            = "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-sms-opt-in-dev"
  destination    = "redshift"
  destination_id = "destinationId-000000000001"
  name           = "circleklift-sms-opt-in-dev"

  redshift_configuration {
    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-sms-opt-in-dev"
      log_stream_name = "RedshiftDelivery"
    }

    cluster_jdbcurl = "jdbc:redshift://redshift-cluster-1.clop9hztymwk.us-east-1.redshift.amazonaws.com:5439/warehouse"
    copy_options    = "format as json 'auto' emptyasnull blanksasnull truncatecolumns GZIP"
    data_table_name = "_firehose_sms_opt_in_dev"

    processing_configuration {
      enabled = "false"
    }

    retry_duration = "3600"
    role_arn       = "arn:aws:iam::799611636099:role/service-role/KinesisFirehoseServiceRole-circleklift-s-us-east-1-1614626220344"
    s3_backup_mode = "Disabled"
    username       = "firehose_dev"
  }

  s3_configuration {
    bucket_arn      = "arn:aws:s3:::circlek-dev-firehose"
    buffer_interval = "300"
    buffer_size     = "5"

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "/aws/kinesisfirehose/circleklift-sms-opt-in-dev"
      log_stream_name = "RedshiftDelivery"
    }

    compression_format = "GZIP"
    prefix             = "smsoptin"
    role_arn           = "arn:aws:iam::799611636099:role/service-role/KinesisFirehoseServiceRole-circleklift-s-us-east-1-1614626220344"
  }

  server_side_encryption {
    enabled  = "false"
    key_type = "AWS_OWNED_CMK"
  }

  version_id = "5"
}
