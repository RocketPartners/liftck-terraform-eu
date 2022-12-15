resource "aws_sns_topic" "tfer--CodeStarNotifications-deployment-chatbot-8ebc25a0116b7a37dffce4866867f12e2fee3f89" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  display_name                             = "Reserved for notifications from AWS Chatbot to Slack"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "CodeStarNotifications-deployment-chatbot-8ebc25a0116b7a37dffce4866867f12e2fee3f89"
  name_prefix                              = "CodeStarNotifications-deployment-chatbot-8ebc25a0116b7a"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sns:Publish",
      "Effect": "Allow",
      "Principal": {
        "Service": "codestar-notifications.amazonaws.com"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:CodeStarNotifications-deployment-chatbot-8ebc25a0116b7a37dffce4866867f12e2fee3f89",
      "Sid": "1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  sqs_success_feedback_sample_rate = "0"
}

resource "aws_sns_topic" "tfer--CodeStarNotifications-liftck-sms-opt-in-chatbot-6d2faf2545773ba3c6ae03a3e353594e277892a6" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  display_name                             = "Reserved for notifications from AWS Chatbot to Slack"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "CodeStarNotifications-liftck-sms-opt-in-chatbot-6d2faf2545773ba3c6ae03a3e353594e277892a6"
  name_prefix                              = "CodeStarNotifications-liftck-sms-opt-in-chatbot-6d2faf2545773b"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sns:Publish",
      "Effect": "Allow",
      "Principal": {
        "Service": "codestar-notifications.amazonaws.com"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:CodeStarNotifications-liftck-sms-opt-in-chatbot-6d2faf2545773ba3c6ae03a3e353594e277892a6",
      "Sid": "1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  sqs_success_feedback_sample_rate = "0"
}

resource "aws_sns_topic" "tfer--alarms" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "alarms"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "799611636099"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:alarms",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  sqs_success_feedback_sample_rate = "0"
}

resource "aws_sns_topic" "tfer--data-sync-notifier-sns-topic" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  display_name                             = "data-sync-notifier-sns-topic"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "data-sync-notifier-sns-topic"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "799611636099"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:data-sync-notifier-sns-topic",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  sqs_success_feedback_sample_rate = "0"
}

resource "aws_sns_topic" "tfer--dynamodb" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "dynamodb"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "799611636099"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:dynamodb",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  sqs_success_feedback_sample_rate = "0"
}

resource "aws_sns_topic" "tfer--forgot-password-topic" {
  application_success_feedback_sample_rate = "100"
  content_based_deduplication              = "false"
  display_name                             = "User Forgot Password Topic"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "100"
  lambda_success_feedback_sample_rate      = "100"
  name                                     = "forgot-password-topic"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:Publish",
        "SNS:RemovePermission",
        "SNS:SetTopicAttributes",
        "SNS:DeleteTopic",
        "SNS:ListSubscriptionsByTopic",
        "SNS:GetTopicAttributes",
        "SNS:Receive",
        "SNS:AddPermission",
        "SNS:Subscribe"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "799611636099"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:forgot-password-topic",
      "Sid": "__default_statement_ID"
    },
    {
      "Action": "SNS:Publish",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:forgot-password-topic",
      "Sid": "__console_pub_0"
    },
    {
      "Action": [
        "SNS:Subscribe",
        "SNS:Receive"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:forgot-password-topic",
      "Sid": "__console_sub_0"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  sqs_success_feedback_sample_rate = "100"
}

resource "aws_sns_topic" "tfer--lift-pagerduty" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "lift-pagerduty"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "799611636099"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:lift-pagerduty",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  sqs_success_feedback_sample_rate = "0"
}

resource "aws_sns_topic" "tfer--sms-alarms" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  display_name                             = "sms-alarms"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "sms-alarms"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish",
        "SNS:Receive"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "799611636099"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:799611636099:sms-alarms",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  sqs_success_feedback_sample_rate = "0"
}
