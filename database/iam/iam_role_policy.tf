resource "aws_iam_role_policy" "tfer--WizAccessRole_WizFullPolicy" {
  name = "WizFullPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "acm:GetCertificate",
        "apigateway:GET",
        "backup:DescribeGlobalSettings",
        "backup:GetBackupVaultAccessPolicy",
        "backup:GetBackupVaultNotifications",
        "backup:ListBackupVaults",
        "backup:ListTags",
        "cloudtrail:GetInsightSelectors",
        "cloudtrail:ListTrails",
        "codebuild:BatchGetProjects",
        "codebuild:GetResourcePolicy",
        "codebuild:ListProjects",
        "cognito-identity:DescribeIdentityPool",
        "dynamodb:DescribeExport",
        "dynamodb:DescribeKinesisStreamingDestination",
        "dynamodb:ListExports",
        "ec2:GetEbsEncryptionByDefault",
        "ec2:SearchTransitGatewayRoutes",
        "ecr:BatchGetImage",
        "ecr:GetAuthorizationToken",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetRegistryPolicy",
        "eks:ListTagsForResource",
        "elasticfilesystem:DescribeAccessPoints",
        "elasticfilesystem:DescribeFileSystemPolicy",
        "elasticmapreduce:GetAutoTerminationPolicy",
        "elasticmapreduce:GetManagedScalingPolicy",
        "glacier:GetDataRetrievalPolicy",
        "glacier:GetVaultLock",
        "glue:GetConnection",
        "glue:GetSecurityConfiguration",
        "glue:GetTags",
        "health:DescribeAffectedAccountsForOrganization",
        "health:DescribeAffectedEntities",
        "health:DescribeAffectedEntitiesForOrganization",
        "health:DescribeEntityAggregates",
        "health:DescribeEventAggregates",
        "health:DescribeEventDetails",
        "health:DescribeEventDetailsForOrganization",
        "health:DescribeEventTypes",
        "health:DescribeEvents",
        "health:DescribeEventsForOrganization",
        "health:DescribeHealthServiceStatusForOrganization",
        "kafka:ListClusters",
        "kendra:DescribeDataSource",
        "kendra:DescribeIndex",
        "kendra:ListDataSources",
        "kendra:ListIndices",
        "kendra:ListTagsForResource",
        "kms:GetKeyRotationStatus",
        "kms:ListResourceTags",
        "lambda:GetFunction",
        "lambda:GetLayerVersion",
        "ses:DescribeActiveReceiptRuleSet",
        "ses:GetAccount",
        "ses:GetConfigurationSet",
        "ses:GetConfigurationSetEventDestinations",
        "ses:GetDedicatedIps",
        "ses:GetEmailIdentity",
        "ses:ListConfigurationSets",
        "ses:ListDedicatedIpPools",
        "ses:ListReceiptFilters",
        "wafv2:GetLoggingConfiguration",
        "wafv2:GetWebACLForResource"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ec2:CopySnapshot",
        "ec2:CreateSnapshot",
        "kms:CreateKey"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ec2:CreateTags"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:*::snapshot/*"
    },
    {
      "Action": "kms:CreateAlias",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:*:*:alias/wizKey",
        "arn:aws:kms:*:*:key/*"
      ]
    },
    {
      "Action": [
        "kms:CreateGrant",
        "kms:ReEncryptFrom"
      ],
      "Condition": {
        "StringLike": {
          "kms:ViaService": "ec2.*.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "kms:GetKeyPolicy",
        "kms:PutKeyPolicy"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/wiz": "auto-gen-cmk"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ec2:DeleteSnapshot",
        "ec2:ModifySnapshotAttribute"
      ],
      "Condition": {
        "StringEquals": {
          "ec2:ResourceTag/wiz": "auto-gen-snapshot"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:GetBucketLocation",
        "s3:GetObjectTagging",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::*terraform*",
        "arn:aws:s3:::*tfstate*",
        "arn:aws:s3:::*tf?state*",
        "arn:aws:s3:::*cloudtrail*",
        "arn:aws:s3:::elasticbeanstalk-*"
      ],
      "Sid": "WizAccessS3"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "WizAccessRole"
}

resource "aws_iam_role_policy" "tfer--age-verification-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "apigateway:*",
        "codedeploy:*",
        "cloudformation:CreateChangeSet",
        "dynamodb:*",
        "events:*",
        "ec2:*",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "lambda:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutMetricFilter",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "age-verification-lambda-role"
}

resource "aws_iam_role_policy" "tfer--age-verification-pipeline-CodeBuildServiceRole-782S4NDHA69J_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "age-verification-pipeline-CodeBuildServiceRole-782S4NDHA69J"
}

resource "aws_iam_role_policy" "tfer--age-verification-pipeline-CodePipelineServiceRole-MAT9FQ5XOEX5_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "cloudformation:*",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:UpdateStack",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "age-verification-pipeline-CodePipelineServiceRole-MAT9FQ5XOEX5"
}

resource "aws_iam_role_policy" "tfer--age-verification-stack-LambdaRole-2PX5TNE1WJ0A_LambdaRolePolicy0" {
  name = "LambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:DeleteItem",
        "dynamodb:DescribeTable",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:Query",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:us-east-1:799611636099:table/customer-details"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "age-verification-stack-LambdaRole-2PX5TNE1WJ0A"
}

resource "aws_iam_role_policy" "tfer--age-verification-webapp-CodeBuildServiceRole-1CUBDF12JS5FF_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*",
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts",
        "arn:aws:s3:::age-verify.circleklift.com/*",
        "arn:aws:s3:::age-verify.circleklift.com"
      ]
    },
    {
      "Action": [
        "cloudfront:CreateInvalidation",
        "cloudfront:UpdateDistribution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:cloudfront::799611636099:distribution/E2EORLV92POETZ"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "age-verification-webapp-CodeBuildServiceRole-1CUBDF12JS5FF"
}

resource "aws_iam_role_policy" "tfer--age-verification-webapp-CodePipelineServiceRole-FCOVJSIHG9M4_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*",
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts"
      ]
    },
    {
      "Action": [
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "age-verification-webapp-CodePipelineServiceRole-FCOVJSIHG9M4"
}

resource "aws_iam_role_policy" "tfer--alarm-lambda-role_AWSLambdaBasicExecutionRole" {
  name = "AWSLambdaBasicExecutionRole"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/prod-monitor:*",
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/prod-notify:*",
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/prod-scheduler:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "alarm-lambda-role"
}

resource "aws_iam_role_policy" "tfer--alarm-lambda-role_AWSLambdaVPCAccessExecutionRole" {
  name = "AWSLambdaVPCAccessExecutionRole"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeNetworkInterfaces"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "alarm-lambda-role"
}

resource "aws_iam_role_policy" "tfer--alarm-lambda-role_AdditionalNeededLambdaPerms" {
  name = "AdditionalNeededLambdaPerms"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ses:SendEmail",
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "alarm-lambda-role"
}

resource "aws_iam_role_policy" "tfer--circlek-smsoptin-kinesis-stream-role_oneClick_firehose_delivery_role_1581530478484" {
  name = "oneClick_firehose_delivery_role_1581530478484"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "glue:GetTable",
        "glue:GetTableVersion",
        "glue:GetTableVersions"
      ],
      "Effect": "Allow",
      "Resource": "*",
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
        "arn:aws:s3:::circlek-prod-firehose",
        "arn:aws:s3:::circlek-prod-firehose/*",
        "arn:aws:s3:::%FIREHOSE_BUCKET_NAME%",
        "arn:aws:s3:::%FIREHOSE_BUCKET_NAME%/*"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:GetFunctionConfiguration"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:us-east-1:799611636099:function:%FIREHOSE_DEFAULT_FUNCTION%:%FIREHOSE_DEFAULT_VERSION%",
      "Sid": ""
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/kinesisfirehose/:log-stream:*"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "kinesis:DescribeStream",
        "kinesis:GetShardIterator",
        "kinesis:GetRecords"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:kinesis:us-east-1:799611636099:stream/%FIREHOSE_STREAM_NAME%",
      "Sid": ""
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "kinesis.%REGION_NAME%.amazonaws.com"
        },
        "StringLike": {
          "kms:EncryptionContext:aws:kinesis:arn": "arn:aws:kinesis:%REGION_NAME%:799611636099:stream/%FIREHOSE_STREAM_NAME%"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:799611636099:key/%SSE_KEY_ID%"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "circlek-smsoptin-kinesis-stream-role"
}

resource "aws_iam_role_policy" "tfer--circlek-smsoptin-kinesis-stream-role_oneClick_firehose_delivery_role_1581530646705" {
  name = "oneClick_firehose_delivery_role_1581530646705"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "glue:GetTable",
        "glue:GetTableVersion",
        "glue:GetTableVersions"
      ],
      "Effect": "Allow",
      "Resource": "*",
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
        "arn:aws:s3:::circlek-prod-firehose",
        "arn:aws:s3:::circlek-prod-firehose/*",
        "arn:aws:s3:::%FIREHOSE_BUCKET_NAME%",
        "arn:aws:s3:::%FIREHOSE_BUCKET_NAME%/*"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:GetFunctionConfiguration"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:us-east-1:799611636099:function:%FIREHOSE_DEFAULT_FUNCTION%:%FIREHOSE_DEFAULT_VERSION%",
      "Sid": ""
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/kinesisfirehose/circleklift-sms-opt-in:log-stream:*"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "kinesis:DescribeStream",
        "kinesis:GetShardIterator",
        "kinesis:GetRecords"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:kinesis:us-east-1:799611636099:stream/%FIREHOSE_STREAM_NAME%",
      "Sid": ""
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "kinesis.%REGION_NAME%.amazonaws.com"
        },
        "StringLike": {
          "kms:EncryptionContext:aws:kinesis:arn": "arn:aws:kinesis:%REGION_NAME%:799611636099:stream/%FIREHOSE_STREAM_NAME%"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:799611636099:key/%SSE_KEY_ID%"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "circlek-smsoptin-kinesis-stream-role"
}

resource "aws_iam_role_policy" "tfer--circleklift-basket-kinesis-stream-role_kinesis" {
  name = "kinesis"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "redshift:GetClusterCredentials",
        "redshift:ListSchemas",
        "redshift:ListTables",
        "redshift:ListDatabases",
        "redshift:ExecuteQuery",
        "redshift:FetchResults",
        "redshift:CancelQuery",
        "redshift:DescribeClusters",
        "redshift:DescribeQuery",
        "redshift:DescribeTable",
        "redshift:ViewQueriesFromConsole",
        "redshift:DescribeSavedQueries",
        "redshift:CreateSavedQuery",
        "redshift:DeleteSavedQueries",
        "redshift:ModifySavedQuery"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "circleklift-basket-kinesis-stream-role"
}

resource "aws_iam_role_policy" "tfer--circleklift-event-kinesis-stream-role_kinesis" {
  name = "kinesis"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "redshift:GetClusterCredentials",
        "redshift:ListSchemas",
        "redshift:ListTables",
        "redshift:ListDatabases",
        "redshift:ExecuteQuery",
        "redshift:FetchResults",
        "redshift:CancelQuery",
        "redshift:DescribeClusters",
        "redshift:DescribeQuery",
        "redshift:DescribeTable",
        "redshift:ViewQueriesFromConsole",
        "redshift:DescribeSavedQueries",
        "redshift:CreateSavedQuery",
        "redshift:DeleteSavedQueries",
        "redshift:ModifySavedQuery"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "circleklift-event-kinesis-stream-role"
}

resource "aws_iam_role_policy" "tfer--circleklift-impression-kinesis-stream-role_kinesis" {
  name = "kinesis"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "redshift:GetClusterCredentials",
        "redshift:ListSchemas",
        "redshift:ListTables",
        "redshift:ListDatabases",
        "redshift:ExecuteQuery",
        "redshift:FetchResults",
        "redshift:CancelQuery",
        "redshift:DescribeClusters",
        "redshift:DescribeQuery",
        "redshift:DescribeTable",
        "redshift:ViewQueriesFromConsole",
        "redshift:DescribeSavedQueries",
        "redshift:CreateSavedQuery",
        "redshift:DeleteSavedQueries",
        "redshift:ModifySavedQuery"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "circleklift-impression-kinesis-stream-role"
}

resource "aws_iam_role_policy" "tfer--circleklift-input-kinesis-stream-role_kinesis" {
  name = "kinesis"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "redshift:GetClusterCredentials",
        "redshift:ListSchemas",
        "redshift:ListTables",
        "redshift:ListDatabases",
        "redshift:ExecuteQuery",
        "redshift:FetchResults",
        "redshift:CancelQuery",
        "redshift:DescribeClusters",
        "redshift:DescribeQuery",
        "redshift:DescribeTable",
        "redshift:ViewQueriesFromConsole",
        "redshift:DescribeSavedQueries",
        "redshift:CreateSavedQuery",
        "redshift:DeleteSavedQueries",
        "redshift:ModifySavedQuery"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "circleklift-input-kinesis-stream-role"
}

resource "aws_iam_role_policy" "tfer--circleklift-lineitem-kinesis-stream-role_kinesis" {
  name = "kinesis"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "redshift:GetClusterCredentials",
        "redshift:ListSchemas",
        "redshift:ListTables",
        "redshift:ListDatabases",
        "redshift:ExecuteQuery",
        "redshift:FetchResults",
        "redshift:CancelQuery",
        "redshift:DescribeClusters",
        "redshift:DescribeQuery",
        "redshift:DescribeTable",
        "redshift:ViewQueriesFromConsole",
        "redshift:DescribeSavedQueries",
        "redshift:CreateSavedQuery",
        "redshift:DeleteSavedQueries",
        "redshift:ModifySavedQuery"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "circleklift-lineitem-kinesis-stream-role"
}

resource "aws_iam_role_policy" "tfer--circleklift-message-kinesis-stream-role_kinesis" {
  name = "kinesis"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "redshift:GetClusterCredentials",
        "redshift:ListSchemas",
        "redshift:ListTables",
        "redshift:ListDatabases",
        "redshift:ExecuteQuery",
        "redshift:FetchResults",
        "redshift:CancelQuery",
        "redshift:DescribeClusters",
        "redshift:DescribeQuery",
        "redshift:DescribeTable",
        "redshift:ViewQueriesFromConsole",
        "redshift:DescribeSavedQueries",
        "redshift:CreateSavedQuery",
        "redshift:DeleteSavedQueries",
        "redshift:ModifySavedQuery"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "circleklift-message-kinesis-stream-role"
}

resource "aws_iam_role_policy" "tfer--circleklift-offer-kinesis-stream-role_kinesis" {
  name = "kinesis"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "redshift:GetClusterCredentials",
        "redshift:ListSchemas",
        "redshift:ListTables",
        "redshift:ListDatabases",
        "redshift:ExecuteQuery",
        "redshift:FetchResults",
        "redshift:CancelQuery",
        "redshift:DescribeClusters",
        "redshift:DescribeQuery",
        "redshift:DescribeTable",
        "redshift:ViewQueriesFromConsole",
        "redshift:DescribeSavedQueries",
        "redshift:CreateSavedQuery",
        "redshift:DeleteSavedQueries",
        "redshift:ModifySavedQuery"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "circleklift-offer-kinesis-stream-role"
}

resource "aws_iam_role_policy" "tfer--cirk-player-api-task-role_cirk-player-api-task-role-policy" {
  name = "cirk-player-api-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/api:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:PutItem",
        "dynamodb:DescribeTable",
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:UpdateItem",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "firehose:PutRecord",
        "firehose:PutRecordBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "sqs:SendMessageBatch",
        "sqs:SendMessage"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:*:799611636099:pricebook-indexer-queue"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-player-api-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-player-event-api-task-role_cirk-player-event-api-task-role-policy" {
  name = "cirk-player-event-api-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/event-api:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:PutItem",
        "dynamodb:DescribeTable",
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:UpdateItem",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "firehose:PutRecord",
        "firehose:PutRecordBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-player-event-api-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-player-file-api-task-role_cirk-player-file-api-task-role-policy" {
  name = "cirk-player-file-api-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/file-api:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:PutItem",
        "dynamodb:DescribeTable",
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:UpdateItem",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "firehose:PutRecord",
        "firehose:PutRecordBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-player-file-api-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-player-lift-okta-integration-task-role_cirk-player-lift-okta-integration-task-role-policy" {
  name = "cirk-player-lift-okta-integration-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/lift-okta-integration:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-player-lift-okta-integration-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-player-loyalty-task-role_cirk-player-loyalty-task-role-policy" {
  name = "cirk-player-loyalty-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/loyalty:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-player-loyalty-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-player-ngrp-proxy-task-role_cirk-player-ngrp-proxy-task-role-policy" {
  name = "cirk-player-ngrp-proxy-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/ngrp-proxy:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:PutItem",
        "dynamodb:DescribeTable",
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:UpdateItem",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "firehose:PutRecord",
        "firehose:PutRecordBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-player-ngrp-proxy-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-player-pricebook-indexer-task-role_cirk-player-pricebook-indexer-task-role-policy" {
  name = "cirk-player-pricebook-indexer-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/pricebook-indexer:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:DeleteObject",
        "firehose:PutRecord",
        "firehose:PutRecordBatch",
        "sqs:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-player-pricebook-indexer-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-player-punchcard-task-role_cirk-player-punchcard-task-role-policy" {
  name = "cirk-player-punchcard-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/punchcard:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:PutItem",
        "dynamodb:DescribeTable",
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:UpdateItem",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "firehose:PutRecord",
        "firehose:PutRecordBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-player-punchcard-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-player-token-tracker-task-role_cirk-player-token-tracker-task-role-policy" {
  name = "cirk-player-token-tracker-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/token-tracker:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:PutItem",
        "dynamodb:DescribeTable",
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:UpdateItem",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-player-token-tracker-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-portal-api-task-role_cirk-portal-api-task-role-policy" {
  name = "cirk-portal-api-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/portal/api:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:PutItem",
        "dynamodb:DescribeTable",
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:UpdateItem",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets",
        "s3:DeleteObject",
        "firehose:PutRecord",
        "firehose:PutRecordBatch",
        "ses:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-portal-api-task-role"
}

resource "aws_iam_role_policy" "tfer--cirk-reports-task-role_cirk-reports-task-role-policy" {
  name = "cirk-reports-task-role-policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/ecs/reports:*"
    },
    {
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "cloudwatch:PutMetricData",
        "s3:GetObject",
        "s3:GetObject*",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cirk-reports-task-role"
}

resource "aws_iam_role_policy" "tfer--client-logger-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "apigateway:*",
        "codedeploy:*",
        "cloudformation:CreateChangeSet",
        "cloudwatch:*",
        "events:*",
        "ec2:*",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "lambda:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "client-logger-lambda-role"
}

resource "aws_iam_role_policy" "tfer--client-logger-pipeline-CodeBuildServiceRole-R61HQ4VC9C4X_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "client-logger-pipeline-CodeBuildServiceRole-R61HQ4VC9C4X"
}

resource "aws_iam_role_policy" "tfer--client-logger-pipeline-CodePipelineServiceRole-E71DV5RUIOLR_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "cloudformation:*",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:UpdateStack",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "client-logger-pipeline-CodePipelineServiceRole-E71DV5RUIOLR"
}

resource "aws_iam_role_policy" "tfer--client-logger-stack-LambdaRole-1CTVFA7M4EANJ_LambdaRolePolicy0" {
  name = "LambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:*"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/client/tobacco-deals:*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "client-logger-stack-LambdaRole-1CTVFA7M4EANJ"
}

resource "aws_iam_role_policy" "tfer--cors-proxy-prod-us-east-1-lambdaRole_prod-cors-proxy-lambda" {
  name = "prod-cors-proxy-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/cors-proxy:*"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/cors-proxy:*:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "cors-proxy-prod-us-east-1-lambdaRole"
}

resource "aws_iam_role_policy" "tfer--data-sync-notifier-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "apigateway:*",
        "codedeploy:*",
        "cloudformation:CreateChangeSet",
        "events:*",
        "ec2:*",
        "sqs:*",
        "sns:*",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "lambda:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "data-sync-notifier-lambda-role"
}

resource "aws_iam_role_policy" "tfer--data-sync-notifier-pipelin-CodePipelineServiceRole-62LYNTYBC9S9_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "cloudformation:*",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:UpdateStack",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "data-sync-notifier-pipelin-CodePipelineServiceRole-62LYNTYBC9S9"
}

resource "aws_iam_role_policy" "tfer--data-sync-notifier-pipeline-CodeBuildServiceRole-1MAPG4MF0WDRN_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "data-sync-notifier-pipeline-CodeBuildServiceRole-1MAPG4MF0WDRN"
}

resource "aws_iam_role_policy" "tfer--data-sync-notifier-stack-LambdaRole-1UEWP9XHNWLGA_DeadLetterQueuePolicy" {
  name = "DeadLetterQueuePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sqs:SendMessage",
      "Effect": "Allow",
      "Resource": "arn:aws:sqs:us-east-1:799611636099:data-sync-notifier-lambda-dlq-sqs"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "data-sync-notifier-stack-LambdaRole-1UEWP9XHNWLGA"
}

resource "aws_iam_role_policy" "tfer--deployment-chatbot-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "cloudwatch:List*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "deployment-chatbot-role"
}

resource "aws_iam_role_policy" "tfer--generate-barcode-prod-us-east-1-lambdaRole_prod-generate-barcode-lambda" {
  name = "prod-generate-barcode-lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/generate-barcode-prod-handler:*"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/generate-barcode-prod-handler:*:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "generate-barcode-prod-us-east-1-lambdaRole"
}

resource "aws_iam_role_policy" "tfer--indexer-codepipeline-CodeBuildServiceRole-DE5LIXIR26YT_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "indexer-codepipeline-CodeBuildServiceRole-DE5LIXIR26YT"
}

resource "aws_iam_role_policy" "tfer--indexer-codepipeline-CodePipelineServiceRole-WZOYUUV21TB3_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "s3:*",
        "cloudformation:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "indexer-codepipeline-CodePipelineServiceRole-WZOYUUV21TB3"
}

resource "aws_iam_role_policy" "tfer--indexer-stack-liftckindexerRole-1DO1GBFI1SSZ9_cloudwatch-putmetric" {
  name = "cloudwatch-putmetric"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "cloudwatch:PutMetricData",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "indexer-stack-liftckindexerRole-1DO1GBFI1SSZ9"
}

resource "aws_iam_role_policy" "tfer--lambda-role-clear-tunnel-connection-sql-runner-cron_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/clear-tunnel-connection-sql-runner-cron:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-clear-tunnel-connection-sql-runner-cron"
}

resource "aws_iam_role_policy" "tfer--lambda-role-indexer-lambda_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:*",
        "codedeploy:*",
        "lambda:*",
        "cloudformation:CreateChangeSet",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "s3:*",
        "events:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-indexer-lambda"
}

resource "aws_iam_role_policy" "tfer--lambda-role-lottery-download-to-s3_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/lottery-download-to-s3:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-lottery-download-to-s3"
}

resource "aws_iam_role_policy" "tfer--lambda-role-lottery-download-to-s3_lottery-put-s3" {
  name = "lottery-put-s3"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circleklift.com/dynamic/illinoislottery/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-lottery-download-to-s3"
}

resource "aws_iam_role_policy" "tfer--lambda-role-one-time-code_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/one-time-code-lambda:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-one-time-code"
}

resource "aws_iam_role_policy" "tfer--lambda-role-power-bi-reports-prod-ad-query_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/power-bi-reports-prod-ad-query:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
    },
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-bi-reports/*"
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-power-bi-reports-prod-ad-query"
}

resource "aws_iam_role_policy" "tfer--lambda-role-power-bi-reports-prod-ad-upsert_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/power-bi-reports-prod-ad-upsert:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-bi-reports/*"
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-power-bi-reports-prod-ad-upsert"
}

resource "aws_iam_role_policy" "tfer--lambda-role-power-bi-reports-prod-cashier-query_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/power-bi-reports-prod-cashier-query:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-bi-reports/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-power-bi-reports-prod-cashier-query"
}

resource "aws_iam_role_policy" "tfer--lambda-role-power-bi-reports-prod-cashier-upsert_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/power-bi-reports-prod-cashier-upsert:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-bi-reports/*"
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-power-bi-reports-prod-cashier-upsert"
}

resource "aws_iam_role_policy" "tfer--lambda-role-row-copier-items-prod-row-copier-cron_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-items-prod-row-copier-cron:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-row-copier-items-prod-row-copier-cron"
}

resource "aws_iam_role_policy" "tfer--lambda-role-row-copier-legacylocation-prod-row-copier-cron_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-legacylocation-prod-row-copier-cron:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-row-copier-legacylocation-prod-row-copier-cron"
}

resource "aws_iam_role_policy" "tfer--lambda-role-row-copier-locations-prod-row-copier-cron_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-locations-prod-row-copier-cron:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-row-copier-locations-prod-row-copier-cron"
}

resource "aws_iam_role_policy" "tfer--lambda-role-row-copier-playerlegacy-prod-row-copier-cron_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-playerlegacy-prod-row-copier-cron:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-row-copier-playerlegacy-prod-row-copier-cron"
}

resource "aws_iam_role_policy" "tfer--lambda-role-row-copier-players-prod-row-copier-cron_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-players-prod-row-copier-cron:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-row-copier-players-prod-row-copier-cron"
}

resource "aws_iam_role_policy" "tfer--lambda-role-screenshot-maker_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/screenshot-maker:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*",
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-screenshot-maker"
}

resource "aws_iam_role_policy" "tfer--lambda-role-sms-opt-in-prod-campaign-schedule_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-campaign-schedule:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-sms-opt-in",
        "arn:aws:s3:::circlek-prod-sms-opt-in/*"
      ]
    },
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*"
      ]
    },
    {
      "Action": [
        "lambda:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-campaign-worker",
        "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-campaign-worker/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-sms-opt-in-prod-campaign-schedule"
}

resource "aws_iam_role_policy" "tfer--lambda-role-sms-opt-in-prod-campaign-worker_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-campaign-worker:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "sqs:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-campaign-worker-sms-deadletter"
      ]
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-sms-opt-in",
        "arn:aws:s3:::circlek-prod-sms-opt-in/*"
      ]
    },
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-sms-opt-in-prod-campaign-worker"
}

resource "aws_iam_role_policy" "tfer--lambda-role-sms-opt-in-prod-dynamo-to-sqs_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-dynamo-to-sqs:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/stream/2019-02-28T01:14:09.706",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*"
      ]
    },
    {
      "Action": [
        "sqs:SendMessage"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-sms",
        "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-campaign-sms"
      ]
    },
    {
      "Action": [
        "sqs:SendMessage"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-inbound-sms"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "firehose:PutRecord",
        "firehose:PutRecordBatch"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-sms-opt-in"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-sms-opt-in-prod-dynamo-to-sqs"
}

resource "aws_iam_role_policy" "tfer--lambda-role-sms-opt-in-prod-follow-up-cron_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-follow-up-cron:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-sms-opt-in-prod-follow-up-cron"
}

resource "aws_iam_role_policy" "tfer--lambda-role-sms-opt-in-prod-inbound-sms_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-inbound-sms:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "sqs:ReceiveMessage",
        "sqs:DeleteMessage",
        "sqs:GetQueueAttributes"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-inbound-sms"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-sms-opt-in-prod-inbound-sms"
}

resource "aws_iam_role_policy" "tfer--lambda-role-sms-opt-in-prod-outbound-campaign-sms_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-outbound-campaign-sms:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "sqs:SendMessage",
        "sqs:ReceiveMessage",
        "sqs:DeleteMessage",
        "sqs:GetQueueAttributes"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-campaign-sms"
      ]
    },
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-sms-opt-in-prod-outbound-campaign-sms"
}

resource "aws_iam_role_policy" "tfer--lambda-role-sms-opt-in-prod-outbound-sms_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-outbound-sms:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "sqs:SendMessage",
        "sqs:ReceiveMessage",
        "sqs:DeleteMessage",
        "sqs:GetQueueAttributes"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-sms"
      ]
    },
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-sms-opt-in-prod-outbound-sms"
}

resource "aws_iam_role_policy" "tfer--lambda-role-sms-opt-in-prod-pending-msg-cron_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-pending-msg-cron:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-sms-opt-in-prod-pending-msg-cron"
}

resource "aws_iam_role_policy" "tfer--lambda-role-sms-opt-in-prod-sms-api_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-sms-api:*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    },
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*"
      ]
    },
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-role-sms-opt-in-prod-sms-api"
}

resource "aws_iam_role_policy" "tfer--lift-okta-codepipeline-CodeBuildServiceRole-1WHTUN6L5CF1R_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:PutMetricFilter",
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/lift-okta-integration"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/lift-okta-integration"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lift-okta-codepipeline-CodeBuildServiceRole-1WHTUN6L5CF1R"
}

resource "aws_iam_role_policy" "tfer--lift-okta-codepipeline-CodePipelineServiceRole-1T9BQ7MH26KTF_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lift-okta-codepipeline-CodePipelineServiceRole-1T9BQ7MH26KTF"
}

resource "aws_iam_role_policy" "tfer--liftck-cron-CodeBuildServiceRole-G8JH0BPHRCJJ_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-cron-CodeBuildServiceRole-G8JH0BPHRCJJ"
}

resource "aws_iam_role_policy" "tfer--liftck-cron-CodePipelineServiceRole-4W1XLSR3NP65_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "cloudformation:*",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:UpdateStack",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-cron-CodePipelineServiceRole-4W1XLSR3NP65"
}

resource "aws_iam_role_policy" "tfer--liftck-cron-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "apigateway:*",
        "codedeploy:*",
        "cloudformation:CreateChangeSet",
        "dynamodb:*",
        "events:*",
        "ec2:*",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:GetRolePolicy",
        "iam:PassRole",
        "lambda:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-cron-lambda-role"
}

resource "aws_iam_role_policy" "tfer--liftck-cron-stack-UpdateActivelyScheduledLambdaRol-1AS820JNA175X_UpdateActivelyScheduledLambdaRolePolicy0" {
  name = "UpdateActivelyScheduledLambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DescribeNetworkInterfaces",
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeInstances",
        "ec2:AttachNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-cron-stack-UpdateActivelyScheduledLambdaRol-1AS820JNA175X"
}

resource "aws_iam_role_policy" "tfer--liftck-cron-stack-UpdateMasterDataFileLambdaRole-1AUUKZYSDZQW4_UpdateMasterDataFileLambdaRolePolicy0" {
  name = "UpdateMasterDataFileLambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DescribeNetworkInterfaces",
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeInstances",
        "ec2:AttachNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circlekliftdev.com/item_master/*",
        "arn:aws:s3:::files.circleklift.com/item_master/*",
        "arn:aws:s3:::files.circlekliftdev.com/item_master/",
        "arn:aws:s3:::files.circleklift.com/item_master/"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-cron-stack-UpdateMasterDataFileLambdaRole-1AUUKZYSDZQW4"
}

resource "aws_iam_role_policy" "tfer--liftck-cron-stack-UpdateOnPromoReindexLambdaRole-1FFVEMGL9INQ2_UpdateOnPromoReindexLambdaRolePolicy0" {
  name = "UpdateOnPromoReindexLambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DescribeNetworkInterfaces",
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeInstances",
        "ec2:AttachNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-cron-stack-UpdateOnPromoReindexLambdaRole-1FFVEMGL9INQ2"
}

resource "aws_iam_role_policy" "tfer--liftck-octanebuilder-prod-CodeBuildServiceRole-BQ9QQ9CK0Q3R_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion",
        "s3:ListBucket",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-octanebuilder-prod-CodeBuildServiceRole-BQ9QQ9CK0Q3R"
}

resource "aws_iam_role_policy" "tfer--liftck-octanebuilder-prod-CodePipelineServiceRole-SRMN0NZWH11_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "cloudformation:*",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:UpdateStack",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-octanebuilder-prod-CodePipelineServiceRole-SRMN0NZWH11"
}

resource "aws_iam_role_policy" "tfer--liftck-octanebuilder-prod-OctaneBuilderLambdaRole-1XI8L54K0RS7X_OctaneBuilderLambdaRolePolicy0" {
  name = "OctaneBuilderLambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DescribeNetworkInterfaces",
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeInstances",
        "ec2:AttachNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:ListBucket",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circlekliftdev.com/*",
        "arn:aws:s3:::files.circleklift.com/*",
        "arn:aws:s3:::files.circlekliftdev.com/",
        "arn:aws:s3:::files.circleklift.com/"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:ListBucket",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-octanebuilder-prod-OctaneBuilderLambdaRole-1XI8L54K0RS7X"
}

resource "aws_iam_role_policy" "tfer--liftck-octanebuilder-prod-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "apigateway:*",
        "codedeploy:*",
        "cloudformation:CreateChangeSet",
        "dynamodb:*",
        "events:*",
        "ec2:*",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:GetRolePolicy",
        "iam:PassRole",
        "lambda:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-octanebuilder-prod-lambda-role"
}

resource "aws_iam_role_policy" "tfer--liftck-octanebuilder-stack-OctaneBuilderLambdaRole-1EF3E5OFZEYP1_OctaneBuilderLambdaRolePolicy0" {
  name = "OctaneBuilderLambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DescribeNetworkInterfaces",
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeInstances",
        "ec2:AttachNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:ListBucket",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circlekliftdev.com/*",
        "arn:aws:s3:::files.circleklift.com/*",
        "arn:aws:s3:::files.circlekliftdev.com/",
        "arn:aws:s3:::files.circleklift.com/"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:ListBucket",
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-octanebuilder-stack-OctaneBuilderLambdaRole-1EF3E5OFZEYP1"
}

resource "aws_iam_role_policy" "tfer--liftck-redshift-etl-pipeli-CodePipelineServiceRole-1KBT02L9ULGRB_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "s3:*",
        "cloudformation:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-redshift-etl-pipeli-CodePipelineServiceRole-1KBT02L9ULGRB"
}

resource "aws_iam_role_policy" "tfer--liftck-redshift-etl-pipeline-CodeBuildServiceRole-RGRSFTBTJBN_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:ListBucket",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-redshift-etl-pipeline-CodeBuildServiceRole-RGRSFTBTJBN"
}

resource "aws_iam_role_policy" "tfer--liftck-redshift-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codedeploy:*",
        "lambda:*",
        "cloudformation:CreateChangeSet",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "s3:*",
        "events:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-redshift-lambda-role"
}

resource "aws_iam_role_policy" "tfer--liftck-sms-opt-in-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codedeploy:*",
        "lambda:*",
        "cloudformation:CreateChangeSet",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "s3:*",
        "events:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "liftck-sms-opt-in-lambda-role"
}

resource "aws_iam_role_policy" "tfer--loyalty-pipeline-CodeBuildServiceRole-YNPWKZJ3XQO1_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/loyalty"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "loyalty-pipeline-CodeBuildServiceRole-YNPWKZJ3XQO1"
}

resource "aws_iam_role_policy" "tfer--loyalty-pipeline-CodePipelineServiceRole-1C5EHEPY19294_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "loyalty-pipeline-CodePipelineServiceRole-1C5EHEPY19294"
}

resource "aws_iam_role_policy" "tfer--loyalty-points-counter-cod-CodePipelineServiceRole-HKUB9DWSSSJB_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "s3:*",
        "cloudformation:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "loyalty-points-counter-cod-CodePipelineServiceRole-HKUB9DWSSSJB"
}

resource "aws_iam_role_policy" "tfer--loyalty-points-counter-codepi-CodeBuildServiceRole-1RBBE63QXSIFD_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "loyalty-points-counter-codepi-CodeBuildServiceRole-1RBBE63QXSIFD"
}

resource "aws_iam_role_policy" "tfer--loyalty-points-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codedeploy:*",
        "lambda:*",
        "cloudformation:CreateChangeSet",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "s3:*",
        "events:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup",
        "dynamodb:*",
        "apigateway:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "loyalty-points-lambda-role"
}

resource "aws_iam_role_policy" "tfer--loyalty-points-stack-LoyaltyPointsLambdaRole-1DDVYF7IDPFHG_LoyaltyPointsLambdaRolePolicy0" {
  name = "LoyaltyPointsLambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:DeleteItem",
        "dynamodb:DescribeTable",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:Query",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:us-east-1:799611636099:table/loyalty-punchcard"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "loyalty-points-stack-LoyaltyPointsLambdaRole-1DDVYF7IDPFHG"
}

resource "aws_iam_role_policy" "tfer--nlb-alb-ip-updater-443-LambdaIAMRole-BKMHZIJUKEX2_Lambda-ALBasTarget" {
  name = "Lambda-ALBasTarget"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:*:*:*"
      ],
      "Sid": "LambdaLogging"
    },
    {
      "Action": [
        "s3:Get*",
        "s3:PutObject",
        "s3:CreateBucket",
        "s3:ListBucket",
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "S3"
    },
    {
      "Action": [
        "elasticloadbalancing:Describe*",
        "elasticloadbalancing:RegisterTargets",
        "elasticloadbalancing:DeregisterTargets"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ELB"
    },
    {
      "Action": [
        "cloudwatch:putMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CW"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "nlb-alb-ip-updater-443-LambdaIAMRole-BKMHZIJUKEX2"
}

resource "aws_iam_role_policy" "tfer--nlb-alb-ip-updater-80-LambdaIAMRole-1C3OF1M1SRD3B_Lambda-ALBasTarget" {
  name = "Lambda-ALBasTarget"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:*:*:*"
      ],
      "Sid": "LambdaLogging"
    },
    {
      "Action": [
        "s3:Get*",
        "s3:PutObject",
        "s3:CreateBucket",
        "s3:ListBucket",
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "S3"
    },
    {
      "Action": [
        "elasticloadbalancing:Describe*",
        "elasticloadbalancing:RegisterTargets",
        "elasticloadbalancing:DeregisterTargets"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ELB"
    },
    {
      "Action": [
        "cloudwatch:putMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CW"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "nlb-alb-ip-updater-80-LambdaIAMRole-1C3OF1M1SRD3B"
}

resource "aws_iam_role_policy" "tfer--player-api-codepipeline-CodeBuildServiceRole-W3M84CEDMGQJ_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken",
        "ses:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/player-api"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-api-codepipeline-CodeBuildServiceRole-W3M84CEDMGQJ"
}

resource "aws_iam_role_policy" "tfer--player-api-codepipeline-CodePipelineServiceRole-15O2N7I0YNRSE_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-api-codepipeline-CodePipelineServiceRole-15O2N7I0YNRSE"
}

resource "aws_iam_role_policy" "tfer--player-codepipeline-stack-CodeBuildServiceRole-FGYZJYOWQ32Q_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ssm:GetParameters"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ssm:us-east-1:627729951075:parameter/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-codepipeline-stack-CodeBuildServiceRole-FGYZJYOWQ32Q"
}

resource "aws_iam_role_policy" "tfer--player-codepipeline-stack-CodePipelineServiceRole-19DB9Q5WJCRXS_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "s3:*",
        "cloudformation:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-codepipeline-stack-CodePipelineServiceRole-19DB9Q5WJCRXS"
}

resource "aws_iam_role_policy" "tfer--player-event-api-codepipel-CodePipelineServiceRole-1H5SC4DE58NX1_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-event-api-codepipel-CodePipelineServiceRole-1H5SC4DE58NX1"
}

resource "aws_iam_role_policy" "tfer--player-event-api-codepipeline-CodeBuildServiceRole-2F03SPL7P2M8_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken",
        "ses:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/player-event-api"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-event-api-codepipeline-CodeBuildServiceRole-2F03SPL7P2M8"
}

resource "aws_iam_role_policy" "tfer--player-file-api-codepipeli-CodePipelineServiceRole-L66871B73B7Z_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-file-api-codepipeli-CodePipelineServiceRole-L66871B73B7Z"
}

resource "aws_iam_role_policy" "tfer--player-file-api-codepipeline-CodeBuildServiceRole-9KEVQB0EETDN_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken",
        "ses:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/player-file-api"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-file-api-codepipeline-CodeBuildServiceRole-9KEVQB0EETDN"
}

resource "aws_iam_role_policy" "tfer--player-ngrp-proxy-codepipe-CodePipelineServiceRole-TZFR65AAFHWN_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-ngrp-proxy-codepipe-CodePipelineServiceRole-TZFR65AAFHWN"
}

resource "aws_iam_role_policy" "tfer--player-ngrp-proxy-codepipelin-CodeBuildServiceRole-YB8DEKD5VEOW_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken",
        "ses:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/player-ngrp-proxy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-ngrp-proxy-codepipelin-CodeBuildServiceRole-YB8DEKD5VEOW"
}

resource "aws_iam_role_policy" "tfer--player-punchcard-codepipel-CodePipelineServiceRole-LK79VG22HMCA_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-punchcard-codepipel-CodePipelineServiceRole-LK79VG22HMCA"
}

resource "aws_iam_role_policy" "tfer--player-punchcard-codepipeline-CodeBuildServiceRole-Y5UHJWGN21TP_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken",
        "ses:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/player-punchcard"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "player-punchcard-codepipeline-CodeBuildServiceRole-Y5UHJWGN21TP"
}

resource "aws_iam_role_policy" "tfer--portal-api-codepipeline-CodeBuildServiceRole-7Q0AVOGJ8P9U_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken",
        "ses:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/portal-api"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "portal-api-codepipeline-CodeBuildServiceRole-7Q0AVOGJ8P9U"
}

resource "aws_iam_role_policy" "tfer--portal-api-codepipeline-CodePipelineServiceRole-L73HYPBGXC2L_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "portal-api-codepipeline-CodePipelineServiceRole-L73HYPBGXC2L"
}

resource "aws_iam_role_policy" "tfer--portal-webapp-CodeBuildServiceRole-1UGM164AOPYEF_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*",
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts",
        "arn:aws:s3:::circlek-prod-portal-webapp/*",
        "arn:aws:s3:::circlek-prod-portal-webapp"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "portal-webapp-CodeBuildServiceRole-1UGM164AOPYEF"
}

resource "aws_iam_role_policy" "tfer--portal-webapp-CodePipelineServiceRole-TPMNY24WDR5D_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*",
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts"
      ]
    },
    {
      "Action": [
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "portal-webapp-CodePipelineServiceRole-TPMNY24WDR5D"
}

resource "aws_iam_role_policy" "tfer--pricebook-indexer-codepipe-CodePipelineServiceRole-1U8ILPNBAZJ86_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "pricebook-indexer-codepipe-CodePipelineServiceRole-1U8ILPNBAZJ86"
}

resource "aws_iam_role_policy" "tfer--pricebook-indexer-codepipelin-CodeBuildServiceRole-1AFLWGDSZKXX6_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:PutMetricFilter",
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/pricebook-indexer"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/pricebook-indexer"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "pricebook-indexer-codepipelin-CodeBuildServiceRole-1AFLWGDSZKXX6"
}

resource "aws_iam_role_policy" "tfer--redshift-altria-role_s3-access" {
  name = "s3-access"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutAnalyticsConfiguration",
        "s3:GetObjectVersionTagging",
        "s3:CreateBucket",
        "s3:ReplicateObject",
        "s3:GetObjectAcl",
        "s3:DeleteBucketWebsite",
        "s3:PutLifecycleConfiguration",
        "s3:GetObjectVersionAcl",
        "s3:PutObjectTagging",
        "s3:DeleteObject",
        "s3:DeleteObjectTagging",
        "s3:GetBucketWebsite",
        "s3:PutReplicationConfiguration",
        "s3:DeleteObjectVersionTagging",
        "s3:GetBucketNotification",
        "s3:PutBucketCORS",
        "s3:GetReplicationConfiguration",
        "s3:ListMultipartUploadParts",
        "s3:PutObject",
        "s3:GetObject",
        "s3:PutBucketNotification",
        "s3:PutBucketLogging",
        "s3:GetAnalyticsConfiguration",
        "s3:GetObjectVersionForReplication",
        "s3:GetLifecycleConfiguration",
        "s3:GetInventoryConfiguration",
        "s3:GetBucketTagging",
        "s3:PutAccelerateConfiguration",
        "s3:DeleteObjectVersion",
        "s3:GetBucketLogging",
        "s3:ListBucketVersions",
        "s3:ReplicateTags",
        "s3:RestoreObject",
        "s3:ListBucket",
        "s3:GetAccelerateConfiguration",
        "s3:GetBucketPolicy",
        "s3:GetObjectVersionTorrent",
        "s3:AbortMultipartUpload",
        "s3:PutBucketTagging",
        "s3:GetBucketRequestPayment",
        "s3:GetObjectTagging",
        "s3:GetMetricsConfiguration",
        "s3:DeleteBucket",
        "s3:PutBucketVersioning",
        "ec2:RebootInstances",
        "s3:ListBucketMultipartUploads",
        "s3:PutMetricsConfiguration",
        "s3:PutObjectVersionTagging",
        "s3:GetBucketVersioning",
        "s3:GetBucketAcl",
        "s3:PutInventoryConfiguration",
        "s3:GetObjectTorrent",
        "s3:PutBucketWebsite",
        "s3:PutBucketRequestPayment",
        "s3:GetBucketCORS",
        "s3:GetBucketLocation",
        "s3:ReplicateDelete",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::ck-altria-files",
        "arn:aws:s3:::ck-altria-files/*"
      ],
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "redshift-altria-role"
}

resource "aws_iam_role_policy" "tfer--reports-pipeline-CodeBuildServiceRole-1JWPGVYJ3ZDEH_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/reports"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "reports-pipeline-CodeBuildServiceRole-1JWPGVYJ3ZDEH"
}

resource "aws_iam_role_policy" "tfer--reports-pipeline-CodePipelineServiceRole-TJIPOTRA2WVJ_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "reports-pipeline-CodePipelineServiceRole-TJIPOTRA2WVJ"
}

resource "aws_iam_role_policy" "tfer--rocket-etl-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codedeploy:*",
        "lambda:*",
        "cloudformation:CreateChangeSet",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "s3:*",
        "events:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup",
        "ec2:*",
        "ssm:Get*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rocket-etl-lambda-role"
}

resource "aws_iam_role_policy" "tfer--rocket-etl-pipeline-CodeBuildServiceRole-X2GICKF6R8IC_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rocket-etl-pipeline-CodeBuildServiceRole-X2GICKF6R8IC"
}

resource "aws_iam_role_policy" "tfer--rocket-etl-pipeline-CodePipelineServiceRole-6NDLMS200W4A_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "s3:*",
        "cloudformation:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rocket-etl-pipeline-CodePipelineServiceRole-6NDLMS200W4A"
}

resource "aws_iam_role_policy" "tfer--rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q_RocketEtlLambdaRolePolicy1" {
  name = "RocketEtlLambdaRolePolicy1"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectACL"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-etl"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q"
}

resource "aws_iam_role_policy" "tfer--rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q_RocketEtlLambdaRolePolicy2" {
  name = "RocketEtlLambdaRolePolicy2"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q"
}

resource "aws_iam_role_policy" "tfer--rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q_RocketEtlLambdaRolePolicy3" {
  name = "RocketEtlLambdaRolePolicy3"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ssm:Get*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q"
}

resource "aws_iam_role_policy" "tfer--scheduler-lambda-role_AWSLambdaBasicExecutionRole" {
  name = "AWSLambdaBasicExecutionRole"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/prod-scheduler:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "scheduler-lambda-role"
}

resource "aws_iam_role_policy" "tfer--scheduler-lambda-role_AWSLambdaVPCAccessExecutionRole" {
  name = "AWSLambdaVPCAccessExecutionRole"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeNetworkInterfaces"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "scheduler-lambda-role"
}

resource "aws_iam_role_policy" "tfer--scheduler-lambda-role_InvokeAlarmLambdas" {
  name = "InvokeAlarmLambdas"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "lambda:InvokeFunction",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:us-east-1:799611636099:function:prod-monitor",
        "arn:aws:lambda:us-east-1:799611636099:function:prod-notify"
      ]
    },
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-cloudformation-builds/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "scheduler-lambda-role"
}

resource "aws_iam_role_policy" "tfer--sip-and-save-frontend-pipe-CodePipelineServiceRole-OVD3WRF3RMTU_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*",
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts"
      ]
    },
    {
      "Action": [
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "codestar-connections:UseConnection",
      "Effect": "Allow",
      "Resource": "arn:aws:codestar-connections:us-east-1:799611636099:connection/78ef6c8d-5112-47ba-b894-4fb1d5db2c4e"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "sip-and-save-frontend-pipe-CodePipelineServiceRole-OVD3WRF3RMTU"
}

resource "aws_iam_role_policy" "tfer--sip-and-save-frontend-pipelin-CodeBuildServiceRole-RT2J021ULM3S_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*",
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts",
        "arn:aws:s3:::sip-and-save.circlekoffers.com/*",
        "arn:aws:s3:::sip-and-save.circlekoffers.com"
      ]
    },
    {
      "Action": [
        "cloudfront:CreateInvalidation",
        "cloudfront:UpdateDistribution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:cloudfront::799611636099:distribution/E3KVPGCKOL3QIB"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "sip-and-save-frontend-pipelin-CodeBuildServiceRole-RT2J021ULM3S"
}

resource "aws_iam_role_policy" "tfer--sms-pipeline-stack-CodeBuildServiceRole-AKVMW66V6ZH1_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "lambda:UpdateFunctionCode",
        "ecr:GetAuthorizationToken",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:ListBucket",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "sms-pipeline-stack-CodeBuildServiceRole-AKVMW66V6ZH1"
}

resource "aws_iam_role_policy" "tfer--sms-pipeline-stack-CodePipelineServiceRole-1MKBAFPWAK7NH_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "s3:*",
        "cloudformation:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeStacks",
        "cloudformation:UpdateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "sms-pipeline-stack-CodePipelineServiceRole-1MKBAFPWAK7NH"
}

resource "aws_iam_role_policy" "tfer--tobacco-deals-pipeline-CodeBuildServiceRole-1GL9DHX6AY3PK_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*",
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts",
        "arn:aws:s3:::tobacco-deals.circleklift.com/*",
        "arn:aws:s3:::tobacco-deals.circleklift.com"
      ]
    },
    {
      "Action": [
        "cloudfront:CreateInvalidation",
        "cloudfront:UpdateDistribution"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:cloudfront::799611636099:distribution/EULHRLCLOCQJA"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "tobacco-deals-pipeline-CodeBuildServiceRole-1GL9DHX6AY3PK"
}

resource "aws_iam_role_policy" "tfer--tobacco-deals-pipeline-CodePipelineServiceRole-1PO9BL5VBUHKL_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*",
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts"
      ]
    },
    {
      "Action": [
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "tobacco-deals-pipeline-CodePipelineServiceRole-1PO9BL5VBUHKL"
}

resource "aws_iam_role_policy" "tfer--token-tracker-pipeline-CodeBuildServiceRole-LOZXUXT4P8ZY_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
    },
    {
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:us-east-1:799611636099:repository/token-tracker"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "token-tracker-pipeline-CodeBuildServiceRole-LOZXUXT4P8ZY"
}

resource "aws_iam_role_policy" "tfer--token-tracker-pipeline-CodePipelineServiceRole-NATFOTS2OD93_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketVersioning"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-codepipeline-artifacts/*"
      ]
    },
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuilds",
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "token-tracker-pipeline-CodePipelineServiceRole-NATFOTS2OD93"
}

resource "aws_iam_role_policy" "tfer--url-shortener-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "apigateway:*",
        "codedeploy:*",
        "cloudformation:CreateChangeSet",
        "dynamodb:*",
        "events:*",
        "ec2:*",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "lambda:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutMetricFilter",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "url-shortener-lambda-role"
}

resource "aws_iam_role_policy" "tfer--url-shortener-pipeline-CodeBuildServiceRole-UKLGGV03YG4S_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:PutMetricFilter",
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "url-shortener-pipeline-CodeBuildServiceRole-UKLGGV03YG4S"
}

resource "aws_iam_role_policy" "tfer--url-shortener-pipeline-CodePipelineServiceRole-K087Z21LJECJ_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "cloudformation:*",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:UpdateStack",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "url-shortener-pipeline-CodePipelineServiceRole-K087Z21LJECJ"
}

resource "aws_iam_role_policy" "tfer--url-shortener-stack-LambdaRole-1I1JN7LNI1Q4D_LambdaRolePolicy0" {
  name = "LambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    },
    {
      "Action": [
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:DeleteItem",
        "dynamodb:DescribeTable",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:Query",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:us-east-1:799611636099:table/url-shortener"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "url-shortener-stack-LambdaRole-1I1JN7LNI1Q4D"
}

resource "aws_iam_role_policy" "tfer--verification-codes-lambda-role_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "apigateway:*",
        "codedeploy:*",
        "cloudformation:CreateChangeSet",
        "dynamodb:*",
        "events:*",
        "ec2:*",
        "iam:GetRole",
        "iam:CreateRole",
        "iam:DeleteRole",
        "iam:PutRolePolicy",
        "iam:AttachRolePolicy",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PassRole",
        "lambda:*",
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:PutRetentionPolicy",
        "logs:DeleteLogGroup",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "verification-codes-lambda-role"
}

resource "aws_iam_role_policy" "tfer--verification-codes-stack-LambdaRole-UP7587DAUKVE_LambdaRolePolicy0" {
  name = "LambdaRolePolicy0"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "dynamodb:DeleteItem",
        "dynamodb:DescribeTable",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:Query",
        "dynamodb:UpdateItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:us-east-1:799611636099:table/verification-codes"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "verification-codes-stack-LambdaRole-UP7587DAUKVE"
}

resource "aws_iam_role_policy" "tfer--verification-passcode-pipe-CodePipelineServiceRole-1TZZ7SXC6YJFJ_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codedeploy:CreateDeployment",
        "codedeploy:GetApplication",
        "codedeploy:GetApplicationRevision",
        "codedeploy:GetDeployment",
        "codedeploy:GetDeploymentConfig",
        "codedeploy:RegisterApplicationRevision"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudwatch:*",
        "cloudformation:*",
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:ListFunctions"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:CreateChangeSet",
        "cloudformation:CreateStack",
        "cloudformation:DeleteChangeSet",
        "cloudformation:DeleteStack",
        "cloudformation:DescribeChangeSet",
        "cloudformation:DescribeStacks",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:UpdateStack",
        "cloudformation:SetStackPolicy",
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "cloudformation:ValidateTemplate"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "verification-passcode-pipe-CodePipelineServiceRole-1TZZ7SXC6YJFJ"
}

resource "aws_iam_role_policy" "tfer--verification-passcode-pipelin-CodeBuildServiceRole-5Y7QG81POLY8_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "s3:GetObject",
        "s3:PutObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "verification-passcode-pipelin-CodeBuildServiceRole-5Y7QG81POLY8"
}
