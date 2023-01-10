
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