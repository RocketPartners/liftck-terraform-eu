resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-us-east-1-liftck-cron-pipeline_AWSCodePipelineServiceRole-us-east-1-liftck-cron-pipeline" {
  policy_arn = "arn:aws:iam::799611636099:policy/service-role/AWSCodePipelineServiceRole-us-east-1-liftck-cron-pipeline"
  role       = "AWSCodePipelineServiceRole-us-east-1-liftck-cron-pipeline"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSGlueServiceRole-ImportRole_AWSGlueServiceRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
  role       = "AWSGlueServiceRole-ImportRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSGlueServiceRole-ImportRole_AWSGlueServiceRole-ImportRole" {
  policy_arn = "arn:aws:iam::799611636099:policy/service-role/AWSGlueServiceRole-ImportRole"
  role       = "AWSGlueServiceRole-ImportRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAPIGateway_APIGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = "AWSServiceRoleForAPIGateway"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAWSChatbot_AWSChatbotServiceLinkedRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSChatbotServiceLinkedRolePolicy"
  role       = "AWSServiceRoleForAWSChatbot"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonElasticFileSystem_AmazonElasticFileSystemServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonElasticFileSystemServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonElasticFileSystem"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonElasticsearchService_AmazonElasticsearchServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonElasticsearchServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonElasticsearchService"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonMQ_AmazonMQServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonMQServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonMQ"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonSSM_AmazonSSMServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSSM"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_DynamoDBTable_AWSApplicationAutoscalingDynamoDBTablePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_ECSService_AWSApplicationAutoscalingECSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_ECSService"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCloudFormationStackSetsOrgMember_CloudFormationStackSetsOrgMemberServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CloudFormationStackSetsOrgMemberServiceRolePolicy"
  role       = "AWSServiceRoleForCloudFormationStackSetsOrgMember"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCloudTrail_CloudTrailServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CloudTrailServiceRolePolicy"
  role       = "AWSServiceRoleForCloudTrail"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCloudWatchCrossAccount_CloudWatch-CrossAccountAccess" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CloudWatch-CrossAccountAccess"
  role       = "AWSServiceRoleForCloudWatchCrossAccount"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCodeStarNotifications_AWSCodeStarNotificationsServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSCodeStarNotificationsServiceRolePolicy"
  role       = "AWSServiceRoleForCodeStarNotifications"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForComputeOptimizer_ComputeOptimizerServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ComputeOptimizerServiceRolePolicy"
  role       = "AWSServiceRoleForComputeOptimizer"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForConfig_AWSConfigServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSConfigServiceRolePolicy"
  role       = "AWSServiceRoleForConfig"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForECS_AmazonECSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"
  role       = "AWSServiceRoleForECS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForEMRCleanup_AmazonEMRCleanupPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEMRCleanupPolicy"
  role       = "AWSServiceRoleForEMRCleanup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElastiCache_ElastiCacheServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ElastiCacheServiceRolePolicy"
  role       = "AWSServiceRoleForElastiCache"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = "AWSServiceRoleForElasticLoadBalancing"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForGlobalAccelerator_AWSGlobalAcceleratorSLRPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"
  role       = "AWSServiceRoleForGlobalAccelerator"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForRDS_AmazonRDSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = "AWSServiceRoleForRDS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForRedshift_AmazonRedshiftServiceLinkedRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRedshiftServiceLinkedRolePolicy"
  role       = "AWSServiceRoleForRedshift"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSecurityHub_AWSSecurityHubServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSecurityHubServiceRolePolicy"
  role       = "AWSServiceRoleForSecurityHub"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--DataPipelineDefaultResourceRole_AmazonEC2RoleforDataPipelineRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforDataPipelineRole"
  role       = "DataPipelineDefaultResourceRole"
}

resource "aws_iam_role_policy_attachment" "tfer--DataPipelineDefaultRole_AWSDataPipelineRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSDataPipelineRole"
  role       = "DataPipelineDefaultRole"
}

resource "aws_iam_role_policy_attachment" "tfer--Indexer_EC2_role_Indexer_EC2_role" {
  policy_arn = "arn:aws:iam::799611636099:policy/Indexer_EC2_role"
  role       = "Indexer_EC2_role"
}

resource "aws_iam_role_policy_attachment" "tfer--KinesisFirehoseServiceRole-circleklift-s-us-east-1-1614626220344_KinesisFirehoseServicePolicy-circleklift-sms-opt-in-dev-us-east-1" {
  policy_arn = "arn:aws:iam::799611636099:policy/service-role/KinesisFirehoseServicePolicy-circleklift-sms-opt-in-dev-us-east-1"
  role       = "KinesisFirehoseServiceRole-circleklift-s-us-east-1-1614626220344"
}

resource "aws_iam_role_policy_attachment" "tfer--OrganizationAccountAccessRole_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "OrganizationAccountAccessRole"
}

resource "aws_iam_role_policy_attachment" "tfer--RedshiftCopy_AmazonS3ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  role       = "RedshiftCopy"
}

resource "aws_iam_role_policy_attachment" "tfer--RedshiftCopy_redshift-write-to-s3-ck-data-lake-prod" {
  policy_arn = "arn:aws:iam::799611636099:policy/redshift-write-to-s3-ck-data-lake-prod"
  role       = "RedshiftCopy"
}

resource "aws_iam_role_policy_attachment" "tfer--WizAccessRole_SecurityAudit" {
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
  role       = "WizAccessRole"
}

resource "aws_iam_role_policy_attachment" "tfer--WizAccessRole_ViewOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"
  role       = "WizAccessRole"
}

resource "aws_iam_role_policy_attachment" "tfer--age-verification-stack-LambdaRole-2PX5TNE1WJ0A_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "age-verification-stack-LambdaRole-2PX5TNE1WJ0A"
}

resource "aws_iam_role_policy_attachment" "tfer--age-verification-stack-LambdaRole-2PX5TNE1WJ0A_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "age-verification-stack-LambdaRole-2PX5TNE1WJ0A"
}

resource "aws_iam_role_policy_attachment" "tfer--alarm-lambda-role_AmazonEC2ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
  role       = "alarm-lambda-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aurora-trigger-tester-role-y6szsbx3_AWSLambdaBasicExecutionRole-b81c0168-ba67-4275-93b1-41f07ebe2f9e" {
  policy_arn = "arn:aws:iam::799611636099:policy/service-role/AWSLambdaBasicExecutionRole-b81c0168-ba67-4275-93b1-41f07ebe2f9e"
  role       = "aurora-trigger-tester-role-y6szsbx3"
}

resource "aws_iam_role_policy_attachment" "tfer--circlek-prod-bi-report-query-role-uikuulqz_AWSLambdaBasicExecutionRole-18d0e51d-fa87-403a-9f0e-75c2c59e604f" {
  policy_arn = "arn:aws:iam::799611636099:policy/service-role/AWSLambdaBasicExecutionRole-18d0e51d-fa87-403a-9f0e-75c2c59e604f"
  role       = "circlek-prod-bi-report-query-role-uikuulqz"
}

resource "aws_iam_role_policy_attachment" "tfer--circlek-prod-bi-report-query-role-uikuulqz_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "circlek-prod-bi-report-query-role-uikuulqz"
}

resource "aws_iam_role_policy_attachment" "tfer--circlek-prod-bi-report-query-role-uikuulqz_AmazonS3ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  role       = "circlek-prod-bi-report-query-role-uikuulqz"
}

resource "aws_iam_role_policy_attachment" "tfer--circlek-prod-glue-role_AWSGlueServiceRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
  role       = "circlek-prod-glue-role"
}

resource "aws_iam_role_policy_attachment" "tfer--circlek-prod-glue-role_AmazonRedshiftReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftReadOnlyAccess"
  role       = "circlek-prod-glue-role"
}

resource "aws_iam_role_policy_attachment" "tfer--cirk-rds-role_cirk-rds-invoke-lambda" {
  policy_arn = "arn:aws:iam::799611636099:policy/cirk-rds-invoke-lambda"
  role       = "cirk-rds-role"
}

resource "aws_iam_role_policy_attachment" "tfer--ck-prod-deployment-role_AWS-Chatbot-NotificationsOnly-Policy-430ecf21-ee80-4f61-9131-cdbf2a7620be" {
  policy_arn = "arn:aws:iam::799611636099:policy/service-role/AWS-Chatbot-NotificationsOnly-Policy-430ecf21-ee80-4f61-9131-cdbf2a7620be"
  role       = "ck-prod-deployment-role"
}

resource "aws_iam_role_policy_attachment" "tfer--client-logger-stack-LambdaRole-1CTVFA7M4EANJ_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "client-logger-stack-LambdaRole-1CTVFA7M4EANJ"
}

resource "aws_iam_role_policy_attachment" "tfer--cross-account-s3-to-redshift-role_cross-account-s3-to-redshift" {
  policy_arn = "arn:aws:iam::799611636099:policy/cross-account-s3-to-redshift"
  role       = "cross-account-s3-to-redshift-role"
}

resource "aws_iam_role_policy_attachment" "tfer--data-sync-notifier-stack-LambdaRole-1UEWP9XHNWLGA_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "data-sync-notifier-stack-LambdaRole-1UEWP9XHNWLGA"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2-ddb-role_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "ec2-ddb-role"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2-machine-role-liftcksnooze_temp-ec2-policy" {
  policy_arn = "arn:aws:iam::799611636099:policy/temp-ec2-policy"
  role       = "ec2-machine-role-liftcksnooze"
}

resource "aws_iam_role_policy_attachment" "tfer--ecsAutoscaleRole_AmazonEC2ContainerServiceAutoscaleRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceAutoscaleRole"
  role       = "ecsAutoscaleRole"
}

resource "aws_iam_role_policy_attachment" "tfer--indexer-stack-liftckindexerRole-1DO1GBFI1SSZ9_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "indexer-stack-liftckindexerRole-1DO1GBFI1SSZ9"
}

resource "aws_iam_role_policy_attachment" "tfer--indexer-stack-liftckindexerRole-1DO1GBFI1SSZ9_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "indexer-stack-liftckindexerRole-1DO1GBFI1SSZ9"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-sms-opt-in-prod-with-role-sqs-firehose_lambda-sms-opt-in-prod-to-sqs-and-firehose" {
  policy_arn = "arn:aws:iam::799611636099:policy/lambda-sms-opt-in-prod-to-sqs-and-firehose"
  role       = "lambda-sms-opt-in-prod-with-role-sqs-firehose"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-cron-stack-UpdateActivelyScheduledLambdaRol-1AS820JNA175X_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "liftck-cron-stack-UpdateActivelyScheduledLambdaRol-1AS820JNA175X"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-cron-stack-UpdateActivelyScheduledLambdaRol-1AS820JNA175X_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "liftck-cron-stack-UpdateActivelyScheduledLambdaRol-1AS820JNA175X"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-cron-stack-UpdateMasterDataFileLambdaRole-1AUUKZYSDZQW4_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "liftck-cron-stack-UpdateMasterDataFileLambdaRole-1AUUKZYSDZQW4"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-cron-stack-UpdateMasterDataFileLambdaRole-1AUUKZYSDZQW4_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "liftck-cron-stack-UpdateMasterDataFileLambdaRole-1AUUKZYSDZQW4"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-cron-stack-UpdateOnPromoReindexLambdaRole-1FFVEMGL9INQ2_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "liftck-cron-stack-UpdateOnPromoReindexLambdaRole-1FFVEMGL9INQ2"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-cron-stack-UpdateOnPromoReindexLambdaRole-1FFVEMGL9INQ2_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "liftck-cron-stack-UpdateOnPromoReindexLambdaRole-1FFVEMGL9INQ2"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-octanebuilder-prod-OctaneBuilderLambdaRole-1XI8L54K0RS7X_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "liftck-octanebuilder-prod-OctaneBuilderLambdaRole-1XI8L54K0RS7X"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-octanebuilder-prod-OctaneBuilderLambdaRole-1XI8L54K0RS7X_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "liftck-octanebuilder-prod-OctaneBuilderLambdaRole-1XI8L54K0RS7X"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-octanebuilder-stack-OctaneBuilderLambdaRole-1EF3E5OFZEYP1_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "liftck-octanebuilder-stack-OctaneBuilderLambdaRole-1EF3E5OFZEYP1"
}

resource "aws_iam_role_policy_attachment" "tfer--liftck-octanebuilder-stack-OctaneBuilderLambdaRole-1EF3E5OFZEYP1_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "liftck-octanebuilder-stack-OctaneBuilderLambdaRole-1EF3E5OFZEYP1"
}

resource "aws_iam_role_policy_attachment" "tfer--loyalty-points-stack-LoyaltyPointsLambdaRole-1DDVYF7IDPFHG_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "loyalty-points-stack-LoyaltyPointsLambdaRole-1DDVYF7IDPFHG"
}

resource "aws_iam_role_policy_attachment" "tfer--loyalty-punchcard-role_loyalty-punchcard-policy" {
  policy_arn = "arn:aws:iam::799611636099:policy/loyalty-punchcard-policy"
  role       = "loyalty-punchcard-role"
}

resource "aws_iam_role_policy_attachment" "tfer--prod-dev-database-sync-role-2z6bctsw_AWSLambdaBasicExecutionRole-296a978a-9482-4f78-bb26-b9598938c5e0" {
  policy_arn = "arn:aws:iam::799611636099:policy/service-role/AWSLambdaBasicExecutionRole-296a978a-9482-4f78-bb26-b9598938c5e0"
  role       = "prod-dev-database-sync-role-2z6bctsw"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-monitoring-role_AmazonRDSEnhancedMonitoringRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
  role       = "rds-monitoring-role"
}

resource "aws_iam_role_policy_attachment" "tfer--redshift-s3-dump-access_AmazonS3ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  role       = "redshift-s3-dump-access"
}

resource "aws_iam_role_policy_attachment" "tfer--redshift-s3-dump-access_redshift-write-to-s3-ck-data-lake-prod" {
  policy_arn = "arn:aws:iam::799611636099:policy/redshift-write-to-s3-ck-data-lake-prod"
  role       = "redshift-s3-dump-access"
}

resource "aws_iam_role_policy_attachment" "tfer--redshift-unload-bucket-tobacco_redshift-unload-tobaco-bucket" {
  policy_arn = "arn:aws:iam::799611636099:policy/redshift-unload-tobaco-bucket"
  role       = "redshift-unload-bucket-tobacco"
}

resource "aws_iam_role_policy_attachment" "tfer--redshift-unload-s3-buckets_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "redshift-unload-s3-buckets"
}

resource "aws_iam_role_policy_attachment" "tfer--redshift-unload-tobaco-bucket_redshift-unload-tobacco-bucket" {
  policy_arn = "arn:aws:iam::799611636099:policy/redshift-unload-tobacco-bucket"
  role       = "redshift-unload-tobaco-bucket"
}

resource "aws_iam_role_policy_attachment" "tfer--redshift-unload-tobaco-bucket_redshift-unload-tobaco-bucket" {
  policy_arn = "arn:aws:iam::799611636099:policy/redshift-unload-tobaco-bucket"
  role       = "redshift-unload-tobaco-bucket"
}

resource "aws_iam_role_policy_attachment" "tfer--rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q"
}

resource "aws_iam_role_policy_attachment" "tfer--rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q_AWSLambdaExecute" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaExecute"
  role       = "rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q"
}

resource "aws_iam_role_policy_attachment" "tfer--rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q"
}

resource "aws_iam_role_policy_attachment" "tfer--rocket-sqlserver-ec2-migration-role_rocket-sqlserver-ec2-migration-policy" {
  policy_arn = "arn:aws:iam::799611636099:policy/rocket-sqlserver-ec2-migration-policy"
  role       = "rocket-sqlserver-ec2-migration-role"
}

resource "aws_iam_role_policy_attachment" "tfer--scheduler-lambda-role_AmazonEC2ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
  role       = "scheduler-lambda-role"
}

resource "aws_iam_role_policy_attachment" "tfer--sms-bot-user-role_firehose-sms-dev-full-access" {
  policy_arn = "arn:aws:iam::799611636099:policy/firehose-sms-dev-full-access"
  role       = "sms-bot-user-role"
}

resource "aws_iam_role_policy_attachment" "tfer--stacksets-exec-63e60d0c74a9857bdaa08f208be2384e_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "stacksets-exec-63e60d0c74a9857bdaa08f208be2384e"
}

resource "aws_iam_role_policy_attachment" "tfer--test123-role-8p5qt810_AWSLambdaBasicExecutionRole-0ee53d4c-bbb2-4409-80c6-5f8f6c4ac9f3" {
  policy_arn = "arn:aws:iam::799611636099:policy/service-role/AWSLambdaBasicExecutionRole-0ee53d4c-bbb2-4409-80c6-5f8f6c4ac9f3"
  role       = "test123-role-8p5qt810"
}

resource "aws_iam_role_policy_attachment" "tfer--url-shortener-stack-LambdaRole-1I1JN7LNI1Q4D_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "url-shortener-stack-LambdaRole-1I1JN7LNI1Q4D"
}

resource "aws_iam_role_policy_attachment" "tfer--verification-codes-stack-LambdaRole-UP7587DAUKVE_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "verification-codes-stack-LambdaRole-UP7587DAUKVE"
}
