resource "aws_config_delivery_channel" "tfer--default" {
  depends_on     = ["aws_config_configuration_recorder.tfer--default"]
  name           = "default"
  s3_bucket_name = "config-bucket-799611636099"
}
