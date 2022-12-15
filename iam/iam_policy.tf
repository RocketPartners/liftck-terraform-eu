resource "aws_iam_policy" "tfer--AWS-Chatbot-NotificationsOnly-Policy-430ecf21-ee80-4f61-9131-cdbf2a7620be" {
  description = "NotificationsOnly policy for AWS Chatbot"
  name        = "AWS-Chatbot-NotificationsOnly-Policy-430ecf21-ee80-4f61-9131-cdbf2a7620be"
  path        = "/service-role/"

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
}

resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-us-east-1-liftck-cron-pipeline" {
  description = "Policy used in trust relationship with CodePipeline"
  name        = "AWSCodePipelineServiceRole-us-east-1-liftck-cron-pipeline"
  path        = "/service-role/"

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
            "cloudformation.amazonaws.com",
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "codecommit:CancelUploadArchive",
        "codecommit:GetBranch",
        "codecommit:GetCommit",
        "codecommit:GetRepository",
        "codecommit:GetUploadArchiveStatus",
        "codecommit:UploadArchive"
      ],
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
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "elasticbeanstalk:*",
        "ec2:*",
        "elasticloadbalancing:*",
        "autoscaling:*",
        "cloudwatch:*",
        "s3:*",
        "sns:*",
        "cloudformation:*",
        "rds:*",
        "sqs:*",
        "ecs:*"
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
        "opsworks:CreateDeployment",
        "opsworks:DescribeApps",
        "opsworks:DescribeCommands",
        "opsworks:DescribeDeployments",
        "opsworks:DescribeInstances",
        "opsworks:DescribeStacks",
        "opsworks:UpdateApp",
        "opsworks:UpdateStack"
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
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "devicefarm:ListProjects",
        "devicefarm:ListDevicePools",
        "devicefarm:GetRun",
        "devicefarm:GetUpload",
        "devicefarm:CreateUpload",
        "devicefarm:ScheduleRun"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "servicecatalog:ListProvisioningArtifacts",
        "servicecatalog:CreateProvisioningArtifact",
        "servicecatalog:DescribeProvisioningArtifact",
        "servicecatalog:DeleteProvisioningArtifact",
        "servicecatalog:UpdateProduct"
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
    },
    {
      "Action": [
        "ecr:DescribeImages"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "states:DescribeExecution",
        "states:DescribeStateMachine",
        "states:StartExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "appconfig:StartDeployment",
        "appconfig:StopDeployment",
        "appconfig:GetDeployment"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSGlueServiceRole-ImportRole" {
  description = "This policy will be used for Glue Crawler and Job execution. Please do NOT delete!"
  name        = "AWSGlueServiceRole-ImportRole"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-firehose-test*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-0ee53d4c-bbb2-4409-80c6-5f8f6c4ac9f3" {
  name = "AWSLambdaBasicExecutionRole-0ee53d4c-bbb2-4409-80c6-5f8f6c4ac9f3"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/test123:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-18d0e51d-fa87-403a-9f0e-75c2c59e604f" {
  name = "AWSLambdaBasicExecutionRole-18d0e51d-fa87-403a-9f0e-75c2c59e604f"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/circlek-prod-bi-report-query:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-296a978a-9482-4f78-bb26-b9598938c5e0" {
  name = "AWSLambdaBasicExecutionRole-296a978a-9482-4f78-bb26-b9598938c5e0"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/prod-dev-database-sync:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-40f4107e-ee01-4c4e-b947-ac094fbc946f" {
  name = "AWSLambdaBasicExecutionRole-40f4107e-ee01-4c4e-b947-ac094fbc946f"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/liftck-cron-activelyscheduled-lambda:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-b81c0168-ba67-4275-93b1-41f07ebe2f9e" {
  name = "AWSLambdaBasicExecutionRole-b81c0168-ba67-4275-93b1-41f07ebe2f9e"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/aurora-trigger-tester:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-d35faa1e-c8a0-449e-90d5-acffb72cf178" {
  name = "AWSLambdaBasicExecutionRole-d35faa1e-c8a0-449e-90d5-acffb72cf178"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/liftck-cron-activelyscheduled-lambda:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaVPCAccessExecutionRole-3e9b12ba-738c-4fa4-af83-22b9fd0d80f1" {
  name = "AWSLambdaVPCAccessExecutionRole-3e9b12ba-738c-4fa4-af83-22b9fd0d80f1"
  path = "/service-role/"

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
}

resource "aws_iam_policy" "tfer--DevToProdS3BucketTransfer" {
  description = "Policy to transfer all objects contained in a dev bucket named devbuckettransfer to a prod bucket. named prodbuckettransfer This is for testing purposes"
  name        = "DevToProdS3BucketTransfer"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::devbuckettransfer",
        "arn:aws:s3:::devbuckettransfer/*"
      ]
    },
    {
      "Action": [
        "s3:ListBucket",
        "s3:PutObject",
        "s3:PutObjectAcl"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::devbuckettransfer/*",
        "arn:aws:s3:::devbuckettransfer"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Indexer_EC2_role" {
  name = "Indexer_EC2_role"
  path = "/"

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
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::ck-indexer-ec2/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--KinesisFirehoseServicePolicy-circleklift-sms-opt-in-dev-us-east-1" {
  name = "KinesisFirehoseServicePolicy-circleklift-sms-opt-in-dev-us-east-1"
  path = "/service-role/"

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
      "Resource": [
        "arn:aws:glue:us-east-1:799611636099:catalog",
        "arn:aws:glue:us-east-1:799611636099:database/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
        "arn:aws:glue:us-east-1:799611636099:table/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
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
        "arn:aws:s3:::circlek-dev-firehose",
        "arn:aws:s3:::circlek-dev-firehose/*"
      ],
      "Sid": ""
    },
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:GetFunctionConfiguration"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:us-east-1:799611636099:function:%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
      "Sid": ""
    },
    {
      "Action": [
        "kms:GenerateDataKey",
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "s3.us-east-1.amazonaws.com"
        },
        "StringLike": {
          "kms:EncryptionContext:aws:s3:arn": [
            "arn:aws:s3:::%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%/*"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:799611636099:key/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ]
    },
    {
      "Action": [
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/kinesisfirehose/circleklift-sms-opt-in-dev:log-stream:*"
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
      "Resource": "arn:aws:kinesis:us-east-1:799611636099:stream/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%",
      "Sid": ""
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "kinesis.us-east-1.amazonaws.com"
        },
        "StringLike": {
          "kms:EncryptionContext:aws:kinesis:arn": "arn:aws:kinesis:us-east-1:799611636099:stream/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:799611636099:key/%FIREHOSE_POLICY_TEMPLATE_PLACEHOLDER%"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--ListAndCreatePolicies" {
  name = "ListAndCreatePolicies"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:CreatePolicy",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::799611636099:policy/*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": "iam:AttachUserPolicy",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::799611636099:user/elena.mateos.martin.cli",
      "Sid": "VisualEditor1"
    },
    {
      "Action": "iam:ListPolicies",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor2"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--bucketTransfer_files-002E-circlekliftdev-002E-com__files-002E-circleklift-002E-com" {
  name = "bucketTransfer_files.circlekliftdev.com__files.circleklift.com"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circlekliftdev.com/octane",
        "arn:aws:s3:::files.circlekliftdev.com/octane/*"
      ]
    },
    {
      "Action": [
        "s3:ListBucket",
        "s3:PutObject",
        "s3:PutObjectAcl"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circleklift.com/octane/*",
        "arn:aws:s3:::files.circleklift.com/octane"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--bucketTransfer_files-002E-circlekliftdev-002E-com_files-002E-circleklift-002E-com" {
  name = "bucketTransfer_files.circlekliftdev.com_files.circleklift.com"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::sourceBucketName",
        "arn:aws:s3:::sourceBucketName/*"
      ]
    },
    {
      "Action": [
        "s3:ListBucket",
        "s3:PutObject",
        "s3:PutObjectAcl"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::destinationBucketName/*",
        "arn:aws:s3:::destinationBucketName"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--bucketTransfer_scriptdevbucket_scriptprodbucket" {
  name = "bucketTransfer_scriptdevbucket_scriptprodbucket"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::scriptdevbucket",
        "arn:aws:s3:::scriptdevbucket/*"
      ]
    },
    {
      "Action": [
        "s3:ListBucket",
        "s3:PutObject",
        "s3:PutObjectAcl"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::scriptprodbucket/*",
        "arn:aws:s3:::scriptprodbucket"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--bucket_transfer_octane_final" {
  description = "For Ireland deployment"
  name        = "bucket_transfer_octane_final"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circlekliftdev.com",
        "arn:aws:s3:::files.circlekliftdev.com/octane/final/*"
      ]
    },
    {
      "Action": [
        "s3:ListBucket",
        "s3:PutObject",
        "s3:PutObjectAcl"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circleklift.com/octane/final",
        "arn:aws:s3:::files.circleklift.com"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--bucket_transfer_octane_full" {
  description = "For Ireland Deployment"
  name        = "bucket_transfer_octane_full"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circlekliftdev.com",
        "arn:aws:s3:::files.circlekliftdev.com/octane/full/*"
      ]
    },
    {
      "Action": [
        "s3:ListBucket",
        "s3:PutObject",
        "s3:PutObjectAcl"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::files.circleklift.com/octane/full",
        "arn:aws:s3:::files.circleklift.com"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--circlek-portal-packages-put" {
  name = "circlek-portal-packages-put"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:PutObjectAcl"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::circlek-prod-portal-packages/*",
      "Sid": "circlekProdPortalPackagesPut"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--circlek-portal-release-github" {
  name = "circlek-portal-release-github"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:ListBucket",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-portal-packages/*",
        "arn:aws:s3:::circlek-prod-portal-packages"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:ListBucket",
        "s3:DeleteObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-portal-webapp",
        "arn:aws:s3:::circlek-prod-portal-webapp/*"
      ],
      "Sid": "circlekPortalReleaseGithubProd"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--cirk-rds-invoke-lambda" {
  description = "Allow RDS to call a lambda function from a db trigger"
  name        = "cirk-rds-invoke-lambda"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:InvokeFunction",
        "lambda:InvokeAsync"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:us-east-1:799611636099:function:indexer-lambda",
        "arn:aws:lambda:us-east-1:799611636099:function:indexer-lambda*"
      ],
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--ck-marketing-cross-account-access" {
  description = "Enables CK Prod to read s3 bucket ck-data-migration bucket from CK Marketing"
  name        = "ck-marketing-cross-account-access"
  path        = "/"

  policy = <<POLICY
{
  "Statement": {
    "Action": "sts:AssumeRole",
    "Effect": "Allow",
    "Resource": "arn:aws:iam::713044078609:role/ck-data-migration-cross-account-access"
  },
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--cli-user-policy" {
  name = "cli-user-policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutMetricData",
        "ssm:ListCommands",
        "firehose:PutRecord",
        "dynamodb:DeleteTable",
        "ecs:DescribeTaskDefinition",
        "ssm:DescribeAutomationExecutions",
        "ssm:GetMaintenanceWindowTask",
        "ssm:DescribeAutomationStepExecutions",
        "dynamodb:DescribeContinuousBackups",
        "s3:PutObjectTagging",
        "s3:DeleteObject",
        "ecs:ListTaskDefinitions",
        "ssm:GetMaintenanceWindowExecutionTask",
        "dynamodb:UpdateTimeToLive",
        "dynamodb:BatchWriteItem",
        "s3:GetBucketWebsite",
        "ssm:GetMaintenanceWindowExecution",
        "s3:PutReplicationConfiguration",
        "ecr:GetAuthorizationToken",
        "dynamodb:UpdateItem",
        "s3:DeleteObjectVersionTagging",
        "cloudwatch:GetMetricStatistics",
        "s3:GetBucketNotification",
        "ssm:DescribeOpsItems",
        "s3:GetReplicationConfiguration",
        "lambda:UpdateFunctionCode",
        "s3:PutObject",
        "s3:PutBucketNotification",
        "dynamodb:GetShardIterator",
        "ssm:DescribeEffectivePatchesForPatchBaseline",
        "dynamodb:DescribeReservedCapacity",
        "cloudwatch:DescribeAlarms",
        "ssm:DescribeDocumentPermission",
        "ecr:InitiateLayerUpload",
        "dynamodb:UpdateTable",
        "ssm:GetAutomationExecution",
        "s3:GetLifecycleConfiguration",
        "ssm:GetDefaultPatchBaseline",
        "ssm:DescribeDocument",
        "s3:GetInventoryConfiguration",
        "s3:GetBucketTagging",
        "dynamodb:ListTables",
        "dynamodb:ListTagsOfResource",
        "s3:ListBucket",
        "ssm:PutConfigurePackageResult",
        "ssm:DescribePatchGroupState",
        "cloudwatch:ListMetrics",
        "ecs:ListServices",
        "cloudwatch:DescribeAlarmHistory",
        "dynamodb:DescribeReservedCapacityOfferings",
        "s3:AbortMultipartUpload",
        "ssm:DescribeInstancePatchStatesForPatchGroup",
        "s3:PutBucketTagging",
        "ecs:ListTasks",
        "ssm:GetDocument",
        "ssm:GetInventorySchema",
        "ssm:GetParametersByPath",
        "ssm:GetMaintenanceWindow",
        "ecs:DescribeTasks",
        "cloudwatch:GetMetricWidgetImage",
        "ssm:DescribeAssociationExecutionTargets",
        "dynamodb:DescribeLimits",
        "s3:PutBucketVersioning",
        "ssm:GetPatchBaseline",
        "ssm:DescribeAssociation",
        "s3:ListBucketMultipartUploads",
        "s3:PutMetricsConfiguration",
        "s3:PutObjectVersionTagging",
        "dynamodb:Query",
        "dynamodb:DescribeStream",
        "s3:GetBucketVersioning",
        "ssm:GetOpsSummary",
        "dynamodb:ListStreams",
        "s3:GetAccountPublicAccessBlock",
        "ssm:DescribeInstanceInformation",
        "s3:PutBucketWebsite",
        "s3:ListAllMyBuckets",
        "s3:PutBucketRequestPayment",
        "ssm:ListTagsForResource",
        "dynamodb:DescribeGlobalTable",
        "ssm:DescribeDocumentParameters",
        "s3:GetBucketCORS",
        "s3:GetObjectVersion",
        "cloudwatch:PutDashboard",
        "s3:GetObjectVersionTagging",
        "ssm:DescribeInstancePatches",
        "ssm:GetParameter",
        "ssm:GetMaintenanceWindowExecutionTaskInvocation",
        "s3:GetObjectAcl",
        "dynamodb:DescribeTable",
        "cloudwatch:DescribeAlarmsForMetric",
        "ecs:RegisterTaskDefinition",
        "s3:GetObjectVersionAcl",
        "dynamodb:GetItem",
        "firehose:PutRecordBatch",
        "ecr:BatchCheckLayerAvailability",
        "s3:DeleteObjectTagging",
        "s3:GetBucketPolicyStatus",
        "dynamodb:BatchGetItem",
        "cloudwatch:GetDashboard",
        "ssm:GetConnectionStatus",
        "dynamodb:PutItem",
        "ssm:GetOpsItem",
        "dynamodb:Scan",
        "ssm:GetParameters",
        "s3:PutBucketCORS",
        "ecr:PutImage",
        "s3:ListMultipartUploadParts",
        "s3:GetObject",
        "s3:PutBucketLogging",
        "ssm:GetServiceSetting",
        "ssm:DescribeAssociationExecutions",
        "s3:GetAnalyticsConfiguration",
        "s3:GetObjectVersionForReplication",
        "ssm:ListCommandInvocations",
        "elasticache:DescribeCacheClusters",
        "dynamodb:DescribeBackup",
        "dynamodb:GetRecords",
        "s3:ListBucketByTags",
        "cloudwatch:GetMetricData",
        "s3:DeleteObjectVersion",
        "dynamodb:DeleteItem",
        "s3:GetBucketLogging",
        "s3:ListBucketVersions",
        "ssm:GetPatchBaselineForPatchGroup",
        "s3:GetAccelerateConfiguration",
        "ecr:UploadLayerPart",
        "s3:GetBucketPolicy",
        "ssm:GetManifest",
        "s3:GetEncryptionConfiguration",
        "s3:GetObjectVersionTorrent",
        "ecs:CreateService",
        "ssm:DescribeInstancePatchStates",
        "s3:GetBucketRequestPayment",
        "ecr:CompleteLayerUpload",
        "s3:GetObjectTagging",
        "ecs:DescribeServices",
        "cloudwatch:SetAlarmState",
        "s3:GetMetricsConfiguration",
        "ssm:DescribeInstanceAssociationsStatus",
        "ssm:DescribeInstanceProperties",
        "s3:GetBucketPublicAccessBlock",
        "dynamodb:ConditionCheckItem",
        "ssm:GetDeployablePatchSnapshotForInstance",
        "ssm:GetParameterHistory",
        "ssm:DescribeInventoryDeletions",
        "ssm:DescribeEffectiveInstanceAssociations",
        "s3:GetBucketAcl",
        "dynamodb:DescribeTimeToLive",
        "ssm:GetInventory",
        "ssm:DescribeActivations",
        "ssm:GetCommandInvocation",
        "cloudwatch:PutMetricAlarm",
        "s3:GetObjectTorrent",
        "dynamodb:DescribeGlobalTableSettings",
        "cloudwatch:EnableAlarmActions",
        "s3:GetBucketLocation",
        "dynamodb:DeleteBackup",
        "ssm:DescribeAvailablePatches",
        "redshift:DescribeResize",
        "firehose:DescribeDeliveryStream",
        "firehose:ListDeliveryStreams"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--cross-account-s3-to-redshift" {
  name = "cross-account-s3-to-redshift"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::713044078609:policy/cross-account-redshift-transfer",
      "Sid": "CrossAccountPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--firehose-sms-dev-full-access" {
  name = "firehose-sms-dev-full-access"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "firehose:PutRecord",
      "Effect": "Allow",
      "Resource": "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-sms-opt-in-dev",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--lambda-sms-opt-in-prod-to-sqs-and-firehose" {
  description = "This policy is used for the SMS opt in function to write to Firehose and SQS when triggered by DynamoDB."
  name        = "lambda-sms-opt-in-prod-to-sqs-and-firehose"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sqs:DeleteMessage",
        "sqs:GetQueueUrl",
        "sqs:ChangeMessageVisibility",
        "firehose:PutRecord",
        "sqs:SendMessageBatch",
        "sqs:ReceiveMessage",
        "sqs:SendMessage",
        "sqs:GetQueueAttributes",
        "sqs:ListQueueTags",
        "logs:PutLogEvents",
        "logs:CreateLogStream",
        "sqs:ListDeadLetterSourceQueues",
        "sqs:DeleteMessageBatch",
        "sqs:PurgeQueue",
        "sqs:DeleteQueue",
        "firehose:PutRecordBatch",
        "sqs:CreateQueue",
        "sqs:ChangeMessageVisibilityBatch",
        "sqs:SetQueueAttributes"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-inbound-sms",
        "arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-sms-opt-in",
        "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-dynamo-to-sqs-via-role:*"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "sqs:ListQueues",
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    },
    {
      "Action": [
        "sqs:DeleteMessage",
        "sqs:GetQueueUrl",
        "sqs:ChangeMessageVisibility",
        "sqs:SendMessageBatch",
        "sqs:ReceiveMessage",
        "sqs:SendMessage",
        "sqs:GetQueueAttributes",
        "sqs:ListQueueTags",
        "sqs:ListDeadLetterSourceQueues",
        "sqs:DeleteMessageBatch",
        "sqs:PurgeQueue",
        "sqs:DeleteQueue",
        "sqs:CreateQueue",
        "sqs:ChangeMessageVisibilityBatch",
        "sqs:SetQueueAttributes"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-sms",
      "Sid": "VisualEditor2"
    },
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-dynamo-to-sqs-via-role:*",
      "Sid": "VisualEditor3"
    },
    {
      "Action": "dynamodb:*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod",
        "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*"
      ],
      "Sid": "VisualEditor4"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--loyalty-punchcard-policy" {
  name = "loyalty-punchcard-policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:DeleteItem",
        "dynamodb:DescribeContributorInsights",
        "dynamodb:RestoreTableToPointInTime",
        "dynamodb:ListTagsOfResource",
        "dynamodb:CreateTableReplica",
        "dynamodb:UpdateContributorInsights",
        "dynamodb:UpdateGlobalTable",
        "dynamodb:CreateBackup",
        "dynamodb:DeleteTable",
        "dynamodb:UpdateTableReplicaAutoScaling",
        "dynamodb:UpdateContinuousBackups",
        "dynamodb:TagResource",
        "dynamodb:DescribeTable",
        "dynamodb:GetItem",
        "dynamodb:DescribeContinuousBackups",
        "dynamodb:CreateGlobalTable",
        "dynamodb:BatchGetItem",
        "dynamodb:UpdateTimeToLive",
        "dynamodb:BatchWriteItem",
        "dynamodb:ConditionCheckItem",
        "dynamodb:UntagResource",
        "dynamodb:PutItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:DescribeStream",
        "dynamodb:UpdateItem",
        "dynamodb:DeleteTableReplica",
        "dynamodb:DescribeTimeToLive",
        "dynamodb:CreateTable",
        "dynamodb:UpdateGlobalTableSettings",
        "dynamodb:DescribeGlobalTableSettings",
        "sts:AssumeRole",
        "dynamodb:GetShardIterator",
        "dynamodb:DescribeGlobalTable",
        "dynamodb:RestoreTableFromBackup",
        "dynamodb:DescribeBackup",
        "dynamodb:DeleteBackup",
        "dynamodb:UpdateTable",
        "dynamodb:GetRecords",
        "dynamodb:DescribeTableReplicaAutoScaling"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:dynamodb:us-east-1:799611636099:table/loyalty-punchcard",
        "arn:aws:iam::713044078609:role/loyalty-punchcard-replicatoin-prod-role-inaegfhk"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "dynamodb:ListContributorInsights",
        "dynamodb:DescribeReservedCapacityOfferings",
        "dynamodb:ListGlobalTables",
        "dynamodb:ListTables",
        "dynamodb:DescribeReservedCapacity",
        "dynamodb:ListBackups",
        "dynamodb:PurchaseReservedCapacityOfferings",
        "dynamodb:DescribeLimits",
        "dynamodb:ListStreams"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--redshift-unload-tobacco-bucket" {
  description = "permission of role for cluster to unload data to tobacco s3 bucket"
  name        = "redshift-unload-tobacco-bucket"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutAnalyticsConfiguration",
        "s3:PutAccessPointConfigurationForObjectLambda",
        "s3:GetObjectVersionTagging",
        "s3:DeleteAccessPoint",
        "s3:CreateBucket",
        "s3:DeleteAccessPointForObjectLambda",
        "s3:GetStorageLensConfigurationTagging",
        "s3:ReplicateObject",
        "s3:GetObjectAcl",
        "s3:GetBucketObjectLockConfiguration",
        "s3:DeleteBucketWebsite",
        "s3:GetIntelligentTieringConfiguration",
        "s3:PutLifecycleConfiguration",
        "s3:GetObjectVersionAcl",
        "s3:DeleteObject",
        "s3:CreateMultiRegionAccessPoint",
        "s3:GetBucketPolicyStatus",
        "s3:GetObjectRetention",
        "s3:GetBucketWebsite",
        "s3:GetJobTagging",
        "s3:GetMultiRegionAccessPoint",
        "s3:PutReplicationConfiguration",
        "s3:GetObjectAttributes",
        "s3:PutObjectLegalHold",
        "s3:InitiateReplication",
        "s3:GetObjectLegalHold",
        "s3:GetBucketNotification",
        "s3:PutBucketCORS",
        "s3:DescribeMultiRegionAccessPointOperation",
        "s3:GetReplicationConfiguration",
        "s3:ListMultipartUploadParts",
        "s3:PutObject",
        "s3:GetObject",
        "s3:PutBucketNotification",
        "s3:DescribeJob",
        "s3:PutBucketLogging",
        "s3:GetAnalyticsConfiguration",
        "s3:PutBucketObjectLockConfiguration",
        "s3:GetObjectVersionForReplication",
        "s3:GetAccessPointForObjectLambda",
        "s3:GetStorageLensDashboard",
        "s3:CreateAccessPoint",
        "s3:GetLifecycleConfiguration",
        "s3:GetInventoryConfiguration",
        "s3:GetBucketTagging",
        "s3:PutAccelerateConfiguration",
        "s3:GetAccessPointPolicyForObjectLambda",
        "s3:DeleteObjectVersion",
        "s3:GetBucketLogging",
        "s3:ListBucketVersions",
        "s3:RestoreObject",
        "s3:ListBucket",
        "s3:GetAccelerateConfiguration",
        "s3:GetObjectVersionAttributes",
        "s3:GetBucketPolicy",
        "s3:PutEncryptionConfiguration",
        "s3:GetEncryptionConfiguration",
        "s3:GetObjectVersionTorrent",
        "s3:AbortMultipartUpload",
        "s3:GetBucketRequestPayment",
        "s3:GetAccessPointPolicyStatus",
        "s3:UpdateJobPriority",
        "s3:GetObjectTagging",
        "s3:GetMetricsConfiguration",
        "s3:GetBucketOwnershipControls",
        "s3:DeleteBucket",
        "s3:PutBucketVersioning",
        "s3:GetBucketPublicAccessBlock",
        "s3:GetMultiRegionAccessPointPolicyStatus",
        "s3:ListBucketMultipartUploads",
        "s3:PutIntelligentTieringConfiguration",
        "s3:GetMultiRegionAccessPointPolicy",
        "s3:GetAccessPointPolicyStatusForObjectLambda",
        "s3:PutMetricsConfiguration",
        "s3:PutBucketOwnershipControls",
        "s3:DeleteMultiRegionAccessPoint",
        "s3:UpdateJobStatus",
        "s3:GetBucketVersioning",
        "s3:GetBucketAcl",
        "s3:GetAccessPointConfigurationForObjectLambda",
        "s3:PutInventoryConfiguration",
        "s3:GetObjectTorrent",
        "s3:GetStorageLensConfiguration",
        "s3:DeleteStorageLensConfiguration",
        "s3:PutBucketWebsite",
        "s3:PutBucketRequestPayment",
        "s3:PutObjectRetention",
        "s3:CreateAccessPointForObjectLambda",
        "s3:GetBucketCORS",
        "s3:GetBucketLocation",
        "s3:GetAccessPointPolicy",
        "s3:ReplicateDelete",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::sscs-tobacco-club",
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "s3:ListStorageLensConfigurations",
        "s3:ListAccessPointsForObjectLambda",
        "s3:GetAccessPoint",
        "s3:GetAccountPublicAccessBlock",
        "s3:ListAllMyBuckets",
        "s3:ListAccessPoints",
        "s3:ListJobs",
        "s3:PutStorageLensConfiguration",
        "s3:ListMultiRegionAccessPoints",
        "s3:CreateJob"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--redshift-unload-tobaco-bucket" {
  description = "redshift role for query to unload data to sscs-tobacco-club s3 bucket"
  name        = "redshift-unload-tobaco-bucket"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutAnalyticsConfiguration",
        "s3:PutAccessPointConfigurationForObjectLambda",
        "s3:GetObjectVersionTagging",
        "s3:DeleteAccessPoint",
        "s3:CreateBucket",
        "s3:DeleteAccessPointForObjectLambda",
        "s3:GetStorageLensConfigurationTagging",
        "s3:ReplicateObject",
        "s3:GetObjectAcl",
        "s3:GetBucketObjectLockConfiguration",
        "s3:DeleteBucketWebsite",
        "s3:GetIntelligentTieringConfiguration",
        "s3:PutLifecycleConfiguration",
        "s3:GetObjectVersionAcl",
        "s3:DeleteObject",
        "s3:CreateMultiRegionAccessPoint",
        "s3:GetBucketPolicyStatus",
        "s3:GetObjectRetention",
        "s3:GetBucketWebsite",
        "s3:GetJobTagging",
        "s3:GetMultiRegionAccessPoint",
        "s3:PutReplicationConfiguration",
        "s3:GetObjectAttributes",
        "s3:PutObjectLegalHold",
        "s3:InitiateReplication",
        "s3:GetObjectLegalHold",
        "s3:GetBucketNotification",
        "s3:PutBucketCORS",
        "s3:DescribeMultiRegionAccessPointOperation",
        "s3:GetReplicationConfiguration",
        "s3:ListMultipartUploadParts",
        "s3:PutObject",
        "s3:GetObject",
        "s3:PutBucketNotification",
        "s3:DescribeJob",
        "s3:PutBucketLogging",
        "s3:GetAnalyticsConfiguration",
        "s3:PutBucketObjectLockConfiguration",
        "s3:GetObjectVersionForReplication",
        "s3:GetAccessPointForObjectLambda",
        "s3:GetStorageLensDashboard",
        "s3:CreateAccessPoint",
        "s3:GetLifecycleConfiguration",
        "s3:GetInventoryConfiguration",
        "s3:GetBucketTagging",
        "s3:PutAccelerateConfiguration",
        "s3:GetAccessPointPolicyForObjectLambda",
        "s3:DeleteObjectVersion",
        "s3:GetBucketLogging",
        "s3:ListBucketVersions",
        "s3:RestoreObject",
        "s3:ListBucket",
        "s3:GetAccelerateConfiguration",
        "s3:GetObjectVersionAttributes",
        "s3:GetBucketPolicy",
        "s3:PutEncryptionConfiguration",
        "s3:GetEncryptionConfiguration",
        "s3:GetObjectVersionTorrent",
        "s3:AbortMultipartUpload",
        "s3:GetBucketRequestPayment",
        "s3:GetAccessPointPolicyStatus",
        "s3:UpdateJobPriority",
        "s3:GetObjectTagging",
        "s3:GetMetricsConfiguration",
        "s3:GetBucketOwnershipControls",
        "s3:DeleteBucket",
        "s3:PutBucketVersioning",
        "s3:GetBucketPublicAccessBlock",
        "s3:GetMultiRegionAccessPointPolicyStatus",
        "s3:ListBucketMultipartUploads",
        "s3:PutIntelligentTieringConfiguration",
        "s3:GetMultiRegionAccessPointPolicy",
        "s3:GetAccessPointPolicyStatusForObjectLambda",
        "s3:PutMetricsConfiguration",
        "s3:PutBucketOwnershipControls",
        "s3:DeleteMultiRegionAccessPoint",
        "s3:UpdateJobStatus",
        "s3:GetBucketVersioning",
        "s3:GetBucketAcl",
        "s3:GetAccessPointConfigurationForObjectLambda",
        "s3:PutInventoryConfiguration",
        "s3:GetObjectTorrent",
        "s3:GetStorageLensConfiguration",
        "s3:DeleteStorageLensConfiguration",
        "s3:PutBucketWebsite",
        "s3:PutBucketRequestPayment",
        "s3:PutObjectRetention",
        "s3:CreateAccessPointForObjectLambda",
        "s3:GetBucketCORS",
        "s3:GetBucketLocation",
        "s3:GetAccessPointPolicy",
        "s3:ReplicateDelete",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::sscs-tobacco-club",
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "s3:ListStorageLensConfigurations",
        "s3:ListAccessPointsForObjectLambda",
        "s3:GetAccessPoint",
        "s3:GetAccountPublicAccessBlock",
        "s3:ListAllMyBuckets",
        "s3:ListAccessPoints",
        "s3:ListJobs",
        "s3:PutStorageLensConfiguration",
        "s3:ListMultiRegionAccessPoints",
        "s3:CreateJob"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--redshift-write-to-s3-ck-data-lake-prod" {
  name = "redshift-write-to-s3-ck-data-lake-prod"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::ck-data-lake-prod",
        "arn:aws:s3:::ck-data-lake-prod/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rocket-sqlserver-ec2-migration-policy" {
  name = "rocket-sqlserver-ec2-migration-policy"
  path = "/"

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
    },
    {
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
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
}

resource "aws_iam_policy" "tfer--serverless-agent" {
  name = "serverless-agent"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:AuthorizeSecurityGroupIngress",
        "ec2:DeleteSubnet",
        "states:DeleteStateMachine",
        "iam:CreateRole",
        "sns:Unsubscribe",
        "s3:CreateBucket",
        "ec2:AttachInternetGateway",
        "iam:PutRolePolicy",
        "cloudformation:CreateChangeSet",
        "dynamodb:DeleteTable",
        "cloudformation:ContinueUpdateRollback",
        "ec2:DeleteRouteTable",
        "events:ListRuleNamesByTarget",
        "dynamodb:DescribeTable",
        "ec2:CreateInternetGateway",
        "logs:GetLogEvents",
        "cloudformation:UpdateStack",
        "events:ListRules",
        "sns:Subscribe",
        "ec2:DeleteInternetGateway",
        "events:RemoveTargets",
        "logs:FilterLogEvents",
        "cloudformation:List*",
        "s3:DeleteObject",
        "cloudformation:ExecuteChangeSet",
        "events:ListTargetsByRule",
        "iam:GetRole",
        "events:DescribeRule",
        "sns:ListSubscriptionsByTopic",
        "iot:DisableTopicRule",
        "apigateway:*",
        "ec2:CreateTags",
        "kinesis:CreateStream",
        "sns:CreateTopic",
        "ec2:CreateRouteTable",
        "iam:DeleteRole",
        "sns:GetSubscriptionAttributes",
        "ec2:DetachInternetGateway",
        "s3:DeleteBucketPolicy",
        "logs:CreateLogGroup",
        "iot:CreateTopicRule",
        "dynamodb:CreateTable",
        "s3:PutObject",
        "s3:GetObject",
        "s3:PutBucketNotification",
        "kinesis:DeleteStream",
        "iot:EnableTopicRule",
        "cloudformation:DeleteStack",
        "ec2:DeleteVpc",
        "ec2:CreateSubnet",
        "cloudformation:ValidateTemplate",
        "ec2:DeleteNetworkAclEntry",
        "iot:ReplaceTopicRule",
        "cloudformation:CreateUploadBucket",
        "cloudformation:CancelUpdateStack",
        "sns:DeleteTopic",
        "logs:DescribeLogStreams",
        "s3:DeleteObjectVersion",
        "events:PutRule",
        "ec2:CreateVpc",
        "sns:ListTopics",
        "cloudformation:UpdateTerminationProtection",
        "sns:SetTopicAttributes",
        "s3:ListBucket",
        "cloudformation:EstimateTemplateCost",
        "s3:PutEncryptionConfiguration",
        "iam:PassRole",
        "iot:DeleteTopicRule",
        "s3:PutBucketTagging",
        "iam:DeleteRolePolicy",
        "ec2:CreateSecurityGroup",
        "ec2:CreateNetworkAcl",
        "ec2:ModifyVpcAttribute",
        "s3:DeleteBucket",
        "ec2:DeleteNetworkAcl",
        "states:CreateStateMachine",
        "sns:GetTopicAttributes",
        "logs:DescribeLogGroups",
        "logs:DeleteLogGroup",
        "kinesis:DescribeStream",
        "sns:ListSubscriptions",
        "cloudformation:Describe*",
        "events:DeleteRule",
        "events:PutTargets",
        "ec2:Describe*",
        "sns:SetSubscriptionAttributes",
        "s3:ListAllMyBuckets",
        "s3:PutBucketWebsite",
        "cloudformation:CreateStack",
        "ec2:DeleteSecurityGroup",
        "lambda:*",
        "s3:PutBucketPolicy",
        "ec2:CreateNetworkAclEntry",
        "s3:GetObjectVersion",
        "cloudformation:Get*"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--sipnsave-002E-s3-002E-data" {
  description = "Used by NGRP for getting data from S3 thats loaded nightly"
  name        = "sipnsave.s3.data"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetLifecycleConfiguration",
        "s3:GetBucketTagging",
        "s3:GetInventoryConfiguration",
        "s3:GetObjectVersionTagging",
        "s3:ListBucketVersions",
        "s3:GetBucketLogging",
        "s3:ListBucket",
        "s3:GetAccelerateConfiguration",
        "s3:GetBucketPolicy",
        "s3:GetObjectVersionTorrent",
        "s3:GetObjectAcl",
        "s3:GetEncryptionConfiguration",
        "s3:GetBucketObjectLockConfiguration",
        "s3:GetIntelligentTieringConfiguration",
        "s3:GetBucketRequestPayment",
        "s3:GetObjectVersionAcl",
        "s3:GetObjectTagging",
        "s3:GetMetricsConfiguration",
        "s3:GetBucketOwnershipControls",
        "s3:GetBucketPublicAccessBlock",
        "s3:GetBucketPolicyStatus",
        "s3:ListBucketMultipartUploads",
        "s3:GetObjectRetention",
        "s3:GetBucketWebsite",
        "s3:GetBucketVersioning",
        "s3:GetBucketAcl",
        "s3:GetObjectLegalHold",
        "s3:GetBucketNotification",
        "s3:GetReplicationConfiguration",
        "s3:ListMultipartUploadParts",
        "s3:GetObject",
        "s3:GetObjectTorrent",
        "s3:GetBucketCORS",
        "s3:GetAnalyticsConfiguration",
        "s3:GetObjectVersionForReplication",
        "s3:GetBucketLocation",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::circlek-prod-etl/lift-mysql-loader/Redemption/*",
        "arn:aws:s3:::circlek-prod-etl/lift-mysql-loader/Subscription/*",
        "arn:aws:s3:::circlek-prod-etl"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "s3:ListStorageLensConfigurations",
        "s3:ListAccessPointsForObjectLambda",
        "s3:GetAccessPoint",
        "s3:GetAccountPublicAccessBlock",
        "s3:ListAllMyBuckets",
        "s3:ListAccessPoints",
        "s3:ListJobs"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--temp-ec2-policy" {
  name = "temp-ec2-policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:BatchGetItem",
        "dynamodb:BatchWriteItem",
        "cloudwatch:PutMetricData",
        "firehose:PutRecord",
        "dynamodb:PutItem",
        "dynamodb:DeleteItem",
        "ecr:GetDownloadUrlForLayer",
        "dynamodb:Scan",
        "ecr:GetAuthorizationToken",
        "dynamodb:Query",
        "dynamodb:UpdateItem",
        "s3:ListBucket",
        "s3:GetObject*",
        "logs:PutLogEvents",
        "s3:PutObject",
        "s3:GetObject",
        "logs:CreateLogStream",
        "s3:ListAllMyBuckets",
        "dynamodb:DescribeTable",
        "dynamodb:GetItem",
        "ecr:BatchGetImage",
        "firehose:PutRecordBatch",
        "ecr:BatchCheckLayerAvailability"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
