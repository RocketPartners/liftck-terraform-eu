resource "aws_config_config_rule" "tfer--securityhub-access-keys-rotated-21f0927e" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the active access keys are rotated within the number of days specified in maxAccessKeyAge"
  input_parameters            = "{\"maxAccessKeyAge\":\"90\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-access-keys-rotated-21f0927e"

  source {
    owner             = "AWS"
    source_identifier = "ACCESS_KEYS_ROTATED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-acm-certificate-expiration-check-605bb5a7" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Imported ACM certificates should be renewed within the number of days specified."
  input_parameters            = "{\"daysToExpiration\":\"30\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-acm-certificate-expiration-check-605bb5a7"

  scope {
    compliance_resource_types = ["AWS::ACM::Certificate"]
  }

  source {
    owner             = "AWS"
    source_identifier = "ACM_CERTIFICATE_EXPIRATION_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-alb-desync-mode-check-7712b7f1" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether the Application Load Balancer is configured defensive or strictest de-sync mitigation mode. This control fails if the Application Load Balancer is not configured with defensive or strictest desync mitigation mode."
  input_parameters = "{\"desyncMode\":\"defensive,strictest\"}"
  name             = "securityhub-alb-desync-mode-check-7712b7f1"

  source {
    owner             = "AWS"
    source_identifier = "ALB_DESYNC_MODE_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-alb-http-drop-invalid-header-enabled-7ac5d727" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if rule evaluates Application Load Balancers (ALBs) to ensure they are configured to drop http headers. The rule is NON_COMPLIANT if the value of routing.http.drop_invalid_header_fields.enabled is set to false."
  input_parameters = "{}"
  name             = "securityhub-alb-http-drop-invalid-header-enabled-7ac5d727"

  source {
    owner             = "AWS"
    source_identifier = "ALB_HTTP_DROP_INVALID_HEADER_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-alb-http-to-https-redirection-check-4c6a83c3" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether HTTP to HTTPS redirection is configured on all HTTP listeners of Application Load Balancers. The rule is NON_COMPLIANT if one or more HTTP listeners of Application Load Balancers do not have HTTP to HTTPS redirection configured."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-alb-http-to-https-redirection-check-4c6a83c3"

  source {
    owner             = "AWS"
    source_identifier = "ALB_HTTP_TO_HTTPS_REDIRECTION_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-api-gw-associated-with-waf-513a215f" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks to see if an API Gateway stage is using an AWS WAF Web ACL. This control fails if an AWS WAF Web ACL is not attached to a REST API Gateway stage."
  input_parameters = "{}"
  name             = "securityhub-api-gw-associated-with-waf-513a215f"

  source {
    owner             = "AWS"
    source_identifier = "API_GW_ASSOCIATED_WITH_WAF"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-api-gw-cache-encrypted-0fd9251f" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether all methods in Amazon API Gateway REST API stages that have cache enabled are encrypted. The control fails if any method in API Gateway REST API stage is configured to cache and the cache is not encrypted."
  input_parameters = "{}"
  name             = "securityhub-api-gw-cache-encrypted-0fd9251f"

  scope {
    compliance_resource_types = ["AWS::ApiGateway::Stage"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-api-gw-execution-logging-enabled-b790054e" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that all stages in Amazon API Gateway REST and WebSocket APIs have logging enabled. The rule is NON_COMPLIANT if logging is not enabled. The rule is NON_COMPLIANT if loggingLevel is neither ERROR nor INFO."
  input_parameters = "{}"
  name             = "securityhub-api-gw-execution-logging-enabled-b790054e"

  source {
    owner             = "AWS"
    source_identifier = "API_GW_EXECUTION_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-api-gw-ssl-enabled-e4783c62" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if a REST API stage uses an Secure Sockets Layer (SSL) certificate. This rule is NON_COMPLIANT if the REST API stage does not have an associated SSL certificate."
  input_parameters = "{}"
  name             = "securityhub-api-gw-ssl-enabled-e4783c62"

  source {
    owner             = "AWS"
    source_identifier = "API_GW_SSL_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-api-gw-xray-enabled-8d718b0b" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if AWS X-Ray tracing is enabled on Amazon API Gateway REST APIs. The rule is COMPLIANT if X-Ray tracing is enabled and NON_COMPLIANT otherwise."
  input_parameters = "{}"
  name             = "securityhub-api-gw-xray-enabled-8d718b0b"

  source {
    owner             = "AWS"
    source_identifier = "API_GW_XRAY_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-aurora-mysql-backtracking-enabled-2dcff221" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Amazon Aurora clusters have backtracking enabled."
  input_parameters = "{}"
  name             = "securityhub-aurora-mysql-backtracking-enabled-2dcff221"

  source {
    owner             = "AWS"
    source_identifier = "AURORA_MYSQL_BACKTRACKING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-autoscaling-group-elb-healthcheck-required-a215244b" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether your Auto Scaling groups that are associated with a load balancer are using Elastic Load Balancing health checks."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-group-elb-healthcheck-required-a215244b"

  scope {
    compliance_resource_types = ["AWS::AutoScaling::AutoScalingGroup"]
  }

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_GROUP_ELB_HEALTHCHECK_REQUIRED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-autoscaling-launch-config-hop-limit-77af41ed" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks the number of network hops that the metadata token can travel. This control fails if the Metadata response hop limit is greater than one."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-launch-config-hop-limit-77af41ed"

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_LAUNCH_CONFIG_HOP_LIMIT"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-autoscaling-launch-config-public-ip-disabled-585d21d4" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Amazon EC2 Auto Scaling groups have public IP addresses enabled using launch configurations."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-launch-config-public-ip-disabled-585d21d4"

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-autoscaling-launch-template-713997d6" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether an Amazon EC2 Auto Scaling group is created from an EC2 launch template."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-launch-template-713997d6"

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_LAUNCH_TEMPLATE"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-autoscaling-launchconfig-requires-imdsv2-fd205b3d" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether only IMDSv2 is enabled. This control fails if the Metadata version is not included in the launch configuration or if both Metadata V1 and V2 are enabled."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-launchconfig-requires-imdsv2-fd205b3d"

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_LAUNCHCONFIG_REQUIRES_IMDSV2"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-autoscaling-multiple-az-8ef8d3cb" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether an Auto Scaling group spans multiple Availability Zones. The control fails if an Auto Scaling group does not span multiple availability zones."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-multiple-az-8ef8d3cb"

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_MULTIPLE_AZ"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-autoscaling-multiple-instance-types-506b77a4" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether an Amazon EC2 AutoScaling group uses multiple instance types. This control fails if the Amazon EC2 AutoScaling group has only one instance type defined."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-multiple-instance-types-506b77a4"

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_MULTIPLE_INSTANCE_TYPES"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-beanstalk-enhanced-health-reporting-enabled-621fc50d" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks for Elastic Beanstalk environment is configured for 'enhanced' health reporting and NON_COMPLIANT if configured for 'basic' health reporting."
  input_parameters = "{}"
  name             = "securityhub-beanstalk-enhanced-health-reporting-enabled-621fc50d"

  source {
    owner             = "AWS"
    source_identifier = "BEANSTALK_ENHANCED_HEALTH_REPORTING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-clb-desync-mode-check-85f6b784" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Classic Load Balancers (CLB) are configured with a user defined Desync mitigation mode. This control fails if CLB Desync mitigation mode does not match with user defined Desync mitigation mode."
  input_parameters = "{\"desyncMode\":\"defensive,strictest\"}"
  name             = "securityhub-clb-desync-mode-check-85f6b784"

  source {
    owner             = "AWS"
    source_identifier = "CLB_DESYNC_MODE_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-clb-multiple-az-9acae7e1" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether a Classic Load Balancer has been configured to span multiple Availability Zones. The control fails if the Classic Load Balancer does not span multiple availability zones."
  input_parameters = "{}"
  name             = "securityhub-clb-multiple-az-9acae7e1"

  source {
    owner             = "AWS"
    source_identifier = "CLB_MULTIPLE_AZ"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloud-trail-cloud-watch-logs-enabled-56c47a8c" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether AWS CloudTrail trails are configured to send logs to Amazon CloudWatch logs."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-cloud-trail-cloud-watch-logs-enabled-56c47a8c"

  scope {
    compliance_resource_types = ["AWS::CloudTrail::Trail"]
  }

  source {
    owner             = "AWS"
    source_identifier = "CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloud-trail-encryption-enabled-02dd5d5e" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Ensure CloudTrail logs are encrypted at rest using KMS CMKs"
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-cloud-trail-encryption-enabled-02dd5d5e"

  scope {
    compliance_resource_types = ["AWS::CloudTrail::Trail"]
  }

  source {
    owner             = "AWS"
    source_identifier = "CLOUD_TRAIL_ENCRYPTION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloud-trail-log-file-validation-enabled-0555b9f8" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether AWS CloudTrail creates a signed digest file with logs."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-cloud-trail-log-file-validation-enabled-0555b9f8"

  scope {
    compliance_resource_types = ["AWS::CloudTrail::Trail"]
  }

  source {
    owner             = "AWS"
    source_identifier = "CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudformation-stack-notification-check-b18dc2f5" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if your CloudFormation stacks are sending event notifications to an SNS topic."
  input_parameters = "{}"
  name             = "securityhub-cloudformation-stack-notification-check-b18dc2f5"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFORMATION_STACK_NOTIFICATION_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-accesslogs-enabled-952d674d" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks to see if server access logging is enabled on CloudFront Distributions. The control will fail if access logging is not enabled for the distribution."
  input_parameters = "{}"
  name             = "securityhub-cloudfront-accesslogs-enabled-952d674d"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_ACCESSLOGS_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-associated-with-waf-cff3db2e" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks to see if Cloudfront distributions are associated with either WAF or WAFv2 web ACLs. The control will fail if the distribution is not associated with a web ACL."
  input_parameters = "{}"
  name             = "securityhub-cloudfront-associated-with-waf-cff3db2e"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_ASSOCIATED_WITH_WAF"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-custom-ssl-certificate-c7263ce4" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if CloudFront distributions are using the default SSL/TLS certificate CloudFront provides instead of a custom one. This control fails for a CloudFront distribution if it uses the default SSL/TLS certificate."
  input_parameters = "{}"
  name             = "securityhub-cloudfront-custom-ssl-certificate-c7263ce4"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_CUSTOM_SSL_CERTIFICATE"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-default-root-object-configured-ac020f18" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if an Amazon CloudFront distribution is configured to return a specific object that is the default root object. The rule is NON_COMPLIANT if CloudFront distribution does not have a default root object configured."
  input_parameters = "{}"
  name             = "securityhub-cloudfront-default-root-object-configured-ac020f18"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_DEFAULT_ROOT_OBJECT_CONFIGURED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-no-deprecated-ssl-protocols-ebba3fdd" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if CloudFront distributions are using deprecated SSL protocols for HTTPS communication between CloudFront edge locations and custom origins. This control fails for a CloudFront distribution if any ‘OriginSslProtocols’ includes ‘SSLv3’"
  input_parameters = "{}"
  name             = "securityhub-cloudfront-no-deprecated-ssl-protocols-ebba3fdd"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_NO_DEPRECATED_SSL_PROTOCOLS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-origin-access-identity-enabled-4c6762c6" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that Amazon CloudFront distribution with Amazon S3 Origin type has Origin Access Identity (OAI) configured."
  input_parameters = "{}"
  name             = "securityhub-cloudfront-origin-access-identity-enabled-4c6762c6"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_ORIGIN_ACCESS_IDENTITY_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-origin-failover-enabled-74095acf" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether an origin group is configured for the distribution of at least 2 origins in the origin group for Amazon CloudFront. This rule is NON_COMPLIANT if there are no origin groups for the distribution."
  input_parameters = "{}"
  name             = "securityhub-cloudfront-origin-failover-enabled-74095acf"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_ORIGIN_FAILOVER_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-sni-enabled-e850ba7a" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Amazon CloudFront distributions are using a custom SSL/TLS certificate and are configured to use SNI to serve HTTPS requests as opposed to dedicated IP address."
  input_parameters = "{}"
  name             = "securityhub-cloudfront-sni-enabled-e850ba7a"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_SNI_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-traffic-to-origin-encrypted-e26d5de0" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if CloudFront distributions are encrypting traffic to custom origins."
  input_parameters = "{}"
  name             = "securityhub-cloudfront-traffic-to-origin-encrypted-e26d5de0"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_TRAFFIC_TO_ORIGIN_ENCRYPTED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cloudfront-viewer-policy-https-dd462760" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether your Amazon CloudFront distributions use HTTPS (directly or via a redirection)."
  input_parameters = "{}"
  name             = "securityhub-cloudfront-viewer-policy-https-dd462760"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDFRONT_VIEWER_POLICY_HTTPS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-cmk-backing-key-rotation-enabled-9a2481d9" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks that key rotation is enabled for customer created customer master key (CMK)"
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-cmk-backing-key-rotation-enabled-9a2481d9"

  scope {
    compliance_resource_types = ["AWS::KMS::Key"]
  }

  source {
    owner             = "AWS"
    source_identifier = "CMK_BACKING_KEY_ROTATION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-codebuild-project-environment-privileged-check-43d2f713" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if an AWS CodeBuild project environment has privileged mode enabled. The rule fails for a CodeBuild project if 'privilegedMode' is set to 'true'."
  input_parameters = "{}"
  name             = "securityhub-codebuild-project-environment-privileged-check-43d2f713"

  source {
    owner             = "AWS"
    source_identifier = "CODEBUILD_PROJECT_ENVIRONMENT_PRIVILEGED_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-codebuild-project-envvar-awscred-check-c1f181ca" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the project contains environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY."
  input_parameters = "{}"
  name             = "securityhub-codebuild-project-envvar-awscred-check-c1f181ca"

  scope {
    compliance_resource_types = ["AWS::CodeBuild::Project"]
  }

  source {
    owner             = "AWS"
    source_identifier = "CODEBUILD_PROJECT_ENVVAR_AWSCRED_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-codebuild-project-logging-enabled-f1cd5a8d" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether a CodeBuild project environment has at least one log option enabled. This control fails if s3 or CloudWatch logs aren't present or in DISABLED status. The control passes if the status of either logs is ENABLED."
  input_parameters = "{}"
  name             = "securityhub-codebuild-project-logging-enabled-f1cd5a8d"

  source {
    owner             = "AWS"
    source_identifier = "CODEBUILD_PROJECT_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-codebuild-project-source-repo-url-check-09d42d78" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the GitHub or Bitbucket source repository URL contains either personal access tokens or user name and password."
  input_parameters = "{}"
  name             = "securityhub-codebuild-project-source-repo-url-check-09d42d78"

  scope {
    compliance_resource_types = ["AWS::CodeBuild::Project"]
  }

  source {
    owner             = "AWS"
    source_identifier = "CODEBUILD_PROJECT_SOURCE_REPO_URL_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-dax-encryption-enabled-b5177fbd" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks that DynamoDB Accelerator (DAX) clusters are encrypted. The rule is NON_COMPLIANT if a DAX cluster is not encrypted."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-dax-encryption-enabled-b5177fbd"

  source {
    owner             = "AWS"
    source_identifier = "DAX_ENCRYPTION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-db-instance-backup-enabled-acaedb6e" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether RDS DB instances have backups enabled. Optionally, the rule checks the backup retention period and the backup window."
  input_parameters = "{\"backupRetentionMinimum\":\"7\"}"
  name             = "securityhub-db-instance-backup-enabled-acaedb6e"

  source {
    owner             = "AWS"
    source_identifier = "DB_INSTANCE_BACKUP_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-dms-replication-not-public-cde6456d" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether AWS Database Migration Service replication instances are public. The rule is NON_COMPLIANT if PubliclyAccessible field is true."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-dms-replication-not-public-cde6456d"

  scope {
    compliance_resource_types = ["AWS::DMS::ReplicationInstance"]
  }

  source {
    owner             = "AWS"
    source_identifier = "DMS_REPLICATION_NOT_PUBLIC"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-dynamodb-autoscaling-enabled-2275a483" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether Auto Scaling or On-Demand is enabled on your DynamoDB tables and/or global secondary indexes. Optionally you can set the read and write capacity units for the table or global secondary index."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-dynamodb-autoscaling-enabled-2275a483"

  source {
    owner             = "AWS"
    source_identifier = "DYNAMODB_AUTOSCALING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-dynamodb-pitr-enabled-407d50cc" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that point in time recovery (PITR) is enabled for Amazon DynamoDB tables. The rule is NON_COMPLIANT if point in time recovery is not enabled for Amazon DynamoDB tables"
  input_parameters = "{}"
  name             = "securityhub-dynamodb-pitr-enabled-407d50cc"

  source {
    owner             = "AWS"
    source_identifier = "DYNAMODB_PITR_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ebs-snapshot-public-restorable-check-29321ce0" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether Amazon Elastic Block Store snapshots are not publicly restorable."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-ebs-snapshot-public-restorable-check-29321ce0"

  source {
    owner             = "AWS"
    source_identifier = "EBS_SNAPSHOT_PUBLIC_RESTORABLE_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-ebs-encryption-by-default-dddd38d4" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks that Amazon Elastic Block Store (EBS) encryption is enabled by default. The rule is NON_COMPLIANT if the encryption is not enabled."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-ec2-ebs-encryption-by-default-dddd38d4"

  source {
    owner             = "AWS"
    source_identifier = "EC2_EBS_ENCRYPTION_BY_DEFAULT"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-imdsv2-check-514d55df" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether your Amazon Elastic Compute Cloud (Amazon EC2) instance metadata version is configured with Instance Metadata Service Version 2 (IMDSv2)."
  input_parameters = "{}"
  name             = "securityhub-ec2-imdsv2-check-514d55df"

  source {
    owner             = "AWS"
    source_identifier = "EC2_IMDSV2_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-instance-managed-by-ssm-56715110" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the Amazon EC2 instances in your account are managed by AWS Systems Manager."
  input_parameters = "{}"
  name             = "securityhub-ec2-instance-managed-by-ssm-56715110"

  scope {
    compliance_resource_types = ["AWS::EC2::Instance", "AWS::SSM::ManagedInstanceInventory"]
  }

  source {
    owner             = "AWS"
    source_identifier = "EC2_INSTANCE_MANAGED_BY_SSM"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-instance-multiple-eni-check-16c3b047" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks to see if Amazon EC2 instance uses multiple ENI/EFA. This control will pass if single network adapters is used."
  input_parameters = "{}"
  name             = "securityhub-ec2-instance-multiple-eni-check-16c3b047"

  source {
    owner             = "AWS"
    source_identifier = "EC2_INSTANCE_MULTIPLE_ENI_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-instance-no-public-ip-70dbfc99" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether Amazon Elastic Compute Cloud (Amazon EC2) instances have a public IP association. The rule is NON_COMPLIANT if the publicIp field is present in the Amazon EC2 instance configuration item. This rule applies only to IPv4."
  input_parameters = "{}"
  name             = "securityhub-ec2-instance-no-public-ip-70dbfc99"

  source {
    owner             = "AWS"
    source_identifier = "EC2_INSTANCE_NO_PUBLIC_IP"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-managedinstance-association-compliance-status-check-6db51b34" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the compliance status of the Amazon EC2 Systems Manager association compliance is COMPLIANT or NON_COMPLIANT after the association execution on the instance. The rule is COMPLIANT if the field status is COMPLIANT."
  input_parameters = "{}"
  name             = "securityhub-ec2-managedinstance-association-compliance-status-check-6db51b34"

  scope {
    compliance_resource_types = ["AWS::SSM::AssociationCompliance"]
  }

  source {
    owner             = "AWS"
    source_identifier = "EC2_MANAGEDINSTANCE_ASSOCIATION_COMPLIANCE_STATUS_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-managedinstance-patch-compliance-0bcba298" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the compliance status of the Amazon EC2 Systems Manager patch compliance is COMPLIANT or NON_COMPLIANT after the patch installation on the instance."
  input_parameters = "{}"
  name             = "securityhub-ec2-managedinstance-patch-compliance-0bcba298"

  scope {
    compliance_resource_types = ["AWS::SSM::PatchCompliance"]
  }

  source {
    owner             = "AWS"
    source_identifier = "EC2_MANAGEDINSTANCE_PATCH_COMPLIANCE_STATUS_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-paravirtual-instance-check-c896afc6" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if the virtualization type of an EC2 instance is paravirtual. This control fails if for an EC2 instance if 'virtualizationType' is set to 'paravirtual'."
  input_parameters = "{}"
  name             = "securityhub-ec2-paravirtual-instance-check-c896afc6"

  source {
    owner             = "AWS"
    source_identifier = "EC2_PARAVIRTUAL_INSTANCE_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-security-group-attached-to-eni-periodic-93c304d2" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This AWS control checks that security groups are attached to Amazon EC2 instances or to an elastic network interface. The control will fail the security group is not associated with an Amazon EC2 instance or an elastic network interface."
  input_parameters = "{}"
  name             = "securityhub-ec2-security-group-attached-to-eni-periodic-93c304d2"

  source {
    owner             = "AWS"
    source_identifier = "EC2_SECURITY_GROUP_ATTACHED_TO_ENI_PERIODIC"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-stopped-instance-e90b59eb" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether there are instances stopped for more than the allowed number of days."
  input_parameters            = "{\"AllowedDays\":\"30\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-ec2-stopped-instance-e90b59eb"

  source {
    owner             = "AWS"
    source_identifier = "EC2_STOPPED_INSTANCE"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ec2-transit-gateway-auto-vpc-attach-disabled-bc76ebf4" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if EC2 Transit Gateways are automatically accepting shared VPC attachments requests. This control will fail for a Transit Gateway that automatically accept shared VPC attachment requests."
  input_parameters = "{}"
  name             = "securityhub-ec2-transit-gateway-auto-vpc-attach-disabled-bc76ebf4"

  source {
    owner             = "AWS"
    source_identifier = "EC2_TRANSIT_GATEWAY_AUTO_VPC_ATTACH_DISABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecr-private-image-scanning-enabled-7c019278" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether a private ECR repository has image scanning enabled. This control fails if a private ECR repository has image scanning disabled."
  input_parameters = "{}"
  name             = "securityhub-ecr-private-image-scanning-enabled-7c019278"

  source {
    owner             = "AWS"
    source_identifier = "ECR_PRIVATE_IMAGE_SCANNING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecr-private-lifecycle-policy-configured-efefba97" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether a ECR repository has at least one lifecycle policy configured. This control fails if a ECR repository does not have any lifecycle policies configured."
  input_parameters = "{}"
  name             = "securityhub-ecr-private-lifecycle-policy-configured-efefba97"

  source {
    owner             = "AWS"
    source_identifier = "ECR_PRIVATE_LIFECYCLE_POLICY_CONFIGURED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecr-private-tag-immutability-enabled-954b3b9e" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether a private ECR repository has tag immutability enabled. This control fails if a private ECR repository has tag immutability disabled."
  input_parameters = "{}"
  name             = "securityhub-ecr-private-tag-immutability-enabled-954b3b9e"

  source {
    owner             = "AWS"
    source_identifier = "ECR_PRIVATE_TAG_IMMUTABILITY_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecs-container-insights-enabled-98e2b841" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if ECS clusters have container insights enabled. This control fails if container insights are disabled."
  input_parameters = "{}"
  name             = "securityhub-ecs-container-insights-enabled-98e2b841"

  source {
    owner             = "AWS"
    source_identifier = "ECS_CONTAINER_INSIGHTS_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecs-containers-nonprivileged-465a4cf6" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if the Privileged parameter in the container definition of Amazon ECS Task Definitions is set to 'true'. This control fails if the Privileged parameter is 'true'."
  input_parameters = "{}"
  name             = "securityhub-ecs-containers-nonprivileged-465a4cf6"

  source {
    owner             = "AWS"
    source_identifier = "ECS_CONTAINERS_NONPRIVILEGED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecs-containers-readonly-access-7e6d0f09" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if ECS Containers are limited to read-only access to its mounted root filesystems. This control fails if the readonlyRootFilesystem parameter in the container definition of ECSTaskDefinitions is set to 'false'."
  input_parameters = "{}"
  name             = "securityhub-ecs-containers-readonly-access-7e6d0f09"

  source {
    owner             = "AWS"
    source_identifier = "ECS_CONTAINERS_READONLY_ACCESS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecs-fargate-latest-platform-version-b3de9727" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if ECS Fargate Services is running on the latest Fargate platform version. This control fails if “PlatformVersion” is not set to “LATEST” "
  input_parameters = "{}"
  name             = "securityhub-ecs-fargate-latest-platform-version-b3de9727"

  source {
    owner             = "AWS"
    source_identifier = "ECS_FARGATE_LATEST_PLATFORM_VERSION"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecs-no-environment-secrets-b0d6d931" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if the key value of any variables in the 'environment' parameter of container definitions includes AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, or ECS_ENGINE_AUTH_DATA."
  input_parameters = "{\"secretKeys\":\"AWS_ACCESS_KEY_ID,AWS_SECRET_ACCESS_KEY,ECS_ENGINE_AUTH_DATA\"}"
  name             = "securityhub-ecs-no-environment-secrets-b0d6d931"

  source {
    owner             = "AWS"
    source_identifier = "ECS_NO_ENVIRONMENT_SECRETS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecs-service-assign-public-ip-disabled-27dbae3e" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether ECS services are configured to automatically assign public IP addresses. This control fails if AssignPublicIP is ENABLED."
  input_parameters = "{\"version\":\"1.1\"}"
  name             = "securityhub-ecs-service-assign-public-ip-disabled-27dbae3e"

  scope {
    compliance_resource_types = ["AWS::ECS::Service"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecs-task-definition-pid-mode-check-fc0d8420" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Amazon ECS Task Definitions are configured to share a host's process namespace with its containers. This control fails if the pidMode parameter is set to 'host'."
  input_parameters = "{}"
  name             = "securityhub-ecs-task-definition-pid-mode-check-fc0d8420"

  source {
    owner             = "AWS"
    source_identifier = "ECS_TASK_DEFINITION_PID_MODE_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ecs-task-definition-user-for-host-mode-check-b09ef65a" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if an Amazon ECS Task Definition with host networking mode has \"privileged\" or \"user\" container definitions. The control fails with host network mode and container definitions are privileged=false or empty and user=root or empty."
  input_parameters = "{\"SkipInactiveTaskDefinitions\":\"true\"}"
  name             = "securityhub-ecs-task-definition-user-for-host-mode-check-b09ef65a"

  source {
    owner             = "AWS"
    source_identifier = "ECS_TASK_DEFINITION_USER_FOR_HOST_MODE_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-efs-access-point-enforce-root-directory-c782adb3" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Amazon Elastic File System (Amazon EFS) access points are configured to enforce a root directory. This control fails if the value of 'Path' is set to '/' (default root directory of the file system)."
  input_parameters = "{}"
  name             = "securityhub-efs-access-point-enforce-root-directory-c782adb3"

  source {
    owner             = "AWS"
    source_identifier = "EFS_ACCESS_POINT_ENFORCE_ROOT_DIRECTORY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-efs-access-point-enforce-user-identity-b84cbab6" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Amazon Elastic File System (Amazon EFS) access points are configured to enforce a user identity. This control fails if 'PosixUser' is not defined or if parameters are provided and there is no match in the corresponding parameter."
  input_parameters = "{}"
  name             = "securityhub-efs-access-point-enforce-user-identity-b84cbab6"

  source {
    owner             = "AWS"
    source_identifier = "EFS_ACCESS_POINT_ENFORCE_USER_IDENTITY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-efs-encrypted-check-9104284a" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Elastic File System should be configured to encrypt file data at-rest using AWS KMS."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-efs-encrypted-check-9104284a"

  scope {
    compliance_resource_types = ["AWS::EFS::FileSystem"]
  }

  source {
    owner             = "AWS"
    source_identifier = "EFS_ENCRYPTED_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-efs-in-backup-plan-396db4e3" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether Amazon Elastic File System (Amazon EFS) file systems are added in the backup plans of AWS Backup. The rule is NON_COMPLIANT if EFS file systems are not included in the backup plans."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-efs-in-backup-plan-396db4e3"

  source {
    owner             = "AWS"
    source_identifier = "EFS_IN_BACKUP_PLAN"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-eks-cluster-supported-version-bfe2d61d" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if an Amazon Elastic Kubernetes Service (EKS) cluster is running a supported Kubernetes version. This control fails if an EKS cluster is running an unsupported version (less than the parameter 'oldestVersionSupported')."
  input_parameters = "{\"oldestVersionSupported\":\"1.19\"}"
  name             = "securityhub-eks-cluster-supported-version-bfe2d61d"

  source {
    owner             = "AWS"
    source_identifier = "EKS_CLUSTER_SUPPORTED_VERSION"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elastic-beanstalk-managed-updates-enabled-51ef20d7" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if managed platform updates in an AWS Elastic Beanstalk environment is enabled. The rule is NON_COMPLIANT if the value for ‘ManagedActionsEnabled’ is set to false or if a parameter is provided whose value does not match the existing configurations."
  input_parameters = "{}"
  name             = "securityhub-elastic-beanstalk-managed-updates-enabled-51ef20d7"

  source {
    owner             = "AWS"
    source_identifier = "ELASTIC_BEANSTALK_MANAGED_UPDATES_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elasticsearch-audit-logging-enabled-bcffbbdb" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Elasticsearch domains have audit logging enabled. This control fails if an Elasticsearch domain does not have audit logging enabled."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-audit-logging-enabled-bcffbbdb"

  scope {
    compliance_resource_types = ["AWS::Elasticsearch::Domain"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elasticsearch-data-node-fault-tolerance-ee806109" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Elasticsearch domains are configured with at least three data nodes and zoneAwarenessEnabled is true."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-data-node-fault-tolerance-ee806109"

  scope {
    compliance_resource_types = ["AWS::Elasticsearch::Domain"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elasticsearch-encrypted-at-rest-dfaed5d6" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether Elasticsearch domains have encryption at rest configuration enabled."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-elasticsearch-encrypted-at-rest-dfaed5d6"

  source {
    owner             = "AWS"
    source_identifier = "ELASTICSEARCH_ENCRYPTED_AT_REST"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elasticsearch-https-required-330a1a47" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether connections to Elasticsearch domains are required to use TLS 1.2.  The check fails if the Elasticsearch domain TLSSecurityPolicy is not Policy-Min-TLS-1-2-2019-07."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-https-required-330a1a47"

  scope {
    compliance_resource_types = ["AWS::Elasticsearch::Domain"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elasticsearch-in-vpc-only-807a1b16" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether Elasticsearch domains are in Amazon Virtual Private Cloud (Amazon VPC)."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-elasticsearch-in-vpc-only-807a1b16"

  source {
    owner             = "AWS"
    source_identifier = "ELASTICSEARCH_IN_VPC_ONLY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elasticsearch-logs-to-cloudwatch-1c2f2432" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Elasticsearch domains are configured to send error logs to CloudWatch Logs."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-logs-to-cloudwatch-1c2f2432"

  source {
    owner             = "AWS"
    source_identifier = "ELASTICSEARCH_LOGS_TO_CLOUDWATCH"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elasticsearch-node-to-node-encryption-check-cfe68113" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Check that Elasticsearch nodes are encrypted end to end. The rule is NON_COMPLIANT if the node-to-node encryption is disabled on the domain."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-node-to-node-encryption-check-cfe68113"

  source {
    owner             = "AWS"
    source_identifier = "ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elasticsearch-primary-node-fault-tolerance-c8b771dc" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Elasticsearch domains are configured with at least three dedicated master nodes. This control fails if dedicatedMasterEnabled is not true."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-primary-node-fault-tolerance-c8b771dc"

  scope {
    compliance_resource_types = ["AWS::Elasticsearch::Domain"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elb-acm-certificate-required-1ac34a2b" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether a Classic Load Balancer uses HTTPS/SSL certificates provided by AWS Certificate Manager."
  input_parameters = "{}"
  name             = "securityhub-elb-acm-certificate-required-1ac34a2b"

  source {
    owner             = "AWS"
    source_identifier = "ELB_ACM_CERTIFICATE_REQUIRED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elb-connection-draining-enabled-062baee3" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether AWS Classic Load Balancers have connection draining enabled."
  input_parameters = "{}"
  name             = "securityhub-elb-connection-draining-enabled-062baee3"

  scope {
    compliance_resource_types = ["AWS::ElasticLoadBalancing::LoadBalancer"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elb-cross-zone-load-balancing-enabled-0a8001c1" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether cross-zone load balancing is enabled for Classic Load Balancers. This control fails if cross-zone load balancing is not enabled for a Classic Load Balancer."
  input_parameters = "{}"
  name             = "securityhub-elb-cross-zone-load-balancing-enabled-0a8001c1"

  source {
    owner             = "AWS"
    source_identifier = "ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elb-deletion-protection-enabled-695fb538" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether Elastic Load Balancing has deletion protection enabled. The rule is NON_COMPLIANT if deletion_protection.enabled is false."
  input_parameters = "{}"
  name             = "securityhub-elb-deletion-protection-enabled-695fb538"

  source {
    owner             = "AWS"
    source_identifier = "ELB_DELETION_PROTECTION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elb-logging-enabled-a86bc273" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the Application Load Balancer and the Classic Load Balancer have logging enabled. The rule is NON_COMPLIANT if the access_logs.s3.enabled is false or access_logs.S3.bucket is not equal to the s3BucketName that you provided."
  input_parameters = "{}"
  name             = "securityhub-elb-logging-enabled-a86bc273"

  source {
    owner             = "AWS"
    source_identifier = "ELB_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elb-predefined-security-policy-ssl-check-69402435" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether your Classic Load Balancer SSL listeners use the predefined policy ELBSecurityPolicy-TLS-1-2-2017-01."
  input_parameters = "{\"predefinedPolicyName\":\"ELBSecurityPolicy-TLS-1-2-2017-01\"}"
  name             = "securityhub-elb-predefined-security-policy-ssl-check-69402435"

  source {
    owner             = "AWS"
    source_identifier = "ELB_PREDEFINED_SECURITY_POLICY_SSL_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elb-tls-https-listeners-only-8e30f2b9" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Check whether your Classic Load Balancer listeners are configured with HTTPS or SSL protocol for front-end (client to load balancer)."
  input_parameters = "{}"
  name             = "securityhub-elb-tls-https-listeners-only-8e30f2b9"

  source {
    owner             = "AWS"
    source_identifier = "ELB_TLS_HTTPS_LISTENERS_ONLY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-elbv2-multiple-az-3d8b11b9" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if an Elastic Load Balancer V2 has registered instances from multiple Availability Zones (AZ's). This control fails if an Elastic Load Balancer V2 has instances registered in less than 2 AZ's."
  input_parameters = "{}"
  name             = "securityhub-elbv2-multiple-az-3d8b11b9"

  source {
    owner             = "AWS"
    source_identifier = "ELBV2_MULTIPLE_AZ"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-emr-master-no-public-ip-c1484b6f" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether Amazon Elastic MapReduce (EMR) clusters' master nodes have public IPs. The rule is NON_COMPLIANT if the master node has a public IP."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-emr-master-no-public-ip-c1484b6f"

  source {
    owner             = "AWS"
    source_identifier = "EMR_MASTER_NO_PUBLIC_IP"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-encrypted-volumes-da7746ee" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the EBS volumes that are in an attached state are encrypted. If you specify the ID of a KMS key for encryption using the kmsId parameter, the rule checks if the EBS volumes in an attached state are encrypted with that KMS key."
  input_parameters = "{}"
  name             = "securityhub-encrypted-volumes-da7746ee"

  scope {
    compliance_resource_types = ["AWS::EC2::Volume"]
  }

  source {
    owner             = "AWS"
    source_identifier = "ENCRYPTED_VOLUMES"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-guardduty-enabled-centralized-0092e55f" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "This AWS control checks whether Amazon GuardDuty is enabled in your AWS account and region."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-guardduty-enabled-centralized-0092e55f"

  source {
    owner             = "AWS"
    source_identifier = "GUARDDUTY_ENABLED_CENTRALIZED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-customer-policy-blocked-kms-actions-28d592a7" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that the managed AWS Identity and Access Management (IAM) policies that you create do not allow blocked actions on all AWS KMS keys. The rule is NON_COMPLIANT if any blocked action is allowed on all AWS KMS keys by the managed IAM policy."
  input_parameters = "{\"blockedActionsPatterns\":\"kms:Decrypt,kms:ReEncryptFrom\",\"excludePermissionBoundaryPolicy\":\"True\"}"
  name             = "securityhub-iam-customer-policy-blocked-kms-actions-28d592a7"

  source {
    owner             = "AWS"
    source_identifier = "IAM_CUSTOMER_POLICY_BLOCKED_KMS_ACTIONS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-inline-policy-blocked-kms-actions-b32b95cf" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that the inline policies attached to your IAM users, roles, and groups do not allow blocked actions on all AWS Key Management Service (KMS) keys. The rule is NON_COMPLIANT if any blocked action is allowed on all KMS keys in an inline policy."
  input_parameters = "{\"blockedActionsPatterns\":\"kms:Decrypt,kms:ReEncryptFrom\"}"
  name             = "securityhub-iam-inline-policy-blocked-kms-actions-b32b95cf"

  source {
    owner             = "AWS"
    source_identifier = "IAM_INLINE_POLICY_BLOCKED_KMS_ACTIONS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-password-policy-ensure-expires-c67f5909" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the account password policy for IAM users expires passwords within certain days"
  input_parameters            = "{\"MaxPasswordAge\":\"90\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-password-policy-ensure-expires-c67f5909"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_PASSWORD_POLICY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-password-policy-lowercase-letter-check-8d930917" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the account password policy for IAM users requires at least one lowercase character in password."
  input_parameters            = "{\"RequireLowercaseCharacters\":\"true\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-password-policy-lowercase-letter-check-8d930917"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_PASSWORD_POLICY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-password-policy-minimum-length-check-6660b464" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the account password policy for IAM users requires minimum password length."
  input_parameters            = "{\"MinimumPasswordLength\":\"14\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-password-policy-minimum-length-check-6660b464"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_PASSWORD_POLICY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-password-policy-number-check-e1e7e043" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the account password policy for IAM users requires at least one number in password."
  input_parameters            = "{\"RequireNumbers\":\"true\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-password-policy-number-check-e1e7e043"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_PASSWORD_POLICY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-password-policy-prevent-reuse-check-b1274f4e" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the account password policy for IAM users prevents password reuse."
  input_parameters            = "{\"PasswordReusePrevention\":\"24\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-password-policy-prevent-reuse-check-b1274f4e"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_PASSWORD_POLICY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-password-policy-recommended-defaults-6292aa18" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the account password policy for IAM users meets the specified requirements."
  input_parameters            = "{\"MinimumPasswordLength\":\"8\",\"RequireLowercaseCharacters\":\"true\",\"RequireNumbers\":\"true\",\"RequireUppercaseCharacters\":\"true\",\"RequireSymbols\":\"true\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-password-policy-recommended-defaults-6292aa18"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_PASSWORD_POLICY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-password-policy-symbol-check-fe571c79" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the account password policy for IAM users requires at least one symbol in password."
  input_parameters            = "{\"RequireSymbols\":\"true\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-password-policy-symbol-check-fe571c79"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_PASSWORD_POLICY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-password-policy-uppercase-letter-check-e326e738" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the account password policy for IAM users requires at least one uppercase character in password."
  input_parameters            = "{\"RequireUppercaseCharacters\":\"true\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-password-policy-uppercase-letter-check-e326e738"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_PASSWORD_POLICY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-policy-no-statements-with-admin-access-5c71d60f" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the default version of IAM policies have administrator access"
  input_parameters = "{}"
  name             = "securityhub-iam-policy-no-statements-with-admin-access-5c71d60f"

  scope {
    compliance_resource_types = ["AWS::IAM::Policy"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_POLICY_NO_STATEMENTS_WITH_ADMIN_ACCESS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-policy-no-statements-with-full-access-1146ab38" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether the IAM identity-based custom policies have Allow statements that grant permissions for all actions on a service. The control fails if any policy statement includes \"Effect\": \"Allow\" with \"Action\": \"Service:*\"."
  input_parameters = "{\"excludePermissionBoundaryPolicy\":\"True\"}"
  name             = "securityhub-iam-policy-no-statements-with-full-access-1146ab38"

  source {
    owner             = "AWS"
    source_identifier = "IAM_POLICY_NO_STATEMENTS_WITH_FULL_ACCESS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-root-access-key-check-5112ad15" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether the root user access key is available."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-root-access-key-check-5112ad15"

  source {
    owner             = "AWS"
    source_identifier = "IAM_ROOT_ACCESS_KEY_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-support-policy-in-use-d01b2563" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks that the 'AWSSupportAccess' managed policy is attached to any IAM user, group, or role."
  input_parameters            = "{\"policyARN\":\"arn:aws:iam::aws:policy/AWSSupportAccess\",\"policyUsageType\":\"ANY\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-support-policy-in-use-d01b2563"

  source {
    owner             = "AWS"
    source_identifier = "IAM_POLICY_IN_USE"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-user-no-policies-check-34818875" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that none of your IAM users have policies attached. IAM users must inherit permissions from IAM groups or roles."
  input_parameters = "{}"
  name             = "securityhub-iam-user-no-policies-check-34818875"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_NO_POLICIES_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-iam-user-unused-credentials-check-f6162a2e" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "This control checks whether your IAM users have passwords or active access keys that were not used within the previous 90 days."
  input_parameters            = "{\"maxCredentialUsageAge\":\"90\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-iam-user-unused-credentials-check-f6162a2e"

  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_UNUSED_CREDENTIALS_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-kinesis-stream-encrypted-b3b2f6aa" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Amazon Kinesis streams are encrypted at rest with server-side encryption. This control fails for a Kinesis stream if 'StreamEncryption' is not present."
  input_parameters = "{}"
  name             = "securityhub-kinesis-stream-encrypted-b3b2f6aa"

  source {
    owner             = "AWS"
    source_identifier = "KINESIS_STREAM_ENCRYPTED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-kms-cmk-not-scheduled-for-deletion-2-bcde6d6d" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether AWS Key Management Service (KMS) customer managed keys (CMK) are scheduled for deletion. The control fails if a KMS CMK is scheduled for deletion."
  input_parameters = "{}"
  name             = "securityhub-kms-cmk-not-scheduled-for-deletion-2-bcde6d6d"

  scope {
    compliance_resource_types = ["AWS::KMS::Key"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-lambda-function-public-access-prohibited-914ccc99" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the AWS Lambda function policy attached to the Lambda resource prohibits public access."
  input_parameters = "{}"
  name             = "securityhub-lambda-function-public-access-prohibited-914ccc99"

  scope {
    compliance_resource_types = ["AWS::Lambda::Function"]
  }

  source {
    owner             = "AWS"
    source_identifier = "LAMBDA_FUNCTION_PUBLIC_ACCESS_PROHIBITED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-lambda-function-settings-check-f081addf" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that the AWS Lambda function settings for runtime, role, timeout, and memory size match the expected values."
  input_parameters = "{\"runtime\":\"nodejs18.x, nodejs16.x,nodejs14.x,nodejs12.x,python3.9,python3.8,python3.7,java11,java8,java8.al2,go1.x,dotnet6,dotnetcore3.1,ruby2.7\"}"
  name             = "securityhub-lambda-function-settings-check-f081addf"

  scope {
    compliance_resource_types = ["AWS::Lambda::Function"]
  }

  source {
    owner             = "AWS"
    source_identifier = "LAMBDA_FUNCTION_SETTINGS_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-lambda-vpc-multi-az-check-538499d3" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Lambda has more than one Availability Zone (AZ) associated. The rule fails if only one AZ is associated with the Lambda or the number of availability zones associated is less than number specified in the optional parameter."
  input_parameters = "{}"
  name             = "securityhub-lambda-vpc-multi-az-check-538499d3"

  source {
    owner             = "AWS"
    source_identifier = "LAMBDA_VPC_MULTI_AZ_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-mfa-enabled-for-iam-console-access-426ee2d6" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether AWS Multi-Factor Authentication (MFA) is enabled for all AWS Identity and Access Management (IAM) users that use a console password."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-mfa-enabled-for-iam-console-access-426ee2d6"

  scope {
    compliance_resource_types = ["AWS::IAM::User"]
  }

  source {
    owner             = "AWS"
    source_identifier = "MFA_ENABLED_FOR_IAM_CONSOLE_ACCESS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-multi-region-cloud-trail-enabled-837977cd" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether AWS CloudTrail is enabled in your AWS account. Optionally, you can specify which S3 bucket, SNS topic, and Amazon CloudWatch Logs ARN to use."
  input_parameters            = "{\"readWriteType\":\"ALL\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-multi-region-cloud-trail-enabled-837977cd"

  source {
    owner             = "AWS"
    source_identifier = "MULTI_REGION_CLOUD_TRAIL_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-nacl-no-unrestricted-ssh-rdp-f219cd59" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if default ports for SSH/RDP ingress traffic for network access control lists (NACLs) is unrestricted. The rule fails if a NACL inbound entry allows a source CIDR block of '0.0.0.0/0' or '::/0' for ports 22 or 3389"
  input_parameters = "{}"
  name             = "securityhub-nacl-no-unrestricted-ssh-rdp-f219cd59"

  source {
    owner             = "AWS"
    source_identifier = "NACL_NO_UNRESTRICTED_SSH_RDP"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-netfw-policy-default-action-fragment-packets-1176142f" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether the default stateless action for fragmented packets for a Network Firewall policy is DROP or FORWARD. The control fails if PASS is selected."
  input_parameters = "{\"statelessFragmentDefaultActions\":\"aws:drop,aws:forward_to_sfe\"}"
  name             = "securityhub-netfw-policy-default-action-fragment-packets-1176142f"

  source {
    owner             = "AWS"
    source_identifier = "NETFW_POLICY_DEFAULT_ACTION_FRAGMENT_PACKETS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-netfw-policy-default-action-full-packets-48030e67" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether the default stateless action for full packets for a Network Firewall policy is DROP or FORWARD. This control fails if DROP or FORWARD is not selected."
  input_parameters = "{\"statelessDefaultActions\":\"aws:drop,aws:forward_to_sfe\"}"
  name             = "securityhub-netfw-policy-default-action-full-packets-48030e67"

  source {
    owner             = "AWS"
    source_identifier = "NETFW_POLICY_DEFAULT_ACTION_FULL_PACKETS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-netfw-policy-rule-group-associated-0f95e82a" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether there are any stateful or stateless rule groups associated with a given firewall policy. The control fails if no stateful or stateless rule groups are assigned."
  input_parameters = "{}"
  name             = "securityhub-netfw-policy-rule-group-associated-0f95e82a"

  source {
    owner             = "AWS"
    source_identifier = "NETFW_POLICY_RULE_GROUP_ASSOCIATED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-netfw-stateless-rule-group-not-empty-59e63105" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if a Stateless Network Firewall Rule Group contains rules. The rule will fail if there are no rules in a Stateless Network Firewall Rule Group."
  input_parameters = "{}"
  name             = "securityhub-netfw-stateless-rule-group-not-empty-59e63105"

  source {
    owner             = "AWS"
    source_identifier = "NETFW_STATELESS_RULE_GROUP_NOT_EMPTY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-opensearch-access-control-enabled-f88c23d3" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Amazon OpenSearch Service domains have fine-grained access control enabled. This control fails if AdvancedSecurityOptions is not enabled for the OpenSearch Service domain."
  input_parameters = "{}"
  name             = "securityhub-opensearch-access-control-enabled-f88c23d3"

  source {
    owner             = "AWS"
    source_identifier = "OPENSEARCH_ACCESS_CONTROL_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-opensearch-audit-logging-enabled-3b051335" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Amazon OpenSearch Service domains have audit logging enabled."
  input_parameters = "{}"
  name             = "securityhub-opensearch-audit-logging-enabled-3b051335"

  source {
    owner             = "AWS"
    source_identifier = "OPENSEARCH_AUDIT_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-opensearch-data-node-fault-tolerance-d158aa3a" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Amazon OpenSearch Service domains are configured with at least three data nodes and \"zoneAwarenessEnabled\" is true."
  input_parameters = "{}"
  name             = "securityhub-opensearch-data-node-fault-tolerance-d158aa3a"

  source {
    owner             = "AWS"
    source_identifier = "OPENSEARCH_DATA_NODE_FAULT_TOLERANCE"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-opensearch-encrypted-at-rest-5ecbf66d" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Amazon OpenSearch domains have encryption-at-rest configuration enabled. The check fails if encryption at rest is not enabled."
  input_parameters = "{}"
  name             = "securityhub-opensearch-encrypted-at-rest-5ecbf66d"

  source {
    owner             = "AWS"
    source_identifier = "OPENSEARCH_ENCRYPTED_AT_REST"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-opensearch-https-required-c433e93f" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether connections to Amazon OpenSearch domains are using HTTPS. This control fails if \"EnforceHTTPS\" is not true."
  input_parameters = "{\"tlsPolicies\":\"Policy-Min-TLS-1-2-2019-07\"}"
  name             = "securityhub-opensearch-https-required-c433e93f"

  source {
    owner             = "AWS"
    source_identifier = "OPENSEARCH_HTTPS_REQUIRED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-opensearch-in-vpc-only-26d85ecb" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks Amazon OpenSearch Service domains are in an Amazon Virtual Private Cloud (VPC)."
  input_parameters = "{}"
  name             = "securityhub-opensearch-in-vpc-only-26d85ecb"

  source {
    owner             = "AWS"
    source_identifier = "OPENSEARCH_IN_VPC_ONLY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-opensearch-logs-to-cloudwatch-016afb5f" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Amazon OpenSearch domains are configured to send error logs to CloudWatch Logs. This control fails if error logging to CloudWatch is not enabled for a domain."
  input_parameters = "{\"logTypes\":\"error\"}"
  name             = "securityhub-opensearch-logs-to-cloudwatch-016afb5f"

  source {
    owner             = "AWS"
    source_identifier = "OPENSEARCH_LOGS_TO_CLOUDWATCH"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-opensearch-node-to-node-encryption-check-dfda2ec4" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Amazon OpenSearch domains have node-to-node encryption enabled. This control fails if node-to-node encryption is disabled on the domain."
  input_parameters = "{}"
  name             = "securityhub-opensearch-node-to-node-encryption-check-dfda2ec4"

  source {
    owner             = "AWS"
    source_identifier = "OPENSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-automatic-minor-version-upgrade-enabled-962570ad" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if automatic minor version upgrades are enabled for the Amazon RDS database instance."
  input_parameters = "{}"
  name             = "securityhub-rds-automatic-minor-version-upgrade-enabled-962570ad"

  source {
    owner             = "AWS"
    source_identifier = "RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-cluster-copy-tags-to-snapshots-enabled-97bb22b6" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether RDS DB clusters are configured to copy all tags to snapshots when the snapshots are created."
  input_parameters = "{\"version\":\"1.1\"}"
  name             = "securityhub-rds-cluster-copy-tags-to-snapshots-enabled-97bb22b6"

  scope {
    compliance_resource_types = ["AWS::RDS::DBCluster"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-cluster-default-admin-check-ad1b25e9" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether an RDS database cluster has changed the admin username from its default value. This rule will fail if the admin username is set to the default value."
  input_parameters = "{}"
  name             = "securityhub-rds-cluster-default-admin-check-ad1b25e9"

  source {
    owner             = "AWS"
    source_identifier = "RDS_CLUSTER_DEFAULT_ADMIN_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-cluster-deletion-protection-enabled-5ac506c5" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if an Amazon Relational Database Service (Amazon RDS) cluster has deletion protection enabled. This rule is NON_COMPLIANT if an RDS cluster does not have deletion protection enabled."
  input_parameters = "{}"
  name             = "securityhub-rds-cluster-deletion-protection-enabled-5ac506c5"

  source {
    owner             = "AWS"
    source_identifier = "RDS_CLUSTER_DELETION_PROTECTION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-cluster-event-notifications-configured-ef75e6b7" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether an Amazon RDS Event subscription for RDS clusters is configured to notify on event categories of both \"maintenance\" and \"failure\"."
  input_parameters = "{}"
  name             = "securityhub-rds-cluster-event-notifications-configured-ef75e6b7"

  scope {
    compliance_resource_types = ["AWS::RDS::EventSubscription"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-cluster-iam-authentication-enabled-9d2db36b" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if an Amazon RDS Cluster has AWS Identity and Access Management (IAM) authentication enabled. The rule is NON_COMPLIANT if an RDS Cluster does not have IAM authentication enabled."
  input_parameters = "{}"
  name             = "securityhub-rds-cluster-iam-authentication-enabled-9d2db36b"

  source {
    owner             = "AWS"
    source_identifier = "RDS_CLUSTER_IAM_AUTHENTICATION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-cluster-multi-az-enabled-a2e16582" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if RDS DB clusters are configured with multi-az."
  input_parameters = "{}"
  name             = "securityhub-rds-cluster-multi-az-enabled-a2e16582"

  source {
    owner             = "AWS"
    source_identifier = "RDS_CLUSTER_MULTI_AZ_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-deployed-in-vpc-1800692c" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if an RDS instance is deployed in a VPC (EC2-VPC)."
  input_parameters = "{}"
  name             = "securityhub-rds-deployed-in-vpc-1800692c"

  scope {
    compliance_resource_types = ["AWS::RDS::DBInstance"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-enhanced-monitoring-enabled-abddf52a" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether enhanced monitoring is enabled for Amazon Relational Database Service (Amazon RDS) instances."
  input_parameters = "{}"
  name             = "securityhub-rds-enhanced-monitoring-enabled-abddf52a"

  source {
    owner             = "AWS"
    source_identifier = "RDS_ENHANCED_MONITORING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-instance-copy-tags-to-snapshots-enabled-7c3c785f" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether RDS DB instances are configured to copy all tags to snapshots when the snapshots are created."
  input_parameters = "{}"
  name             = "securityhub-rds-instance-copy-tags-to-snapshots-enabled-7c3c785f"

  scope {
    compliance_resource_types = ["AWS::RDS::DBInstance"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-instance-default-admin-check-9ddd94d1" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether an Amazon RDS database instance has changed the admin username from its default value. This rule will only run on RDS database instances. The rule will fail if the admin username is set to the default value."
  input_parameters = "{}"
  name             = "securityhub-rds-instance-default-admin-check-9ddd94d1"

  source {
    owner             = "AWS"
    source_identifier = "RDS_INSTANCE_DEFAULT_ADMIN_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-instance-deletion-protection-enabled-cab378c4" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if an Amazon Relational Database Service (Amazon RDS) instance has deletion protection enabled."
  input_parameters = "{\"databaseEngines\":\"mariadb,mysql,oracle-ee,oracle-se2,oracle-se1,oracle-se,postgres,sqlserver-ee,sqlserver-se,sqlserver-ex,sqlserver-web\"}"
  name             = "securityhub-rds-instance-deletion-protection-enabled-cab378c4"

  source {
    owner             = "AWS"
    source_identifier = "RDS_INSTANCE_DELETION_PROTECTION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-instance-event-notifications-configured-72185f02" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether an Amazon RDS Event subscription for RDS instances is configured to notify on event categories of both \"maintenance\", \"configuration change\", and \"failure\"."
  input_parameters = "{}"
  name             = "securityhub-rds-instance-event-notifications-configured-72185f02"

  scope {
    compliance_resource_types = ["AWS::RDS::EventSubscription"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-instance-iam-authentication-enabled-31f436b0" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if an Amazon Relational Database Service (Amazon RDS) instance has AWS Identity and Access Management (IAM) authentication enabled."
  input_parameters = "{}"
  name             = "securityhub-rds-instance-iam-authentication-enabled-31f436b0"

  source {
    owner             = "AWS"
    source_identifier = "RDS_INSTANCE_IAM_AUTHENTICATION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-instance-public-access-check-b2ca03ae" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Check whether the Amazon Relational Database Service instances are not publicly accessible."
  input_parameters = "{}"
  name             = "securityhub-rds-instance-public-access-check-b2ca03ae"

  scope {
    compliance_resource_types = ["AWS::RDS::DBInstance"]
  }

  source {
    owner             = "AWS"
    source_identifier = "RDS_INSTANCE_PUBLIC_ACCESS_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-logging-enabled-a1b564ba" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that respective logs of Amazon Relational Database Service (Amazon RDS) are enabled. The rule is NON_COMPLIANT if any log types are not enabled."
  input_parameters = "{}"
  name             = "securityhub-rds-logging-enabled-a1b564ba"

  source {
    owner             = "AWS"
    source_identifier = "RDS_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-multi-az-support-4c8796b9" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether high availability is enabled for your RDS DB instances."
  input_parameters = "{}"
  name             = "securityhub-rds-multi-az-support-4c8796b9"

  source {
    owner             = "AWS"
    source_identifier = "RDS_MULTI_AZ_SUPPORT"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-no-default-ports-d3f527bf" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether RDS instances use the default port of that database engine."
  input_parameters = "{}"
  name             = "securityhub-rds-no-default-ports-d3f527bf"

  scope {
    compliance_resource_types = ["AWS::RDS::DBInstance"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-pg-event-notifications-configured-ded31ac3" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether an Amazon RDS Event subscription for RDS parameter groups is configured to notify on event category of \"configuration change\"."
  input_parameters = "{}"
  name             = "securityhub-rds-pg-event-notifications-configured-ded31ac3"

  scope {
    compliance_resource_types = ["AWS::RDS::EventSubscription"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-sg-event-notifications-configured-ca1b541d" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether an Amazon RDS Event subscription for RDS security groups is configured to notify on event categories of both \"configuration change\" and \"failure\"."
  input_parameters = "{}"
  name             = "securityhub-rds-sg-event-notifications-configured-ca1b541d"

  scope {
    compliance_resource_types = ["AWS::RDS::EventSubscription"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-snapshot-encrypted-c0a550b5" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether Amazon Relational Database Service (Amazon RDS) DB snapshots are encrypted. The rule is NON_COMPLIANT, if Amazon RDS DB snapshots are not encrypted."
  input_parameters = "{}"
  name             = "securityhub-rds-snapshot-encrypted-c0a550b5"

  source {
    owner             = "AWS"
    source_identifier = "RDS_SNAPSHOT_ENCRYPTED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-snapshots-public-prohibited-06d973c4" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if Amazon Relational Database Service (Amazon RDS) snapshots are public."
  input_parameters = "{}"
  name             = "securityhub-rds-snapshots-public-prohibited-06d973c4"

  scope {
    compliance_resource_types = ["AWS::RDS::DBClusterSnapshot", "AWS::RDS::DBSnapshot"]
  }

  source {
    owner             = "AWS"
    source_identifier = "RDS_SNAPSHOTS_PUBLIC_PROHIBITED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-rds-storage-encrypted-4b0f7526" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether storage encryption is enabled for your RDS DB instances."
  input_parameters = "{}"
  name             = "securityhub-rds-storage-encrypted-4b0f7526"

  scope {
    compliance_resource_types = ["AWS::RDS::DBInstance"]
  }

  source {
    owner             = "AWS"
    source_identifier = "RDS_STORAGE_ENCRYPTED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-redshift-backup-enabled-a9ead5e5" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that Amazon Redshift automated snapshots are enabled for clusters. The rule is NON_COMPLIANT if the value for automatedSnapshotRetentionPeriod is greater than MaxRetentionPeriod or less than MinRetentionPeriod or the value is 0."
  input_parameters = "{\"MinRetentionPeriod\":\"7\"}"
  name             = "securityhub-redshift-backup-enabled-a9ead5e5"

  source {
    owner             = "AWS"
    source_identifier = "REDSHIFT_BACKUP_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-redshift-cluster-audit-logging-enabled-6d5da8eb" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether the Amazon Redshift cluster has audit logging enabled."
  input_parameters = "{\"loggingEnabled\":\"true\"}"
  name             = "securityhub-redshift-cluster-audit-logging-enabled-6d5da8eb"

  scope {
    compliance_resource_types = ["AWS::Redshift::Cluster"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-redshift-cluster-maintenancesettings-check-5d46092b" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether Amazon Redshift clusters have the specified maintenance settings."
  input_parameters = "{\"allowVersionUpgrade\":\"true\"}"
  name             = "securityhub-redshift-cluster-maintenancesettings-check-5d46092b"

  source {
    owner             = "AWS"
    source_identifier = "REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-redshift-cluster-public-access-check-441d55ec" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether Amazon Redshift clusters are not publicly accessible."
  input_parameters = "{}"
  name             = "securityhub-redshift-cluster-public-access-check-441d55ec"

  scope {
    compliance_resource_types = ["AWS::Redshift::Cluster"]
  }

  source {
    owner             = "AWS"
    source_identifier = "REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-redshift-default-admin-check-16cdb38f" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether a Redshift cluster has changed the Admin username from its default value. This control will fail if the admin username for a Redshift cluster is set to 'awsuser', or if the username does not match the provided parameter(s)."
  input_parameters = "{}"
  name             = "securityhub-redshift-default-admin-check-16cdb38f"

  source {
    owner             = "AWS"
    source_identifier = "REDSHIFT_DEFAULT_ADMIN_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-redshift-default-db-name-check-2e7fc9f6" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if a Redshift cluster has changed its database name from the default value. This control fails if the database name for a Redshift cluster is set to “dev”, or if the optional parameter is provided and the database name does not match."
  input_parameters = "{}"
  name             = "securityhub-redshift-default-db-name-check-2e7fc9f6"

  source {
    owner             = "AWS"
    source_identifier = "REDSHIFT_DEFAULT_DB_NAME_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-redshift-enhanced-vpc-routing-enabled-4e642339" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether a Redshift cluster has EnhancedVpcRouting enabled."
  input_parameters = "{}"
  name             = "securityhub-redshift-enhanced-vpc-routing-enabled-4e642339"

  source {
    owner             = "AWS"
    source_identifier = "REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-redshift-require-tls-ssl-94b0e11e" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether Amazon Redshift clusters require TLS/SSL encryption to connect to SQL clients. The rule is NON_COMPLIANT if any Amazon Redshift cluster has parameter require_SSL not set to true."
  input_parameters = "{}"
  name             = "securityhub-redshift-require-tls-ssl-94b0e11e"

  source {
    owner             = "AWS"
    source_identifier = "REDSHIFT_REQUIRE_TLS_SSL"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-restricted-rdp-1a6207b9" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the incoming RDP traffic is Allowed from 0.0.0.0/0. This rule is compliant when incoming RDP traffic is restricted."
  input_parameters = "{\"blockedPort1\":\"3389\"}"
  name             = "securityhub-restricted-rdp-1a6207b9"

  scope {
    compliance_resource_types = ["AWS::EC2::SecurityGroup"]
  }

  source {
    owner             = "AWS"
    source_identifier = "RESTRICTED_INCOMING_TRAFFIC"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-restricted-ssh-0296a636" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the incoming SSH traffic for the security groups is accessible. The rule is compliant when the IP addresses of the incoming SSH traffic in the security groups are restricted. This rule applies only to IPv4."
  input_parameters = "{}"
  name             = "securityhub-restricted-ssh-0296a636"

  scope {
    compliance_resource_types = ["AWS::EC2::SecurityGroup"]
  }

  source {
    owner             = "AWS"
    source_identifier = "INCOMING_SSH_DISABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-root-account-hardware-mfa-enabled-486a6cb4" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether users of your AWS account require a hardware multi-factor authentication (MFA) device to sign in with root credentials."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-root-account-hardware-mfa-enabled-486a6cb4"

  source {
    owner             = "AWS"
    source_identifier = "ROOT_ACCOUNT_HARDWARE_MFA_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-root-account-mfa-enabled-ea252739" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether users of your AWS account require a multi-factor authentication (MFA) device to sign in with root credentials."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-root-account-mfa-enabled-ea252739"

  source {
    owner             = "AWS"
    source_identifier = "ROOT_ACCOUNT_MFA_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-account-level-public-access-blocks-periodic-6cc0a466" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks if the required public access block settings are configured from account level."
  input_parameters            = "{\"RestrictPublicBuckets\":\"True\",\"BlockPublicPolicy\":\"True\",\"BlockPublicAcls\":\"True\",\"IgnorePublicAcls\":\"True\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-s3-account-level-public-access-blocks-periodic-6cc0a466"

  source {
    owner             = "AWS"
    source_identifier = "S3_ACCOUNT_LEVEL_PUBLIC_ACCESS_BLOCKS_PERIODIC"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-bucket-acl-prohibited-19f80ce7" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks to ensure that your Amazon S3 buckets does not allow user permissions via access control lists. This control fails if ACLs are configured for user access on S3 Bucket."
  input_parameters = "{}"
  name             = "securityhub-s3-bucket-acl-prohibited-19f80ce7"

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_ACL_PROHIBITED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-bucket-blacklisted-actions-prohibited-8a73e3c1" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that the Amazon Simple Storage Service bucket policy does not allow blacklisted bucket-level and object-level actions on resources in the bucket for principals from other AWS accounts."
  input_parameters = "{\"blacklistedActionPattern\":\"s3:DeleteBucketPolicy,s3:PutBucketAcl,s3:PutBucketPolicy,s3:PutObjectAcl,s3:PutEncryptionConfiguration\"}"
  name             = "securityhub-s3-bucket-blacklisted-actions-prohibited-8a73e3c1"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_BLACKLISTED_ACTIONS_PROHIBITED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-bucket-level-public-access-prohibited-50119c6e" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Amazon S3 buckets have bucket level public access blocks applied. This control fails if any of the bucket level settings are set to \"false\" public: ignorePublicAcls, blockPublicPolicy, blockPublicAcls, restrictPublicBuckets."
  input_parameters = "{}"
  name             = "securityhub-s3-bucket-level-public-access-prohibited-50119c6e"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-bucket-logging-enabled-d576c924" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if an Amazon S3 Bucket has server access logging enabled to a chosen target bucket."
  input_parameters = "{}"
  name             = "securityhub-s3-bucket-logging-enabled-d576c924"

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-bucket-public-read-prohibited-a209c3c5" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks to see if S3 buckets are publicly readable."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-s3-bucket-public-read-prohibited-a209c3c5"

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_READ_PROHIBITED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-bucket-public-write-prohibited-7c5723df" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks to see if S3 buckets allow public write."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-s3-bucket-public-write-prohibited-7c5723df"

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_WRITE_PROHIBITED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-bucket-server-side-encryption-enabled-2c0decd3" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks that your Amazon S3 bucket either has Amazon S3 default encryption enabled or that the S3 bucket policy explicitly denies put-object requests without server side encryption."
  input_parameters = "{}"
  name             = "securityhub-s3-bucket-server-side-encryption-enabled-2c0decd3"

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-bucket-ssl-requests-only-a7c30bac" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether S3 buckets have policies that require requests to use Secure Socket Layer (SSL)."
  input_parameters = "{}"
  name             = "securityhub-s3-bucket-ssl-requests-only-a7c30bac"

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_SSL_REQUESTS_ONLY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-event-notifications-enabled-6fef5544" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks to ensure that S3 events notifications are enabled on an S3 bucket. This control fails if S3 events notifications are not set on a bucket."
  input_parameters = "{}"
  name             = "securityhub-s3-event-notifications-enabled-6fef5544"

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  source {
    owner             = "AWS"
    source_identifier = "S3_EVENT_NOTIFICATIONS_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-lifecycle-policy-check-2997d095" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if a lifecycle policy is configured for an Amazon S3 bucket. This control fails if the lifecycle policy is not configured for an Amazon S3 bucket."
  input_parameters = "{}"
  name             = "securityhub-s3-lifecycle-policy-check-2997d095"

  scope {
    compliance_resource_types = ["AWS::S3::Bucket"]
  }

  source {
    owner             = "AWS"
    source_identifier = "S3_LIFECYCLE_POLICY_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-s3-version-lifecycle-policy-check-182da3cf" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Amazon Simple Storage Service (Amazon S3) version enabled buckets have lifecycle policy configured. This rule fails if Amazon S3 lifecycle policy is not enabled"
  input_parameters = "{}"
  name             = "securityhub-s3-version-lifecycle-policy-check-182da3cf"

  source {
    owner             = "AWS"
    source_identifier = "S3_VERSION_LIFECYCLE_POLICY_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-sagemaker-notebook-no-direct-internet-access-64826c0b" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether direct internet access is disabled for an Amazon SageMaker notebook instance. The rule is NON_COMPLIANT if Amazon SageMaker notebook instances are internet-enabled."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-sagemaker-notebook-no-direct-internet-access-64826c0b"

  source {
    owner             = "AWS"
    source_identifier = "SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-secretsmanager-rotation-enabled-check-1bc2ac79" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether AWS Secrets Manager secret has rotation enabled."
  input_parameters = "{}"
  name             = "securityhub-secretsmanager-rotation-enabled-check-1bc2ac79"

  source {
    owner             = "AWS"
    source_identifier = "SECRETSMANAGER_ROTATION_ENABLED_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-secretsmanager-scheduled-rotation-success-check-e8272f54" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks and verifies whether AWS Secrets Manager secret rotation has rotated successfully as per the rotation schedule. The rule is NON_COMPLIANT if RotationOccurringAsScheduled is false."
  input_parameters = "{}"
  name             = "securityhub-secretsmanager-scheduled-rotation-success-check-e8272f54"

  source {
    owner             = "AWS"
    source_identifier = "SECRETSMANAGER_SCHEDULED_ROTATION_SUCCESS_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-secretsmanager-secret-periodic-rotation-06d16bc2" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "This control checks if your secrets have rotated at least once within 90 days. "
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-secretsmanager-secret-periodic-rotation-06d16bc2"

  source {
    owner             = "AWS"
    source_identifier = "SECRETSMANAGER_SECRET_PERIODIC_ROTATION"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-secretsmanager-secret-unused-2b13bc20" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "This control checks whether your secrets have been accessed within a specified number of days. The default value is 90 days. Secrets that have not been accessed even once within the number days you define, fail this check."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-secretsmanager-secret-unused-2b13bc20"

  source {
    owner             = "AWS"
    source_identifier = "SECRETSMANAGER_SECRET_UNUSED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-service-vpc-endpoint-enabled-23fca013" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether Service Endpoint for the service provided in rule parameter is created for each Amazon VPC. The rule returns NON_COMPLIANT if an Amazon VPC doesn't have a VPC endpoint created for the service."
  input_parameters            = "{\"serviceName\":\"ec2\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-service-vpc-endpoint-enabled-23fca013"

  source {
    owner             = "AWS"
    source_identifier = "SERVICE_VPC_ENDPOINT_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-sns-encrypted-kms-81d29bd8" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether Amazon SNS topic is encrypted with AWS Key Management Service (AWS KMS). The rule is NON_COMPLIANT if the Amazon SNS topic is not encrypted with AWS KMS."
  input_parameters = "{}"
  name             = "securityhub-sns-encrypted-kms-81d29bd8"

  source {
    owner             = "AWS"
    source_identifier = "SNS_ENCRYPTED_KMS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-sns-topic-message-delivery-notification-enabled-86f1c7d0" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if Amazon Simple Notification Service (SNS) logging is enabled for the delivery status of notification messages sent to a topic for the endpoints. This control fails if the delivery status notification for messages is not enabled."
  input_parameters = "{}"
  name             = "securityhub-sns-topic-message-delivery-notification-enabled-86f1c7d0"

  source {
    owner             = "AWS"
    source_identifier = "SNS_TOPIC_MESSAGE_DELIVERY_NOTIFICATION_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-sqs-queue-encrypted-11ce1a73" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether Amazon SQS queues are encrypted at rest."
  input_parameters = "{\"version\":\"1.1\"}"
  name             = "securityhub-sqs-queue-encrypted-11ce1a73"

  scope {
    compliance_resource_types = ["AWS::SQS::Queue"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-ssm-document-not-public-698aa8f8" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether AWS Systems Manager documents that the account owns are public. This control fails if SSM documents that have \"Self\" as the owner are public."
  input_parameters = "{}"
  name             = "securityhub-ssm-document-not-public-698aa8f8"

  source {
    owner             = "AWS"
    source_identifier = "SSM_DOCUMENT_NOT_PUBLIC"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-subnet-auto-assign-public-ip-disabled-75752172" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if Amazon Virtual Private Cloud (Amazon VPC) subnets are assigned a public IP address. This rule is NON_COMPLIANT if Amazon VPC has subnets that are assigned a public IP address."
  input_parameters = "{}"
  name             = "securityhub-subnet-auto-assign-public-ip-disabled-75752172"

  source {
    owner             = "AWS"
    source_identifier = "SUBNET_AUTO_ASSIGN_PUBLIC_IP_DISABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-vpc-default-security-group-closed-b4ff02fa" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks whether the default security group for VPC is closed."
  input_parameters = "{}"
  name             = "securityhub-vpc-default-security-group-closed-b4ff02fa"

  scope {
    compliance_resource_types = ["AWS::EC2::SecurityGroup"]
  }

  source {
    owner             = "AWS"
    source_identifier = "VPC_DEFAULT_SECURITY_GROUP_CLOSED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-vpc-flow-logs-enabled-bdbd0e96" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "Checks whether Amazon Virtual Private Cloud flow logs are found and enabled for Amazon VPC."
  input_parameters            = "{\"trafficType\":\"REJECT\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-vpc-flow-logs-enabled-bdbd0e96"

  source {
    owner             = "AWS"
    source_identifier = "VPC_FLOW_LOGS_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-vpc-network-acl-unused-check-c76f2e72" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "Checks if there are unused Network Access Control Lists (NACLs). The rule is NON_COMPLIANT if an NACL is not associated with a subnet."
  input_parameters = "{}"
  name             = "securityhub-vpc-network-acl-unused-check-c76f2e72"

  source {
    owner             = "AWS"
    source_identifier = "VPC_NETWORK_ACL_UNUSED_CHECK"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-vpc-sg-open-only-to-authorized-ports-60ce2b47" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether the security groups allow unrestricted incoming traffic. The control fails if ports allow unrestricted traffic on ports other than 80 and 443, which are default values for parameter authorizedTcpPorts."
  input_parameters = "{\"authorizedTcpPorts\":\"80,443\"}"
  name             = "securityhub-vpc-sg-open-only-to-authorized-ports-60ce2b47"

  source {
    owner             = "AWS"
    source_identifier = "VPC_SG_OPEN_ONLY_TO_AUTHORIZED_PORTS"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-vpc-sg-restricted-common-ports-bdd53a43" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether unrestricted incoming traffic for the security groups is accessible to the specified ports that have the highest risk."
  input_parameters = "{\"version\":\"1.1\"}"
  name             = "securityhub-vpc-sg-restricted-common-ports-bdd53a43"

  scope {
    compliance_resource_types = ["AWS::EC2::SecurityGroup"]
  }

  source {
    owner = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:us-east-1:572901956981:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-vpc-vpn-2-tunnels-up-7159a992" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks that both VPN tunnels provided by AWS Site-to-Site VPN are in UP status. The control fails if one or both tunnels are in DOWN status."
  input_parameters = "{}"
  name             = "securityhub-vpc-vpn-2-tunnels-up-7159a992"

  source {
    owner             = "AWS"
    source_identifier = "VPC_VPN_2_TUNNELS_UP"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-waf-classic-logging-enabled-e0ccd23d" {
  depends_on                  = ["aws_config_configuration_recorder.tfer--default"]
  description                 = "This control checks whether logging is enabled for a WAF global Web ACL. This control fails if logging is not enabled for the Web ACL."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-waf-classic-logging-enabled-e0ccd23d"

  source {
    owner             = "AWS"
    source_identifier = "WAF_CLASSIC_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-waf-global-rule-not-empty-6386d223" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if an AWS WAF global rule contains any conditions. This control fails if no conditions are present within the WAF global rule."
  input_parameters = "{}"
  name             = "securityhub-waf-global-rule-not-empty-6386d223"

  source {
    owner             = "AWS"
    source_identifier = "WAF_GLOBAL_RULE_NOT_EMPTY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-waf-global-rulegroup-not-empty-552fd727" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if an AWS WAF Classic rule group contains any rules. This control fails if there are no rules present within a rule group."
  input_parameters = "{}"
  name             = "securityhub-waf-global-rulegroup-not-empty-552fd727"

  source {
    owner             = "AWS"
    source_identifier = "WAF_GLOBAL_RULEGROUP_NOT_EMPTY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-waf-global-webacl-not-empty-a9c98aa4" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if WAF Global Web ACL contains any WAF rules or rule groups. This control fails if a Web ACL does not contain any WAF rule or rule group."
  input_parameters = "{}"
  name             = "securityhub-waf-global-webacl-not-empty-a9c98aa4"

  source {
    owner             = "AWS"
    source_identifier = "WAF_GLOBAL_WEBACL_NOT_EMPTY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-waf-regional-rule-not-empty-b7c50167" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if WAF regional rule contains conditions. This control fails if the regional rule does not contain atleast one condition."
  input_parameters = "{}"
  name             = "securityhub-waf-regional-rule-not-empty-b7c50167"

  source {
    owner             = "AWS"
    source_identifier = "WAF_REGIONAL_RULE_NOT_EMPTY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-waf-regional-rulegroup-not-empty-9b1b3db9" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks if WAF Regional rule groups contain any rules. This control fails if there are no rules present within a WAF Regional rule group."
  input_parameters = "{}"
  name             = "securityhub-waf-regional-rulegroup-not-empty-9b1b3db9"

  source {
    owner             = "AWS"
    source_identifier = "WAF_REGIONAL_RULEGROUP_NOT_EMPTY"
  }
}

resource "aws_config_config_rule" "tfer--securityhub-waf-regional-webacl-not-empty-fbcf4a02" {
  depends_on       = ["aws_config_configuration_recorder.tfer--default"]
  description      = "This control checks whether WAF regional Web ACL contains any WAF rules or rule groups. This control fails if if there are no WAF rules or rule groups present within a Web ACL."
  input_parameters = "{}"
  name             = "securityhub-waf-regional-webacl-not-empty-fbcf4a02"

  source {
    owner             = "AWS"
    source_identifier = "WAF_REGIONAL_WEBACL_NOT_EMPTY"
  }
}
