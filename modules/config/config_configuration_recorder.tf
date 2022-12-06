resource "aws_config_configuration_recorder" "tfer--default" {
  name = "default"

  recording_group {
    all_supported                 = "true"
    include_global_resource_types = "true"
  }

  role_arn = "arn:aws:iam::799611636099:role/aws-service-role/config.amazonaws.com/AWSServiceRoleForConfig"
}
