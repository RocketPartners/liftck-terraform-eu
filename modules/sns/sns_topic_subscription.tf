resource "aws_sns_topic_subscription" "tfer--subscription-110a6aea-63ce-4027-98ce-a0069df12291" {
  endpoint             = "arn:aws:lambda:us-east-1:799611636099:function:data-sync-notifier-lambda"
  protocol             = "lambda"
  raw_message_delivery = "false"
  redrive_policy       = "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-east-1:799611636099:data-sync-notifier-sns-to-lambda-dlq-sqs\"}"
  topic_arn            = "${data.terraform_remote_state.sns.outputs.aws_sns_topic_tfer--data-sync-notifier-sns-topic_id}"
}

resource "aws_sns_topic_subscription" "tfer--subscription-13189ff6-ee86-44d5-8967-7ce1053e91aa" {
  endpoint             = "https://global.sns-api.chatbot.amazonaws.com"
  protocol             = "https"
  raw_message_delivery = "false"
  topic_arn            = "${data.terraform_remote_state.sns.outputs.aws_sns_topic_tfer--CodeStarNotifications-deployment-chatbot-8ebc25a0116b7a37dffce4866867f12e2fee3f89_id}"
}

resource "aws_sns_topic_subscription" "tfer--subscription-4469fbdb-ccf0-4d0a-a64f-aa324cdf702a" {
  endpoint             = "https://events.pagerduty.com/integration/1be1bb94d922440ed0158811b45b55ca/enqueue"
  protocol             = "https"
  raw_message_delivery = "false"
  topic_arn            = "${data.terraform_remote_state.sns.outputs.aws_sns_topic_tfer--lift-pagerduty_id}"
}
