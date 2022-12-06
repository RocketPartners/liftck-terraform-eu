resource "aws_sqs_queue" "tfer--data-sync-notifier-lambda-dlq-sqs" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "data-sync-notifier-lambda-dlq-sqs"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "SQS:SendMessage",
      "Condition": {
        "ArnEquals": {
          "aws:SourceArn": "data-sync-notifier-lambda"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "sns.amazonaws.com"
      },
      "Resource": "arn:aws:sqs:us-east-1:799611636099:data-sync-notifier-lambda-dlq-sqs"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  sqs_managed_sse_enabled    = "false"
  visibility_timeout_seconds = "30"
}

resource "aws_sqs_queue" "tfer--data-sync-notifier-sns-to-lambda-dlq-sqs" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "data-sync-notifier-sns-to-lambda-dlq-sqs"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "SQS:SendMessage",
      "Condition": {
        "ArnEquals": {
          "aws:SourceArn": "arn:aws:sns:us-east-1:799611636099:data-sync-notifier-sns-topic"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "sns.amazonaws.com"
      },
      "Resource": "arn:aws:sqs:us-east-1:799611636099:data-sync-notifier-sns-to-lambda-dlq-sqs"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  receive_wait_time_seconds  = "0"
  sqs_managed_sse_enabled    = "false"
  visibility_timeout_seconds = "30"
}

resource "aws_sqs_queue" "tfer--pricebook-indexer-deadletter-queue" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "pricebook-indexer-deadletter-queue"
  receive_wait_time_seconds         = "0"
  sqs_managed_sse_enabled           = "false"
  visibility_timeout_seconds        = "120"
}

resource "aws_sqs_queue" "tfer--pricebook-indexer-queue" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "pricebook-indexer-queue"
  receive_wait_time_seconds         = "5"
  redrive_policy                    = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:799611636099:pricebook-indexer-deadletter-queue\",\"maxReceiveCount\":5}"
  sqs_managed_sse_enabled           = "false"
  visibility_timeout_seconds        = "120"
}

resource "aws_sqs_queue" "tfer--sms-opt-in-prod-campaign-worker-sms-deadletter" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "sms-opt-in-prod-campaign-worker-sms-deadletter"
  receive_wait_time_seconds         = "0"
  sqs_managed_sse_enabled           = "false"
  visibility_timeout_seconds        = "120"
}

resource "aws_sqs_queue" "tfer--sms-opt-in-prod-inbound-sms" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "sms-opt-in-prod-inbound-sms"
  receive_wait_time_seconds         = "0"
  redrive_policy                    = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-inbound-sms-deadletter\",\"maxReceiveCount\":5}"
  sqs_managed_sse_enabled           = "false"
  visibility_timeout_seconds        = "120"
}

resource "aws_sqs_queue" "tfer--sms-opt-in-prod-inbound-sms-deadletter" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "sms-opt-in-prod-inbound-sms-deadletter"
  receive_wait_time_seconds         = "0"
  sqs_managed_sse_enabled           = "false"
  visibility_timeout_seconds        = "120"
}

resource "aws_sqs_queue" "tfer--sms-opt-in-prod-outbound-campaign-sms" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "sms-opt-in-prod-outbound-campaign-sms"
  receive_wait_time_seconds         = "0"
  redrive_policy                    = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-campaign-sms-deadletter\",\"maxReceiveCount\":5}"
  sqs_managed_sse_enabled           = "false"
  visibility_timeout_seconds        = "120"
}

resource "aws_sqs_queue" "tfer--sms-opt-in-prod-outbound-campaign-sms-deadletter" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "sms-opt-in-prod-outbound-campaign-sms-deadletter"
  receive_wait_time_seconds         = "0"
  sqs_managed_sse_enabled           = "false"
  visibility_timeout_seconds        = "120"
}

resource "aws_sqs_queue" "tfer--sms-opt-in-prod-outbound-sms" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "sms-opt-in-prod-outbound-sms"
  receive_wait_time_seconds         = "0"
  redrive_policy                    = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-sms-deadletter\",\"maxReceiveCount\":5}"
  sqs_managed_sse_enabled           = "false"
  visibility_timeout_seconds        = "120"
}

resource "aws_sqs_queue" "tfer--sms-opt-in-prod-outbound-sms-deadletter" {
  content_based_deduplication       = "false"
  delay_seconds                     = "0"
  fifo_queue                        = "false"
  kms_data_key_reuse_period_seconds = "300"
  max_message_size                  = "262144"
  message_retention_seconds         = "345600"
  name                              = "sms-opt-in-prod-outbound-sms-deadletter"
  receive_wait_time_seconds         = "0"
  sqs_managed_sse_enabled           = "false"
  visibility_timeout_seconds        = "120"
}
