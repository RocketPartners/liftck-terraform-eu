resource "aws_iam_user_policy" "tfer--ck-location-master-team_s3-location-master-access" {
  name = "s3-location-master-access"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-data-integration"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:ListBucket",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-data-integration/location-master/*"
      ],
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "ck-location-master-team"
}

resource "aws_iam_user_policy" "tfer--grafana-002E-cloudwatch_cloudwatch-read-only" {
  name = "cloudwatch-read-only"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:GetMetricData",
        "cloudwatch:GetMetricStatistics",
        "cloudwatch:ListMetrics"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "grafana.cloudwatch"
}

resource "aws_iam_user_policy" "tfer--grafana-user-2_cloudwatch-read-only" {
  name = "cloudwatch-read-only"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:GetMetricData",
        "cloudwatch:GetMetricStatistics",
        "cloudwatch:ListMetrics"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "grafana-user-2"
}

resource "aws_iam_user_policy" "tfer--matt-002E-moore_mfa-perms" {
  name = "mfa-perms"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:DeactivateMFADevice",
        "iam:DeleteVirtualMFADevice",
        "iam:EnableMFADevice",
        "iam:ResyncMFADevice",
        "iam:CreateVirtualMFADevice",
        "iam:ListMFADevices"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::*:user/$${aws:username}",
        "arn:aws:iam::*:mfa/$${aws:username}",
        "arn:aws:iam::*:sms-mfa/$${aws:username}"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": "iam:ListVirtualMFADevices",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "matt.moore"
}

resource "aws_iam_user_policy" "tfer--sscs-tobacco-club-s3-user_sscs-loyalty-bucket-read-access" {
  name = "sscs-loyalty-bucket-read-access"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::sscs-tobacco-club"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::sscs-tobacco-club/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "sscs-tobacco-club-s3-user"
}

resource "aws_iam_user_policy" "tfer--temp-dynamo-reader_dynamo" {
  name = "dynamo"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:DescribeTable",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:GetRecords"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "temp-dynamo-reader"
}
