resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-us-east-1-liftck-cron-pipeline" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/service-role/AWSCodePipelineServiceRole-us-east-1-liftck-cron-pipeline"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-us-east-1-liftck-cron-pipeline"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSGlueServiceRole-ImportRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/service-role/AWSGlueServiceRole-ImportRole", "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"]
  max_session_duration = "3600"
  name                 = "AWSGlueServiceRole-ImportRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAPIGateway" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ops.apigateway.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "The Service Linked Role is used by Amazon API Gateway."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAPIGateway"
  path                 = "/aws-service-role/ops.apigateway.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAWSChatbot" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "management.chatbot.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "The Service Linked Role used by AWS Chatbot."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSChatbotServiceLinkedRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAWSChatbot"
  path                 = "/aws-service-role/management.chatbot.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonElasticFileSystem" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticfilesystem.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonElasticFileSystemServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonElasticFileSystem"
  path                 = "/aws-service-role/elasticfilesystem.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonElasticsearchService" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "es.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonElasticsearchServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonElasticsearchService"
  path                 = "/aws-service-role/es.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonMQ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "mq.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon MQ to call AWS services on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonMQServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonMQ"
  path                 = "/aws-service-role/mq.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonSSM" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides access to AWS Resources managed or used by Amazon SSM."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSSM"
  path                 = "/aws-service-role/ssm.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForApplicationAutoScaling_DynamoDBTable" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "dynamodb.application-autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
  path                 = "/aws-service-role/dynamodb.application-autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForApplicationAutoScaling_ECSService" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.application-autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForApplicationAutoScaling_ECSService"
  path                 = "/aws-service-role/ecs.application-autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCloudFormationStackSetsOrgMember" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "member.org.stacksets.cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service linked role for CloudFormation StackSets (Organization Member)"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CloudFormationStackSetsOrgMemberServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCloudFormationStackSetsOrgMember"
  path                 = "/aws-service-role/member.org.stacksets.cloudformation.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCloudTrail" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CloudTrailServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCloudTrail"
  path                 = "/aws-service-role/cloudtrail.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCloudWatchCrossAccount" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudwatch-crossaccount.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows CloudWatch to assume CloudWatch-CrossAccountSharing roles in remote accounts on behalf of the current account in order to display data cross-account, cross region"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CloudWatch-CrossAccountAccess"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCloudWatchCrossAccount"
  path                 = "/aws-service-role/cloudwatch-crossaccount.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCodeStarNotifications" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codestar-notifications.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows AWS CodeStar Notifications to access Amazon CloudWatch Events on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSCodeStarNotificationsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCodeStarNotifications"
  path                 = "/aws-service-role/codestar-notifications.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForComputeOptimizer" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "compute-optimizer.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ComputeOptimizer to call AWS services and collect workload details on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ComputeOptimizerServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForComputeOptimizer"
  path                 = "/aws-service-role/compute-optimizer.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForConfig" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSConfigServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForConfig"
  path                 = "/aws-service-role/config.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForECS"
  path                 = "/aws-service-role/ecs.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForEMRCleanup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticmapreduce.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEMRCleanupPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForEMRCleanup"
  path                 = "/aws-service-role/elasticmapreduce.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForElastiCache" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticache.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy allows ElastiCache to manage AWS resources on your behalf as necessary for managing your cache."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ElastiCacheServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElastiCache"
  path                 = "/aws-service-role/elasticache.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForElasticLoadBalancing" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticloadbalancing.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ELB to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElasticLoadBalancing"
  path                 = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForGlobalAccelerator" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "globalaccelerator.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Global Accelerator to call AWS services on customer's behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForGlobalAccelerator"
  path                 = "/aws-service-role/globalaccelerator.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForOrganizations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForRDS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon RDS to manage AWS resources on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRDS"
  path                 = "/aws-service-role/rds.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForRedshift" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon Redshift to call AWS services on your behalf "
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRedshiftServiceLinkedRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRedshift"
  path                 = "/aws-service-role/redshift.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSecurityHub" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "securityhub.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSecurityHubServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSecurityHub"
  path                 = "/aws-service-role/securityhub.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--DataPipelineDefaultResourceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforDataPipelineRole"]
  max_session_duration = "3600"
  name                 = "DataPipelineDefaultResourceRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--DataPipelineDefaultRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "elasticmapreduce.amazonaws.com",
          "datapipeline.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSDataPipelineRole"]
  max_session_duration = "3600"
  name                 = "DataPipelineDefaultRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--Indexer_EC2_role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/Indexer_EC2_role"]
  max_session_duration = "3600"
  name                 = "Indexer_EC2_role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--KinesisFirehoseServiceRole-circleklift-s-us-east-1-1614626220344" {
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

  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/service-role/KinesisFirehoseServicePolicy-circleklift-sms-opt-in-dev-us-east-1"]
  max_session_duration = "3600"
  name                 = "KinesisFirehoseServiceRole-circleklift-s-us-east-1-1614626220344"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--OrganizationAccountAccessRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "Bool": {
          "aws:MultiFactorAuthPresent": "true"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::823534312462:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "OrganizationAccountAccessRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--RedshiftCopy" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/redshift-write-to-s3-ck-data-lake-prod", "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "RedshiftCopy"
  path                 = "/"
}

resource "aws_iam_role" "tfer--WizAccessRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "854cfe30-9c1f-456a-ad91-910c366b3ee2"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::197171649850:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "WizFullPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"acm:GetCertificate\",\"apigateway:GET\",\"backup:DescribeGlobalSettings\",\"backup:GetBackupVaultAccessPolicy\",\"backup:GetBackupVaultNotifications\",\"backup:ListBackupVaults\",\"backup:ListTags\",\"cloudtrail:GetInsightSelectors\",\"cloudtrail:ListTrails\",\"codebuild:BatchGetProjects\",\"codebuild:GetResourcePolicy\",\"codebuild:ListProjects\",\"cognito-identity:DescribeIdentityPool\",\"dynamodb:DescribeExport\",\"dynamodb:DescribeKinesisStreamingDestination\",\"dynamodb:ListExports\",\"ec2:GetEbsEncryptionByDefault\",\"ec2:SearchTransitGatewayRoutes\",\"ecr:BatchGetImage\",\"ecr:GetAuthorizationToken\",\"ecr:GetDownloadUrlForLayer\",\"ecr:GetRegistryPolicy\",\"eks:ListTagsForResource\",\"elasticfilesystem:DescribeAccessPoints\",\"elasticfilesystem:DescribeFileSystemPolicy\",\"elasticmapreduce:GetAutoTerminationPolicy\",\"elasticmapreduce:GetManagedScalingPolicy\",\"glacier:GetDataRetrievalPolicy\",\"glacier:GetVaultLock\",\"glue:GetConnection\",\"glue:GetSecurityConfiguration\",\"glue:GetTags\",\"health:DescribeAffectedAccountsForOrganization\",\"health:DescribeAffectedEntities\",\"health:DescribeAffectedEntitiesForOrganization\",\"health:DescribeEntityAggregates\",\"health:DescribeEventAggregates\",\"health:DescribeEventDetails\",\"health:DescribeEventDetailsForOrganization\",\"health:DescribeEventTypes\",\"health:DescribeEvents\",\"health:DescribeEventsForOrganization\",\"health:DescribeHealthServiceStatusForOrganization\",\"kafka:ListClusters\",\"kendra:DescribeDataSource\",\"kendra:DescribeIndex\",\"kendra:ListDataSources\",\"kendra:ListIndices\",\"kendra:ListTagsForResource\",\"kms:GetKeyRotationStatus\",\"kms:ListResourceTags\",\"lambda:GetFunction\",\"lambda:GetLayerVersion\",\"ses:DescribeActiveReceiptRuleSet\",\"ses:GetAccount\",\"ses:GetConfigurationSet\",\"ses:GetConfigurationSetEventDestinations\",\"ses:GetDedicatedIps\",\"ses:GetEmailIdentity\",\"ses:ListConfigurationSets\",\"ses:ListDedicatedIpPools\",\"ses:ListReceiptFilters\",\"wafv2:GetLoggingConfiguration\",\"wafv2:GetWebACLForResource\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"ec2:CopySnapshot\",\"ec2:CreateSnapshot\",\"kms:CreateKey\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"ec2:CreateTags\"],\"Resource\":\"arn:aws:ec2:*::snapshot/*\",\"Effect\":\"Allow\"},{\"Action\":\"kms:CreateAlias\",\"Resource\":[\"arn:aws:kms:*:*:alias/wizKey\",\"arn:aws:kms:*:*:key/*\"],\"Effect\":\"Allow\"},{\"Condition\":{\"StringLike\":{\"kms:ViaService\":\"ec2.*.amazonaws.com\"}},\"Action\":[\"kms:CreateGrant\",\"kms:ReEncryptFrom\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringEquals\":{\"aws:ResourceTag/wiz\":\"auto-gen-cmk\"}},\"Action\":[\"kms:GetKeyPolicy\",\"kms:PutKeyPolicy\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Condition\":{\"StringEquals\":{\"ec2:ResourceTag/wiz\":\"auto-gen-snapshot\"}},\"Action\":[\"ec2:DeleteSnapshot\",\"ec2:ModifySnapshotAttribute\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:GetBucketLocation\",\"s3:GetObjectTagging\",\"s3:ListBucket\"],\"Resource\":[\"arn:aws:s3:::*terraform*\",\"arn:aws:s3:::*tfstate*\",\"arn:aws:s3:::*tf?state*\",\"arn:aws:s3:::*cloudtrail*\",\"arn:aws:s3:::elasticbeanstalk-*\"],\"Effect\":\"Allow\",\"Sid\":\"WizAccessS3\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/SecurityAudit", "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"]
  max_session_duration = "3600"
  name                 = "WizAccessRole"
  path                 = "/"

  tags = {
    Created_by   = "cezzi"
    Environment  = "root"
    Owner        = "CEC"
    Project      = "ckapps"
    Stack_source = "git@github.com:circlekeurope/cec-na-shared-infrastucture.git"
  }

  tags_all = {
    Created_by   = "cezzi"
    Environment  = "root"
    Owner        = "CEC"
    Project      = "ckapps"
    Stack_source = "git@github.com:circlekeurope/cec-na-shared-infrastucture.git"
  }
}

resource "aws_iam_role" "tfer--age-verification-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"apigateway:*\",\"codedeploy:*\",\"cloudformation:CreateChangeSet\",\"dynamodb:*\",\"events:*\",\"ec2:*\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"lambda:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutMetricFilter\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "age-verification-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--age-verification-pipeline-CodeBuildServiceRole-782S4NDHA69J" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "age-verification-pipeline-CodeBuildServiceRole-782S4NDHA69J"
  path                 = "/"
}

resource "aws_iam_role" "tfer--age-verification-pipeline-CodePipelineServiceRole-MAT9FQ5XOEX5" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"cloudformation:*\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateChangeSet\",\"cloudformation:CreateStack\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeChangeSet\",\"cloudformation:DescribeStacks\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:UpdateStack\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "age-verification-pipeline-CodePipelineServiceRole-MAT9FQ5XOEX5"
  path                 = "/"
}

resource "aws_iam_role" "tfer--age-verification-stack-LambdaRole-2PX5TNE1WJ0A" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "LambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:DescribeTable\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:UpdateItem\"],\"Resource\":\"arn:aws:dynamodb:us-east-1:799611636099:table/customer-details\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "age-verification-stack-LambdaRole-2PX5TNE1WJ0A"
  path                 = "/"
}

resource "aws_iam_role" "tfer--age-verification-webapp-CodeBuildServiceRole-1CUBDF12JS5FF" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:DeleteObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\",\"s3:ListBucket\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"arn:aws:s3:::circlek-prod-codepipeline-artifacts\",\"arn:aws:s3:::age-verify.circleklift.com/*\",\"arn:aws:s3:::age-verify.circleklift.com\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudfront:CreateInvalidation\",\"cloudfront:UpdateDistribution\"],\"Resource\":[\"arn:aws:cloudfront::799611636099:distribution/E2EORLV92POETZ\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "age-verification-webapp-CodeBuildServiceRole-1CUBDF12JS5FF"
  path                 = "/"
}

resource "aws_iam_role" "tfer--age-verification-webapp-CodePipelineServiceRole-FCOVJSIHG9M4" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\",\"s3:ListBucket\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"arn:aws:s3:::circlek-prod-codepipeline-artifacts\"],\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "age-verification-webapp-CodePipelineServiceRole-FCOVJSIHG9M4"
  path                 = "/"
}

resource "aws_iam_role" "tfer--alarm-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AWSLambdaBasicExecutionRole"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/prod-monitor:*\",\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/prod-notify:*\",\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/prod-scheduler:*\"],\"Effect\":\"Allow\"}]}"
  }

  inline_policy {
    name   = "AWSLambdaVPCAccessExecutionRole"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:CreateNetworkInterface\",\"ec2:DeleteNetworkInterface\",\"ec2:DescribeNetworkInterfaces\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  inline_policy {
    name   = "AdditionalNeededLambdaPerms"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"ses:SendEmail\",\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":\"s3:GetObject\",\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "alarm-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--aurora-trigger-tester-role-y6szsbx3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/service-role/AWSLambdaBasicExecutionRole-b81c0168-ba67-4275-93b1-41f07ebe2f9e"]
  max_session_duration = "3600"
  name                 = "aurora-trigger-tester-role-y6szsbx3"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--circlek-prod-bi-report-query-role-uikuulqz" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/service-role/AWSLambdaBasicExecutionRole-18d0e51d-fa87-403a-9f0e-75c2c59e604f", "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "circlek-prod-bi-report-query-role-uikuulqz"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--circlek-prod-glue-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Glue to call AWS services on your behalf. "
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonRedshiftReadOnlyAccess", "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"]
  max_session_duration = "3600"
  name                 = "circlek-prod-glue-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--circlek-smsoptin-kinesis-stream-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "799611636099"
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
POLICY

  inline_policy {
    name   = "oneClick_firehose_delivery_role_1581530478484"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"glue:GetTable\",\n        \"glue:GetTableVersion\",\n        \"glue:GetTableVersions\"\n      ],\n      \"Resource\": \"*\"\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"s3:AbortMultipartUpload\",\n        \"s3:GetBucketLocation\",\n        \"s3:GetObject\",\n        \"s3:ListBucket\",\n        \"s3:ListBucketMultipartUploads\",\n        \"s3:PutObject\"\n      ],\n      \"Resource\": [\n        \"arn:aws:s3:::circlek-prod-firehose\",\n        \"arn:aws:s3:::circlek-prod-firehose/*\",\n        \"arn:aws:s3:::%FIREHOSE_BUCKET_NAME%\",\n        \"arn:aws:s3:::%FIREHOSE_BUCKET_NAME%/*\"\n      ]\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"lambda:InvokeFunction\",\n        \"lambda:GetFunctionConfiguration\"\n      ],\n      \"Resource\": \"arn:aws:lambda:us-east-1:799611636099:function:%FIREHOSE_DEFAULT_FUNCTION%:%FIREHOSE_DEFAULT_VERSION%\"\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"logs:PutLogEvents\"\n      ],\n      \"Resource\": [\n        \"arn:aws:logs:us-east-1:799611636099:log-group:/aws/kinesisfirehose/:log-stream:*\"\n      ]\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"kinesis:DescribeStream\",\n        \"kinesis:GetShardIterator\",\n        \"kinesis:GetRecords\"\n      ],\n      \"Resource\": \"arn:aws:kinesis:us-east-1:799611636099:stream/%FIREHOSE_STREAM_NAME%\"\n    },\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"kms:Decrypt\"\n      ],\n      \"Resource\": [\n        \"arn:aws:kms:us-east-1:799611636099:key/%SSE_KEY_ID%\"\n      ],\n      \"Condition\": {\n        \"StringEquals\": {\n          \"kms:ViaService\": \"kinesis.%REGION_NAME%.amazonaws.com\"\n        },\n        \"StringLike\": {\n          \"kms:EncryptionContext:aws:kinesis:arn\": \"arn:aws:kinesis:%REGION_NAME%:799611636099:stream/%FIREHOSE_STREAM_NAME%\"\n        }\n      }\n    }\n  ]\n}"
  }

  inline_policy {
    name   = "oneClick_firehose_delivery_role_1581530646705"
    policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"glue:GetTable\",\n        \"glue:GetTableVersion\",\n        \"glue:GetTableVersions\"\n      ],\n      \"Resource\": \"*\"\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"s3:AbortMultipartUpload\",\n        \"s3:GetBucketLocation\",\n        \"s3:GetObject\",\n        \"s3:ListBucket\",\n        \"s3:ListBucketMultipartUploads\",\n        \"s3:PutObject\"\n      ],\n      \"Resource\": [\n        \"arn:aws:s3:::circlek-prod-firehose\",\n        \"arn:aws:s3:::circlek-prod-firehose/*\",\n        \"arn:aws:s3:::%FIREHOSE_BUCKET_NAME%\",\n        \"arn:aws:s3:::%FIREHOSE_BUCKET_NAME%/*\"\n      ]\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"lambda:InvokeFunction\",\n        \"lambda:GetFunctionConfiguration\"\n      ],\n      \"Resource\": \"arn:aws:lambda:us-east-1:799611636099:function:%FIREHOSE_DEFAULT_FUNCTION%:%FIREHOSE_DEFAULT_VERSION%\"\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"logs:PutLogEvents\"\n      ],\n      \"Resource\": [\n        \"arn:aws:logs:us-east-1:799611636099:log-group:/aws/kinesisfirehose/circleklift-sms-opt-in:log-stream:*\"\n      ]\n    },\n    {\n      \"Sid\": \"\",\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"kinesis:DescribeStream\",\n        \"kinesis:GetShardIterator\",\n        \"kinesis:GetRecords\"\n      ],\n      \"Resource\": \"arn:aws:kinesis:us-east-1:799611636099:stream/%FIREHOSE_STREAM_NAME%\"\n    },\n    {\n      \"Effect\": \"Allow\",\n      \"Action\": [\n        \"kms:Decrypt\"\n      ],\n      \"Resource\": [\n        \"arn:aws:kms:us-east-1:799611636099:key/%SSE_KEY_ID%\"\n      ],\n      \"Condition\": {\n        \"StringEquals\": {\n          \"kms:ViaService\": \"kinesis.%REGION_NAME%.amazonaws.com\"\n        },\n        \"StringLike\": {\n          \"kms:EncryptionContext:aws:kinesis:arn\": \"arn:aws:kinesis:%REGION_NAME%:799611636099:stream/%FIREHOSE_STREAM_NAME%\"\n        }\n      }\n    }\n  ]\n}"
  }

  max_session_duration = "3600"
  name                 = "circlek-smsoptin-kinesis-stream-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--circleklift-basket-kinesis-stream-role" {
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
  name                 = "circleklift-basket-kinesis-stream-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--circleklift-event-kinesis-stream-role" {
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
  name                 = "circleklift-event-kinesis-stream-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--circleklift-impression-kinesis-stream-role" {
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
  name                 = "circleklift-impression-kinesis-stream-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--circleklift-input-kinesis-stream-role" {
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
  name                 = "circleklift-input-kinesis-stream-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--circleklift-lineitem-kinesis-stream-role" {
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
  name                 = "circleklift-lineitem-kinesis-stream-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--circleklift-message-kinesis-stream-role" {
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
  name                 = "circleklift-message-kinesis-stream-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--circleklift-offer-kinesis-stream-role" {
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
  name                 = "circleklift-offer-kinesis-stream-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-player-api-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-player-api-task-role-policy"
    policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Statement\": [\n        {\n            \"Action\": [\n                \"logs:CreateLogGroup\"\n            ],\n            \"Resource\": \"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/api:*\",\n            \"Effect\": \"Allow\"\n        },\n        {\n            \"Action\": [\n                \"ecr:GetAuthorizationToken\",\n                \"ecr:BatchCheckLayerAvailability\",\n                \"ecr:GetDownloadUrlForLayer\",\n                \"ecr:BatchGetImage\",\n                \"logs:CreateLogStream\",\n                \"logs:PutLogEvents\",\n                \"cloudwatch:PutMetricData\",\n                \"dynamodb:BatchGetItem\",\n                \"dynamodb:BatchWriteItem\",\n                \"dynamodb:PutItem\",\n                \"dynamodb:DescribeTable\",\n                \"dynamodb:DeleteItem\",\n                \"dynamodb:GetItem\",\n                \"dynamodb:Scan\",\n                \"dynamodb:Query\",\n                \"dynamodb:UpdateItem\",\n                \"s3:GetObject\",\n                \"s3:GetObject*\",\n                \"s3:PutObject\",\n                \"s3:ListBucket\",\n                \"s3:ListAllMyBuckets\",\n                \"firehose:PutRecord\",\n                \"firehose:PutRecordBatch\"\n            ],\n            \"Resource\": \"*\",\n            \"Effect\": \"Allow\"\n        },\n        {\n            \"Action\": [\n                \"sqs:SendMessageBatch\",\n                \"sqs:SendMessage\"\n            ],\n            \"Resource\": [\n                \"arn:aws:sqs:*:799611636099:pricebook-indexer-queue\"\n            ],\n            \"Effect\": \"Allow\"\n        }\n    ]\n}"
  }

  max_session_duration = "3600"
  name                 = "cirk-player-api-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-player-event-api-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-player-event-api-task-role-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/event-api:*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"cloudwatch:PutMetricData\",\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:PutItem\",\"dynamodb:DescribeTable\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:Scan\",\"dynamodb:Query\",\"dynamodb:UpdateItem\",\"s3:GetObject\",\"s3:GetObject*\",\"s3:PutObject\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\",\"firehose:PutRecord\",\"firehose:PutRecordBatch\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cirk-player-event-api-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-player-file-api-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-player-file-api-task-role-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/file-api:*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"cloudwatch:PutMetricData\",\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:PutItem\",\"dynamodb:DescribeTable\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:Scan\",\"dynamodb:Query\",\"dynamodb:UpdateItem\",\"s3:GetObject\",\"s3:GetObject*\",\"s3:PutObject\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\",\"firehose:PutRecord\",\"firehose:PutRecordBatch\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cirk-player-file-api-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-player-lift-okta-integration-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-player-lift-okta-integration-task-role-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/lift-okta-integration:*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cirk-player-lift-okta-integration-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-player-loyalty-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-player-loyalty-task-role-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/loyalty:*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"cloudwatch:PutMetricData\",\"s3:GetObject\",\"s3:GetObject*\",\"s3:PutObject\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cirk-player-loyalty-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-player-ngrp-proxy-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-player-ngrp-proxy-task-role-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/ngrp-proxy:*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"cloudwatch:PutMetricData\",\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:PutItem\",\"dynamodb:DescribeTable\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:Scan\",\"dynamodb:Query\",\"dynamodb:UpdateItem\",\"s3:GetObject\",\"s3:GetObject*\",\"s3:PutObject\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\",\"firehose:PutRecord\",\"firehose:PutRecordBatch\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cirk-player-ngrp-proxy-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-player-pricebook-indexer-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-player-pricebook-indexer-task-role-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/pricebook-indexer:*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"cloudwatch:PutMetricData\",\"s3:GetObject\",\"s3:GetObject*\",\"s3:PutObject\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\",\"s3:DeleteObject\",\"firehose:PutRecord\",\"firehose:PutRecordBatch\",\"sqs:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cirk-player-pricebook-indexer-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-player-punchcard-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-player-punchcard-task-role-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/punchcard:*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"cloudwatch:PutMetricData\",\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:PutItem\",\"dynamodb:DescribeTable\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:Scan\",\"dynamodb:Query\",\"dynamodb:UpdateItem\",\"s3:GetObject\",\"s3:GetObject*\",\"s3:PutObject\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\",\"firehose:PutRecord\",\"firehose:PutRecordBatch\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cirk-player-punchcard-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-player-token-tracker-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-player-token-tracker-task-role-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/player/token-tracker:*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"cloudwatch:PutMetricData\",\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:PutItem\",\"dynamodb:DescribeTable\",\"dynamodb:DeleteItem\",\"dynamodb:GetItem\",\"dynamodb:Scan\",\"dynamodb:Query\",\"dynamodb:UpdateItem\",\"s3:GetObject\",\"s3:GetObject*\",\"s3:PutObject\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cirk-player-token-tracker-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-portal-api-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-portal-api-task-role-policy"
    policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Statement\": [\n        {\n            \"Action\": [\n                \"logs:CreateLogGroup\"\n            ],\n            \"Resource\": \"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/portal/api:*\",\n            \"Effect\": \"Allow\"\n        },\n        {\n            \"Action\": [\n                \"ecr:GetAuthorizationToken\",\n                \"ecr:BatchCheckLayerAvailability\",\n                \"ecr:GetDownloadUrlForLayer\",\n                \"ecr:BatchGetImage\",\n                \"logs:CreateLogStream\",\n                \"logs:PutLogEvents\",\n                \"cloudwatch:PutMetricData\",\n                \"dynamodb:BatchGetItem\",\n                \"dynamodb:BatchWriteItem\",\n                \"dynamodb:PutItem\",\n                \"dynamodb:DescribeTable\",\n                \"dynamodb:DeleteItem\",\n                \"dynamodb:GetItem\",\n                \"dynamodb:Scan\",\n                \"dynamodb:Query\",\n                \"dynamodb:UpdateItem\",\n                \"s3:GetObject\",\n                \"s3:GetObject*\",\n                \"s3:PutObject\",\n                \"s3:ListBucket\",\n                \"s3:ListAllMyBuckets\",\n                \"s3:DeleteObject\",\n                \"firehose:PutRecord\",\n                \"firehose:PutRecordBatch\",\n                \"ses:*\"\n            ],\n            \"Resource\": \"*\",\n            \"Effect\": \"Allow\"\n        }\n    ]\n}"
  }

  max_session_duration = "3600"
  name                 = "cirk-portal-api-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cirk-reports-task-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  inline_policy {
    name   = "cirk-reports-task-role-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/ecs/reports:*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"cloudwatch:PutMetricData\",\"s3:GetObject\",\"s3:GetObject*\",\"s3:PutObject\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cirk-reports-task-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ck-prod-deployment-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "chatbot.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "AWS Chatbot Execution Role"
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/service-role/AWS-Chatbot-NotificationsOnly-Policy-430ecf21-ee80-4f61-9131-cdbf2a7620be"]
  max_session_duration = "3600"
  name                 = "ck-prod-deployment-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--client-logger-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"apigateway:*\",\"codedeploy:*\",\"cloudformation:CreateChangeSet\",\"cloudwatch:*\",\"events:*\",\"ec2:*\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"lambda:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "client-logger-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--client-logger-pipeline-CodeBuildServiceRole-R61HQ4VC9C4X" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "client-logger-pipeline-CodeBuildServiceRole-R61HQ4VC9C4X"
  path                 = "/"
}

resource "aws_iam_role" "tfer--client-logger-pipeline-CodePipelineServiceRole-E71DV5RUIOLR" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"cloudformation:*\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateChangeSet\",\"cloudformation:CreateStack\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeChangeSet\",\"cloudformation:DescribeStacks\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:UpdateStack\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "client-logger-pipeline-CodePipelineServiceRole-E71DV5RUIOLR"
  path                 = "/"
}

resource "aws_iam_role" "tfer--client-logger-stack-LambdaRole-1CTVFA7M4EANJ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "LambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:*\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/client/tobacco-deals:*\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "client-logger-stack-LambdaRole-1CTVFA7M4EANJ"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cors-proxy-prod-us-east-1-lambdaRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "prod-cors-proxy-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\"],\"Resource\":[\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/cors-proxy:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/cors-proxy:*:*\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "cors-proxy-prod-us-east-1-lambdaRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cross-account-s3-to-redshift-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/cross-account-s3-to-redshift"]
  max_session_duration = "3600"
  name                 = "cross-account-s3-to-redshift-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--data-sync-notifier-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"apigateway:*\",\"codedeploy:*\",\"cloudformation:CreateChangeSet\",\"events:*\",\"ec2:*\",\"sqs:*\",\"sns:*\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"lambda:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "data-sync-notifier-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--data-sync-notifier-pipelin-CodePipelineServiceRole-62LYNTYBC9S9" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"cloudformation:*\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateChangeSet\",\"cloudformation:CreateStack\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeChangeSet\",\"cloudformation:DescribeStacks\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:UpdateStack\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "data-sync-notifier-pipelin-CodePipelineServiceRole-62LYNTYBC9S9"
  path                 = "/"
}

resource "aws_iam_role" "tfer--data-sync-notifier-pipeline-CodeBuildServiceRole-1MAPG4MF0WDRN" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "data-sync-notifier-pipeline-CodeBuildServiceRole-1MAPG4MF0WDRN"
  path                 = "/"
}

resource "aws_iam_role" "tfer--data-sync-notifier-stack-LambdaRole-1UEWP9XHNWLGA" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "DeadLetterQueuePolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"sqs:SendMessage\",\"Resource\":\"arn:aws:sqs:us-east-1:799611636099:data-sync-notifier-lambda-dlq-sqs\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "data-sync-notifier-stack-LambdaRole-1UEWP9XHNWLGA"
  path                 = "/"
}

resource "aws_iam_role" "tfer--deployment-chatbot-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "chatbot.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"cloudwatch:Describe*\",\"cloudwatch:Get*\",\"cloudwatch:List*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "deployment-chatbot-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ec2-ddb-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"]
  max_session_duration = "3600"
  name                 = "ec2-ddb-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ec2-machine-role-liftcksnooze" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/temp-ec2-policy"]
  max_session_duration = "3600"
  name                 = "ec2-machine-role-liftcksnooze"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ecsAutoscaleRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "application-autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceAutoscaleRole"]
  max_session_duration = "3600"
  name                 = "ecsAutoscaleRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--generate-barcode-prod-us-east-1-lambdaRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "prod-generate-barcode-lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\"],\"Resource\":[\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/generate-barcode-prod-handler:*\"],\"Effect\":\"Allow\"},{\"Action\":[\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/generate-barcode-prod-handler:*:*\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "generate-barcode-prod-us-east-1-lambdaRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--indexer-codepipeline-CodeBuildServiceRole-DE5LIXIR26YT" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "indexer-codepipeline-CodeBuildServiceRole-DE5LIXIR26YT"
  path                 = "/"
}

resource "aws_iam_role" "tfer--indexer-codepipeline-CodePipelineServiceRole-WZOYUUV21TB3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"s3:*\",\"cloudformation:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateStack\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeStacks\",\"cloudformation:UpdateStack\",\"cloudformation:CreateChangeSet\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DescribeChangeSet\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "indexer-codepipeline-CodePipelineServiceRole-WZOYUUV21TB3"
  path                 = "/"
}

resource "aws_iam_role" "tfer--indexer-stack-liftckindexerRole-1DO1GBFI1SSZ9" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "cloudwatch-putmetric"
    policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Statement\": [\n        {\n            \"Sid\": \"VisualEditor0\",\n            \"Effect\": \"Allow\",\n            \"Action\": \"cloudwatch:PutMetricData\",\n            \"Resource\": \"*\"\n        }\n    ]\n}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "indexer-stack-liftckindexerRole-1DO1GBFI1SSZ9"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-clear-tunnel-connection-sql-runner-cron" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/clear-tunnel-connection-sql-runner-cron:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-clear-tunnel-connection-sql-runner-cron"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-indexer-lambda" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:*\",\"codedeploy:*\",\"lambda:*\",\"cloudformation:CreateChangeSet\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"s3:*\",\"events:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-indexer-lambda"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-lottery-download-to-s3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/lottery-download-to-s3:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  inline_policy {
    name   = "lottery-put-s3"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\"],\"Resource\":[\"arn:aws:s3:::files.circleklift.com/dynamic/illinoislottery/*\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-lottery-download-to-s3"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-one-time-code" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/one-time-code-lambda:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-one-time-code"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-power-bi-reports-prod-ad-query" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/power-bi-reports-prod-ad-query:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\"],\"Resource\":\"arn:aws:s3:::circlek-prod-bi-reports/*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-power-bi-reports-prod-ad-query"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-power-bi-reports-prod-ad-upsert" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/power-bi-reports-prod-ad-upsert:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":\"arn:aws:s3:::circlek-prod-bi-reports/*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-power-bi-reports-prod-ad-upsert"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-power-bi-reports-prod-cashier-query" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/power-bi-reports-prod-cashier-query:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-bi-reports/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-power-bi-reports-prod-cashier-query"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-power-bi-reports-prod-cashier-upsert" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/power-bi-reports-prod-cashier-upsert:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":\"arn:aws:s3:::circlek-prod-bi-reports/*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-power-bi-reports-prod-cashier-upsert"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-row-copier-items-prod-row-copier-cron" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-items-prod-row-copier-cron:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-row-copier-items-prod-row-copier-cron"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-row-copier-legacylocation-prod-row-copier-cron" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-legacylocation-prod-row-copier-cron:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-row-copier-legacylocation-prod-row-copier-cron"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-row-copier-locations-prod-row-copier-cron" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-locations-prod-row-copier-cron:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-row-copier-locations-prod-row-copier-cron"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-row-copier-playerlegacy-prod-row-copier-cron" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-playerlegacy-prod-row-copier-cron:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-row-copier-playerlegacy-prod-row-copier-cron"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-row-copier-players-prod-row-copier-cron" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/row-copier-players-prod-row-copier-cron:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-row-copier-players-prod-row-copier-cron"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-screenshot-maker" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/screenshot-maker:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\",\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-screenshot-maker"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-sms-opt-in-prod-campaign-schedule" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-campaign-schedule:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"s3:*\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-sms-opt-in\",\"arn:aws:s3:::circlek-prod-sms-opt-in/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:*\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod\",\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"lambda:*\"],\"Resource\":[\"arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-campaign-worker\",\"arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-campaign-worker/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-sms-opt-in-prod-campaign-schedule"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-sms-opt-in-prod-campaign-worker" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-campaign-worker:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"sqs:*\"],\"Resource\":[\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-campaign-worker-sms-deadletter\"],\"Effect\":\"Allow\"},{\"Action\":[\"s3:*\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-sms-opt-in\",\"arn:aws:s3:::circlek-prod-sms-opt-in/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:*\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod\",\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-sms-opt-in-prod-campaign-worker"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-sms-opt-in-prod-dynamo-to-sqs" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-dynamo-to-sqs:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:*\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod\",\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/stream/2019-02-28T01:14:09.706\",\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"sqs:SendMessage\"],\"Resource\":[\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-sms\",\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-campaign-sms\"],\"Effect\":\"Allow\"},{\"Action\":[\"sqs:SendMessage\"],\"Resource\":[\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-inbound-sms\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"firehose:PutRecord\",\"firehose:PutRecordBatch\"],\"Resource\":\"arn:aws:firehose:us-east-1:799611636099:deliverystream/circleklift-sms-opt-in\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-sms-opt-in-prod-dynamo-to-sqs"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-sms-opt-in-prod-follow-up-cron" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-follow-up-cron:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:*\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod\",\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-sms-opt-in-prod-follow-up-cron"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-sms-opt-in-prod-inbound-sms" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-inbound-sms:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"sqs:ReceiveMessage\",\"sqs:DeleteMessage\",\"sqs:GetQueueAttributes\"],\"Resource\":[\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-inbound-sms\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-sms-opt-in-prod-inbound-sms"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-sms-opt-in-prod-outbound-campaign-sms" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-outbound-campaign-sms:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"sqs:SendMessage\",\"sqs:ReceiveMessage\",\"sqs:DeleteMessage\",\"sqs:GetQueueAttributes\"],\"Resource\":[\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-campaign-sms\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:*\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod\",\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-sms-opt-in-prod-outbound-campaign-sms"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-sms-opt-in-prod-outbound-sms" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-outbound-sms:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"sqs:SendMessage\",\"sqs:ReceiveMessage\",\"sqs:DeleteMessage\",\"sqs:GetQueueAttributes\"],\"Resource\":[\"arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-sms\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:*\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod\",\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-sms-opt-in-prod-outbound-sms"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-sms-opt-in-prod-pending-msg-cron" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-pending-msg-cron:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:*\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod\",\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-sms-opt-in-prod-pending-msg-cron"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-role-sms-opt-in-prod-sms-api" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "lambda"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/sms-opt-in-prod-sms-api:*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:*\"],\"Resource\":[\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod\",\"arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:PutMetricData\",\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lambda-role-sms-opt-in-prod-sms-api"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lambda-sms-opt-in-prod-with-role-sqs-firehose" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Lambda to call SQS and Firehose and log to CloudWatch. Can all receive events from DynamoDB."
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/lambda-sms-opt-in-prod-to-sqs-and-firehose"]
  max_session_duration = "3600"
  name                 = "lambda-sms-opt-in-prod-with-role-sqs-firehose"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lift-okta-codepipeline-CodeBuildServiceRole-1WHTUN6L5CF1R" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:PutMetricFilter\",\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/lift-okta-integration\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/lift-okta-integration\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lift-okta-codepipeline-CodeBuildServiceRole-1WHTUN6L5CF1R"
  path                 = "/"
}

resource "aws_iam_role" "tfer--lift-okta-codepipeline-CodePipelineServiceRole-1T9BQ7MH26KTF" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "lift-okta-codepipeline-CodePipelineServiceRole-1T9BQ7MH26KTF"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-cron-CodeBuildServiceRole-G8JH0BPHRCJJ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-cron-CodeBuildServiceRole-G8JH0BPHRCJJ"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-cron-CodePipelineServiceRole-4W1XLSR3NP65" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"cloudformation:*\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateChangeSet\",\"cloudformation:CreateStack\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeChangeSet\",\"cloudformation:DescribeStacks\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:UpdateStack\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-cron-CodePipelineServiceRole-4W1XLSR3NP65"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-cron-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"apigateway:*\",\"codedeploy:*\",\"cloudformation:CreateChangeSet\",\"dynamodb:*\",\"events:*\",\"ec2:*\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:GetRolePolicy\",\"iam:PassRole\",\"lambda:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-cron-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-cron-stack-UpdateActivelyScheduledLambdaRol-1AS820JNA175X" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "UpdateActivelyScheduledLambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:DescribeNetworkInterfaces\",\"ec2:CreateNetworkInterface\",\"ec2:DeleteNetworkInterface\",\"ec2:DescribeInstances\",\"ec2:AttachNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "liftck-cron-stack-UpdateActivelyScheduledLambdaRol-1AS820JNA175X"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-cron-stack-UpdateMasterDataFileLambdaRole-1AUUKZYSDZQW4" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "UpdateMasterDataFileLambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:DescribeNetworkInterfaces\",\"ec2:CreateNetworkInterface\",\"ec2:DeleteNetworkInterface\",\"ec2:DescribeInstances\",\"ec2:AttachNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\"],\"Resource\":[\"arn:aws:s3:::files.circlekliftdev.com/item_master/*\",\"arn:aws:s3:::files.circleklift.com/item_master/*\",\"arn:aws:s3:::files.circlekliftdev.com/item_master/\",\"arn:aws:s3:::files.circleklift.com/item_master/\"],\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "liftck-cron-stack-UpdateMasterDataFileLambdaRole-1AUUKZYSDZQW4"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-cron-stack-UpdateOnPromoReindexLambdaRole-1FFVEMGL9INQ2" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "UpdateOnPromoReindexLambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:DescribeNetworkInterfaces\",\"ec2:CreateNetworkInterface\",\"ec2:DeleteNetworkInterface\",\"ec2:DescribeInstances\",\"ec2:AttachNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "liftck-cron-stack-UpdateOnPromoReindexLambdaRole-1FFVEMGL9INQ2"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-octanebuilder-prod-CodeBuildServiceRole-BQ9QQ9CK0Q3R" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\",\"s3:ListBucket\",\"s3:DeleteObject\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-octanebuilder-prod-CodeBuildServiceRole-BQ9QQ9CK0Q3R"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-octanebuilder-prod-CodePipelineServiceRole-SRMN0NZWH11" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"cloudformation:*\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateChangeSet\",\"cloudformation:CreateStack\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeChangeSet\",\"cloudformation:DescribeStacks\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:UpdateStack\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-octanebuilder-prod-CodePipelineServiceRole-SRMN0NZWH11"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-octanebuilder-prod-OctaneBuilderLambdaRole-1XI8L54K0RS7X" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "OctaneBuilderLambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:DescribeNetworkInterfaces\",\"ec2:CreateNetworkInterface\",\"ec2:DeleteNetworkInterface\",\"ec2:DescribeInstances\",\"ec2:AttachNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:ListBucket\",\"s3:DeleteObject\"],\"Resource\":[\"arn:aws:s3:::files.circlekliftdev.com/*\",\"arn:aws:s3:::files.circleklift.com/*\",\"arn:aws:s3:::files.circlekliftdev.com/\",\"arn:aws:s3:::files.circleklift.com/\"],\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:ListBucket\",\"s3:DeleteObject\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "liftck-octanebuilder-prod-OctaneBuilderLambdaRole-1XI8L54K0RS7X"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-octanebuilder-prod-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"apigateway:*\",\"codedeploy:*\",\"cloudformation:CreateChangeSet\",\"dynamodb:*\",\"events:*\",\"ec2:*\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:GetRolePolicy\",\"iam:PassRole\",\"lambda:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-octanebuilder-prod-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-octanebuilder-stack-OctaneBuilderLambdaRole-1EF3E5OFZEYP1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "OctaneBuilderLambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:DescribeNetworkInterfaces\",\"ec2:CreateNetworkInterface\",\"ec2:DeleteNetworkInterface\",\"ec2:DescribeInstances\",\"ec2:AttachNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:ListBucket\",\"s3:DeleteObject\"],\"Resource\":[\"arn:aws:s3:::files.circlekliftdev.com/*\",\"arn:aws:s3:::files.circleklift.com/*\",\"arn:aws:s3:::files.circlekliftdev.com/\",\"arn:aws:s3:::files.circleklift.com/\"],\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:ListBucket\",\"s3:DeleteObject\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "liftck-octanebuilder-stack-OctaneBuilderLambdaRole-1EF3E5OFZEYP1"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-redshift-etl-pipeli-CodePipelineServiceRole-1KBT02L9ULGRB" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"s3:*\",\"cloudformation:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateStack\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeStacks\",\"cloudformation:UpdateStack\",\"cloudformation:CreateChangeSet\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DescribeChangeSet\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-redshift-etl-pipeli-CodePipelineServiceRole-1KBT02L9ULGRB"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-redshift-etl-pipeline-CodeBuildServiceRole-RGRSFTBTJBN" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:ListBucket\",\"s3:PutObject\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-redshift-etl-pipeline-CodeBuildServiceRole-RGRSFTBTJBN"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-redshift-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"codedeploy:*\",\"lambda:*\",\"cloudformation:CreateChangeSet\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"s3:*\",\"events:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-redshift-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--liftck-sms-opt-in-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"codedeploy:*\",\"lambda:*\",\"cloudformation:CreateChangeSet\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"s3:*\",\"events:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "liftck-sms-opt-in-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--loyalty-pipeline-CodeBuildServiceRole-YNPWKZJ3XQO1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/loyalty\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "loyalty-pipeline-CodeBuildServiceRole-YNPWKZJ3XQO1"
  path                 = "/"
}

resource "aws_iam_role" "tfer--loyalty-pipeline-CodePipelineServiceRole-1C5EHEPY19294" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "loyalty-pipeline-CodePipelineServiceRole-1C5EHEPY19294"
  path                 = "/"
}

resource "aws_iam_role" "tfer--loyalty-points-counter-cod-CodePipelineServiceRole-HKUB9DWSSSJB" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"s3:*\",\"cloudformation:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateStack\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeStacks\",\"cloudformation:UpdateStack\",\"cloudformation:CreateChangeSet\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DescribeChangeSet\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "loyalty-points-counter-cod-CodePipelineServiceRole-HKUB9DWSSSJB"
  path                 = "/"
}

resource "aws_iam_role" "tfer--loyalty-points-counter-codepi-CodeBuildServiceRole-1RBBE63QXSIFD" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "loyalty-points-counter-codepi-CodeBuildServiceRole-1RBBE63QXSIFD"
  path                 = "/"
}

resource "aws_iam_role" "tfer--loyalty-points-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"codedeploy:*\",\"lambda:*\",\"cloudformation:CreateChangeSet\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"s3:*\",\"events:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\",\"dynamodb:*\",\"apigateway:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "loyalty-points-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--loyalty-points-stack-LoyaltyPointsLambdaRole-1DDVYF7IDPFHG" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "LoyaltyPointsLambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:DescribeTable\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:UpdateItem\"],\"Resource\":\"arn:aws:dynamodb:us-east-1:799611636099:table/loyalty-punchcard\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "loyalty-points-stack-LoyaltyPointsLambdaRole-1DDVYF7IDPFHG"
  path                 = "/"
}

resource "aws_iam_role" "tfer--loyalty-punchcard-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {},
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::713044078609:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/loyalty-punchcard-policy"]
  max_session_duration = "3600"
  name                 = "loyalty-punchcard-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--nlb-alb-ip-updater-443-LambdaIAMRole-BKMHZIJUKEX2" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "Lambda-ALBasTarget"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:*:*:*\"],\"Effect\":\"Allow\",\"Sid\":\"LambdaLogging\"},{\"Action\":[\"s3:Get*\",\"s3:PutObject\",\"s3:CreateBucket\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"S3\"},{\"Action\":[\"elasticloadbalancing:Describe*\",\"elasticloadbalancing:RegisterTargets\",\"elasticloadbalancing:DeregisterTargets\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"ELB\"},{\"Action\":[\"cloudwatch:putMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"CW\"}]}"
  }

  max_session_duration = "3600"
  name                 = "nlb-alb-ip-updater-443-LambdaIAMRole-BKMHZIJUKEX2"
  path                 = "/"
}

resource "aws_iam_role" "tfer--nlb-alb-ip-updater-80-LambdaIAMRole-1C3OF1M1SRD3B" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "Lambda-ALBasTarget"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:*:*:*\"],\"Effect\":\"Allow\",\"Sid\":\"LambdaLogging\"},{\"Action\":[\"s3:Get*\",\"s3:PutObject\",\"s3:CreateBucket\",\"s3:ListBucket\",\"s3:ListAllMyBuckets\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"S3\"},{\"Action\":[\"elasticloadbalancing:Describe*\",\"elasticloadbalancing:RegisterTargets\",\"elasticloadbalancing:DeregisterTargets\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"ELB\"},{\"Action\":[\"cloudwatch:putMetricData\"],\"Resource\":\"*\",\"Effect\":\"Allow\",\"Sid\":\"CW\"}]}"
  }

  max_session_duration = "3600"
  name                 = "nlb-alb-ip-updater-80-LambdaIAMRole-1C3OF1M1SRD3B"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-api-codepipeline-CodeBuildServiceRole-W3M84CEDMGQJ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\",\"ses:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/player-api\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-api-codepipeline-CodeBuildServiceRole-W3M84CEDMGQJ"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-api-codepipeline-CodePipelineServiceRole-15O2N7I0YNRSE" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-api-codepipeline-CodePipelineServiceRole-15O2N7I0YNRSE"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-codepipeline-stack-CodeBuildServiceRole-FGYZJYOWQ32Q" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"ssm:GetParameters\"],\"Resource\":\"arn:aws:ssm:us-east-1:627729951075:parameter/*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-codepipeline-stack-CodeBuildServiceRole-FGYZJYOWQ32Q"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-codepipeline-stack-CodePipelineServiceRole-19DB9Q5WJCRXS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"s3:*\",\"cloudformation:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateStack\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeStacks\",\"cloudformation:UpdateStack\",\"cloudformation:CreateChangeSet\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DescribeChangeSet\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-codepipeline-stack-CodePipelineServiceRole-19DB9Q5WJCRXS"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-event-api-codepipel-CodePipelineServiceRole-1H5SC4DE58NX1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-event-api-codepipel-CodePipelineServiceRole-1H5SC4DE58NX1"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-event-api-codepipeline-CodeBuildServiceRole-2F03SPL7P2M8" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\",\"ses:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/player-event-api\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-event-api-codepipeline-CodeBuildServiceRole-2F03SPL7P2M8"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-file-api-codepipeli-CodePipelineServiceRole-L66871B73B7Z" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-file-api-codepipeli-CodePipelineServiceRole-L66871B73B7Z"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-file-api-codepipeline-CodeBuildServiceRole-9KEVQB0EETDN" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\",\"ses:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/player-file-api\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-file-api-codepipeline-CodeBuildServiceRole-9KEVQB0EETDN"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-ngrp-proxy-codepipe-CodePipelineServiceRole-TZFR65AAFHWN" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-ngrp-proxy-codepipe-CodePipelineServiceRole-TZFR65AAFHWN"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-ngrp-proxy-codepipelin-CodeBuildServiceRole-YB8DEKD5VEOW" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\",\"ses:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/player-ngrp-proxy\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-ngrp-proxy-codepipelin-CodeBuildServiceRole-YB8DEKD5VEOW"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-punchcard-codepipel-CodePipelineServiceRole-LK79VG22HMCA" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-punchcard-codepipel-CodePipelineServiceRole-LK79VG22HMCA"
  path                 = "/"
}

resource "aws_iam_role" "tfer--player-punchcard-codepipeline-CodeBuildServiceRole-Y5UHJWGN21TP" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\",\"ses:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/player-punchcard\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "player-punchcard-codepipeline-CodeBuildServiceRole-Y5UHJWGN21TP"
  path                 = "/"
}

resource "aws_iam_role" "tfer--portal-api-codepipeline-CodeBuildServiceRole-7Q0AVOGJ8P9U" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\",\"ses:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/portal-api\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "portal-api-codepipeline-CodeBuildServiceRole-7Q0AVOGJ8P9U"
  path                 = "/"
}

resource "aws_iam_role" "tfer--portal-api-codepipeline-CodePipelineServiceRole-L73HYPBGXC2L" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "portal-api-codepipeline-CodePipelineServiceRole-L73HYPBGXC2L"
  path                 = "/"
}

resource "aws_iam_role" "tfer--portal-webapp-CodeBuildServiceRole-1UGM164AOPYEF" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:DeleteObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\",\"s3:ListBucket\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"arn:aws:s3:::circlek-prod-codepipeline-artifacts\",\"arn:aws:s3:::circlek-prod-portal-webapp/*\",\"arn:aws:s3:::circlek-prod-portal-webapp\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "portal-webapp-CodeBuildServiceRole-1UGM164AOPYEF"
  path                 = "/"
}

resource "aws_iam_role" "tfer--portal-webapp-CodePipelineServiceRole-TPMNY24WDR5D" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\",\"s3:ListBucket\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"arn:aws:s3:::circlek-prod-codepipeline-artifacts\"],\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "portal-webapp-CodePipelineServiceRole-TPMNY24WDR5D"
  path                 = "/"
}

resource "aws_iam_role" "tfer--pricebook-indexer-codepipe-CodePipelineServiceRole-1U8ILPNBAZJ86" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "pricebook-indexer-codepipe-CodePipelineServiceRole-1U8ILPNBAZJ86"
  path                 = "/"
}

resource "aws_iam_role" "tfer--pricebook-indexer-codepipelin-CodeBuildServiceRole-1AFLWGDSZKXX6" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:PutMetricFilter\",\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/pricebook-indexer\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/pricebook-indexer\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "pricebook-indexer-codepipelin-CodeBuildServiceRole-1AFLWGDSZKXX6"
  path                 = "/"
}

resource "aws_iam_role" "tfer--prod-dev-database-sync-role-2z6bctsw" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/service-role/AWSLambdaBasicExecutionRole-296a978a-9482-4f78-bb26-b9598938c5e0"]
  max_session_duration = "3600"
  name                 = "prod-dev-database-sync-role-2z6bctsw"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--redshift-altria-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Role for the Altria reconcile script - github repo support_liftck Reconcile.java"

  inline_policy {
    name   = "s3-access"
    policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Statement\": [\n        {\n            \"Sid\": \"VisualEditor0\",\n            \"Effect\": \"Allow\",\n            \"Action\": [\n                \"s3:PutAnalyticsConfiguration\",\n                \"s3:GetObjectVersionTagging\",\n                \"s3:CreateBucket\",\n                \"s3:ReplicateObject\",\n                \"s3:GetObjectAcl\",\n                \"s3:DeleteBucketWebsite\",\n                \"s3:PutLifecycleConfiguration\",\n                \"s3:GetObjectVersionAcl\",\n                \"s3:PutObjectTagging\",\n                \"s3:DeleteObject\",\n                \"s3:DeleteObjectTagging\",\n                \"s3:GetBucketWebsite\",\n                \"s3:PutReplicationConfiguration\",\n                \"s3:DeleteObjectVersionTagging\",\n                \"s3:GetBucketNotification\",\n                \"s3:PutBucketCORS\",\n                \"s3:GetReplicationConfiguration\",\n                \"s3:ListMultipartUploadParts\",\n                \"s3:PutObject\",\n                \"s3:GetObject\",\n                \"s3:PutBucketNotification\",\n                \"s3:PutBucketLogging\",\n                \"s3:GetAnalyticsConfiguration\",\n                \"s3:GetObjectVersionForReplication\",\n                \"s3:GetLifecycleConfiguration\",\n                \"s3:GetInventoryConfiguration\",\n                \"s3:GetBucketTagging\",\n                \"s3:PutAccelerateConfiguration\",\n                \"s3:DeleteObjectVersion\",\n                \"s3:GetBucketLogging\",\n                \"s3:ListBucketVersions\",\n                \"s3:ReplicateTags\",\n                \"s3:RestoreObject\",\n                \"s3:ListBucket\",\n                \"s3:GetAccelerateConfiguration\",\n                \"s3:GetBucketPolicy\",\n                \"s3:GetObjectVersionTorrent\",\n                \"s3:AbortMultipartUpload\",\n                \"s3:PutBucketTagging\",\n                \"s3:GetBucketRequestPayment\",\n                \"s3:GetObjectTagging\",\n                \"s3:GetMetricsConfiguration\",\n                \"s3:DeleteBucket\",\n                \"s3:PutBucketVersioning\",\n                \"ec2:RebootInstances\",\n                \"s3:ListBucketMultipartUploads\",\n                \"s3:PutMetricsConfiguration\",\n                \"s3:PutObjectVersionTagging\",\n                \"s3:GetBucketVersioning\",\n                \"s3:GetBucketAcl\",\n                \"s3:PutInventoryConfiguration\",\n                \"s3:GetObjectTorrent\",\n                \"s3:PutBucketWebsite\",\n                \"s3:PutBucketRequestPayment\",\n                \"s3:GetBucketCORS\",\n                \"s3:GetBucketLocation\",\n                \"s3:ReplicateDelete\",\n                \"s3:GetObjectVersion\"\n            ],\n            \"Resource\": [\n\n                \"arn:aws:s3:::ck-altria-files\",\n                \"arn:aws:s3:::ck-altria-files/*\"\n              \n            ]\n        }\n    ]\n}"
  }

  max_session_duration = "3600"
  name                 = "redshift-altria-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--redshift-s3-dump-access" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/redshift-write-to-s3-ck-data-lake-prod", "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "redshift-s3-dump-access"
  path                 = "/"
}

resource "aws_iam_role" "tfer--redshift-unload-bucket-tobacco" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to unload for tobacco bucket"
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/redshift-unload-tobaco-bucket"]
  max_session_duration = "3600"
  name                 = "redshift-unload-bucket-tobacco"
  path                 = "/"
}

resource "aws_iam_role" "tfer--redshift-unload-s3-buckets" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "redshift-unload-s3-buckets"
  path                 = "/"
}

resource "aws_iam_role" "tfer--redshift-unload-tobaco-bucket" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/redshift-unload-tobacco-bucket", "arn:aws:iam::799611636099:policy/redshift-unload-tobaco-bucket"]
  max_session_duration = "3600"
  name                 = "redshift-unload-tobaco-bucket"
  path                 = "/"
}

resource "aws_iam_role" "tfer--reports-pipeline-CodeBuildServiceRole-1JWPGVYJ3ZDEH" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/reports\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "reports-pipeline-CodeBuildServiceRole-1JWPGVYJ3ZDEH"
  path                 = "/"
}

resource "aws_iam_role" "tfer--reports-pipeline-CodePipelineServiceRole-TJIPOTRA2WVJ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "reports-pipeline-CodePipelineServiceRole-TJIPOTRA2WVJ"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rocket-etl-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"codedeploy:*\",\"lambda:*\",\"cloudformation:CreateChangeSet\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"s3:*\",\"events:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\",\"ec2:*\",\"ssm:Get*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "rocket-etl-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rocket-etl-pipeline-CodeBuildServiceRole-X2GICKF6R8IC" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "rocket-etl-pipeline-CodeBuildServiceRole-X2GICKF6R8IC"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rocket-etl-pipeline-CodePipelineServiceRole-6NDLMS200W4A" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"s3:*\",\"cloudformation:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateStack\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeStacks\",\"cloudformation:UpdateStack\",\"cloudformation:CreateChangeSet\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DescribeChangeSet\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "rocket-etl-pipeline-CodePipelineServiceRole-6NDLMS200W4A"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "RocketEtlLambdaRolePolicy1"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectACL\"],\"Resource\":\"arn:aws:s3:::circlek-prod-etl\",\"Effect\":\"Allow\"}]}"
  }

  inline_policy {
    name   = "RocketEtlLambdaRolePolicy2"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  inline_policy {
    name   = "RocketEtlLambdaRolePolicy3"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ssm:Get*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSLambdaExecute", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rocket-sqlserver-ec2-migration-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/rocket-sqlserver-ec2-migration-policy"]
  max_session_duration = "3600"
  name                 = "rocket-sqlserver-ec2-migration-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--scheduler-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AWSLambdaBasicExecutionRole"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":[\"arn:aws:logs:us-east-1:799611636099:log-group:/aws/lambda/prod-scheduler:*\"],\"Effect\":\"Allow\"}]}"
  }

  inline_policy {
    name   = "AWSLambdaVPCAccessExecutionRole"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:CreateNetworkInterface\",\"ec2:DeleteNetworkInterface\",\"ec2:DescribeNetworkInterfaces\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  inline_policy {
    name   = "InvokeAlarmLambdas"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"lambda:InvokeFunction\",\"Resource\":[\"arn:aws:lambda:us-east-1:799611636099:function:prod-monitor\",\"arn:aws:lambda:us-east-1:799611636099:function:prod-notify\"],\"Effect\":\"Allow\"},{\"Action\":\"s3:GetObject\",\"Resource\":[\"arn:aws:s3:::circlek-prod-cloudformation-builds/*\"],\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "scheduler-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--sip-and-save-frontend-pipe-CodePipelineServiceRole-OVD3WRF3RMTU" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Statement\": [\n        {\n            \"Action\": [\n                \"s3:PutObject\",\n                \"s3:GetObject\",\n                \"s3:GetObjectVersion\",\n                \"s3:GetBucketVersioning\",\n                \"s3:ListBucket\"\n            ],\n            \"Resource\": [\n                \"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\n                \"arn:aws:s3:::circlek-prod-codepipeline-artifacts\"\n            ],\n            \"Effect\": \"Allow\"\n        },\n        {\n            \"Action\": [\n                \"codebuild:StartBuild\",\n                \"codebuild:BatchGetBuilds\",\n                \"iam:PassRole\"\n            ],\n            \"Resource\": \"*\",\n            \"Effect\": \"Allow\"\n        },\n        {\n            \"Effect\": \"Allow\",\n            \"Action\": \"codestar-connections:UseConnection\",\n            \"Resource\": \"arn:aws:codestar-connections:us-east-1:799611636099:connection/78ef6c8d-5112-47ba-b894-4fb1d5db2c4e\"\n        }\n    ]\n}"
  }

  max_session_duration = "3600"
  name                 = "sip-and-save-frontend-pipe-CodePipelineServiceRole-OVD3WRF3RMTU"
  path                 = "/"
}

resource "aws_iam_role" "tfer--sip-and-save-frontend-pipelin-CodeBuildServiceRole-RT2J021ULM3S" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:DeleteObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\",\"s3:ListBucket\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"arn:aws:s3:::circlek-prod-codepipeline-artifacts\",\"arn:aws:s3:::sip-and-save.circlekoffers.com/*\",\"arn:aws:s3:::sip-and-save.circlekoffers.com\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudfront:CreateInvalidation\",\"cloudfront:UpdateDistribution\"],\"Resource\":[\"arn:aws:cloudfront::799611636099:distribution/E3KVPGCKOL3QIB\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "sip-and-save-frontend-pipelin-CodeBuildServiceRole-RT2J021ULM3S"
  path                 = "/"
}

resource "aws_iam_role" "tfer--sms-bot-user-role" {
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

  description          = "Allows Kinesis Firehose to transform and deliver data to your destinations using CloudWatch Logs, Lambda, and S3 on your behalf."
  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/firehose-sms-dev-full-access"]
  max_session_duration = "3600"
  name                 = "sms-bot-user-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--sms-pipeline-stack-CodeBuildServiceRole-AKVMW66V6ZH1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"lambda:UpdateFunctionCode\",\"ecr:GetAuthorizationToken\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:ListBucket\",\"s3:PutObject\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "sms-pipeline-stack-CodeBuildServiceRole-AKVMW66V6ZH1"
  path                 = "/"
}

resource "aws_iam_role" "tfer--sms-pipeline-stack-CodePipelineServiceRole-1MKBAFPWAK7NH" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"s3:*\",\"cloudformation:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateStack\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeStacks\",\"cloudformation:UpdateStack\",\"cloudformation:CreateChangeSet\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DescribeChangeSet\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "sms-pipeline-stack-CodePipelineServiceRole-1MKBAFPWAK7NH"
  path                 = "/"
}

resource "aws_iam_role" "tfer--stacksets-exec-63e60d0c74a9857bdaa08f208be2384e" {
  assume_role_policy = <<POLICY
{
  "Id": "stacksets-exec-63e60d0c74a9857bdaa08f208be2384e-assume-role-policy",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::823534312462:role/aws-service-role/stacksets.cloudformation.amazonaws.com/AWSServiceRoleForCloudFormationStackSetsOrgAdmin"
      },
      "Sid": "1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role created by AWSCloudFormation StackSets"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "stacksets-exec-63e60d0c74a9857bdaa08f208be2384e"
  #name_prefix          = "123456789"
  path                 = "/"
}

resource "aws_iam_role" "tfer--test123-role-8p5qt810" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::799611636099:policy/service-role/AWSLambdaBasicExecutionRole-0ee53d4c-bbb2-4409-80c6-5f8f6c4ac9f3"]
  max_session_duration = "3600"
  name                 = "test123-role-8p5qt810"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--tobacco-deals-pipeline-CodeBuildServiceRole-1GL9DHX6AY3PK" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:PutObject\",\"s3:DeleteObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\",\"s3:ListBucket\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"arn:aws:s3:::circlek-prod-codepipeline-artifacts\",\"arn:aws:s3:::tobacco-deals.circleklift.com/*\",\"arn:aws:s3:::tobacco-deals.circleklift.com\"],\"Effect\":\"Allow\"},{\"Action\":[\"cloudfront:CreateInvalidation\",\"cloudfront:UpdateDistribution\"],\"Resource\":[\"arn:aws:cloudfront::799611636099:distribution/EULHRLCLOCQJA\"],\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "tobacco-deals-pipeline-CodeBuildServiceRole-1GL9DHX6AY3PK"
  path                 = "/"
}

resource "aws_iam_role" "tfer--tobacco-deals-pipeline-CodePipelineServiceRole-1PO9BL5VBUHKL" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\",\"s3:ListBucket\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"arn:aws:s3:::circlek-prod-codepipeline-artifacts\"],\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "tobacco-deals-pipeline-CodePipelineServiceRole-1PO9BL5VBUHKL"
  path                 = "/"
}

resource "aws_iam_role" "tfer--token-tracker-pipeline-CodeBuildServiceRole-LOZXUXT4P8ZY" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"ecr:GetAuthorizationToken\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\",\"Effect\":\"Allow\"},{\"Action\":[\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"ecr:BatchCheckLayerAvailability\",\"ecr:PutImage\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\"],\"Resource\":\"arn:aws:ecr:us-east-1:799611636099:repository/token-tracker\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "token-tracker-pipeline-CodeBuildServiceRole-LOZXUXT4P8ZY"
  path                 = "/"
}

resource "aws_iam_role" "tfer--token-tracker-pipeline-CodePipelineServiceRole-NATFOTS2OD93" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\",\"s3:GetObjectVersion\",\"s3:GetBucketVersioning\"],\"Resource\":[\"arn:aws:s3:::circlek-prod-codepipeline-artifacts/*\"],\"Effect\":\"Allow\"},{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:UpdateService\",\"codebuild:StartBuild\",\"codebuild:BatchGetBuilds\",\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "token-tracker-pipeline-CodePipelineServiceRole-NATFOTS2OD93"
  path                 = "/"
}

resource "aws_iam_role" "tfer--url-shortener-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"apigateway:*\",\"codedeploy:*\",\"cloudformation:CreateChangeSet\",\"dynamodb:*\",\"events:*\",\"ec2:*\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"lambda:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutMetricFilter\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "url-shortener-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--url-shortener-pipeline-CodeBuildServiceRole-UKLGGV03YG4S" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:PutMetricFilter\",\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "url-shortener-pipeline-CodeBuildServiceRole-UKLGGV03YG4S"
  path                 = "/"
}

resource "aws_iam_role" "tfer--url-shortener-pipeline-CodePipelineServiceRole-K087Z21LJECJ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"cloudformation:*\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateChangeSet\",\"cloudformation:CreateStack\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeChangeSet\",\"cloudformation:DescribeStacks\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:UpdateStack\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "url-shortener-pipeline-CodePipelineServiceRole-K087Z21LJECJ"
  path                 = "/"
}

resource "aws_iam_role" "tfer--url-shortener-stack-LambdaRole-1I1JN7LNI1Q4D" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "LambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:*\"],\"Resource\":[\"*\"],\"Effect\":\"Allow\"},{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:DescribeTable\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:UpdateItem\"],\"Resource\":\"arn:aws:dynamodb:us-east-1:799611636099:table/url-shortener\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "url-shortener-stack-LambdaRole-1I1JN7LNI1Q4D"
  path                 = "/"
}

resource "aws_iam_role" "tfer--verification-codes-lambda-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"apigateway:*\",\"codedeploy:*\",\"cloudformation:CreateChangeSet\",\"dynamodb:*\",\"events:*\",\"ec2:*\",\"iam:GetRole\",\"iam:CreateRole\",\"iam:DeleteRole\",\"iam:PutRolePolicy\",\"iam:AttachRolePolicy\",\"iam:DeleteRolePolicy\",\"iam:DetachRolePolicy\",\"iam:PassRole\",\"lambda:*\",\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogGroups\",\"logs:PutRetentionPolicy\",\"logs:DeleteLogGroup\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "verification-codes-lambda-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--verification-codes-stack-LambdaRole-UP7587DAUKVE" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "LambdaRolePolicy0"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"dynamodb:BatchGetItem\",\"dynamodb:BatchWriteItem\",\"dynamodb:DeleteItem\",\"dynamodb:DescribeTable\",\"dynamodb:GetItem\",\"dynamodb:PutItem\",\"dynamodb:Query\",\"dynamodb:UpdateItem\"],\"Resource\":\"arn:aws:dynamodb:us-east-1:799611636099:table/verification-codes\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "verification-codes-stack-LambdaRole-UP7587DAUKVE"
  path                 = "/"
}

resource "aws_iam_role" "tfer--verification-passcode-pipe-CodePipelineServiceRole-1TZZ7SXC6YJFJ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"cloudformation.amazonaws.com\"]}},\"Action\":[\"iam:PassRole\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codedeploy:CreateDeployment\",\"codedeploy:GetApplication\",\"codedeploy:GetApplicationRevision\",\"codedeploy:GetDeployment\",\"codedeploy:GetDeploymentConfig\",\"codedeploy:RegisterApplicationRevision\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudwatch:*\",\"cloudformation:*\",\"s3:*\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"lambda:InvokeFunction\",\"lambda:ListFunctions\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:CreateChangeSet\",\"cloudformation:CreateStack\",\"cloudformation:DeleteChangeSet\",\"cloudformation:DeleteStack\",\"cloudformation:DescribeChangeSet\",\"cloudformation:DescribeStacks\",\"cloudformation:ExecuteChangeSet\",\"cloudformation:UpdateStack\",\"cloudformation:SetStackPolicy\",\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\"],\"Resource\":\"*\",\"Effect\":\"Allow\"},{\"Action\":[\"cloudformation:ValidateTemplate\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "verification-passcode-pipe-CodePipelineServiceRole-1TZZ7SXC6YJFJ"
  path                 = "/"
}

resource "aws_iam_role" "tfer--verification-passcode-pipelin-CodeBuildServiceRole-5Y7QG81POLY8" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"s3:GetObject\",\"s3:PutObject\",\"s3:GetObjectVersion\"],\"Resource\":\"*\",\"Effect\":\"Allow\"}]}"
  }

  max_session_duration = "3600"
  name                 = "verification-passcode-pipelin-CodeBuildServiceRole-5Y7QG81POLY8"
  path                 = "/"
}
