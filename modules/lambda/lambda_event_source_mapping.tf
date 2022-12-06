resource "aws_lambda_event_source_mapping" "tfer--2a7b57d4-13b8-41b5-b1c6-dae7652b5672" {
  batch_size                         = "1"
  bisect_batch_on_function_error     = "false"
  enabled                            = "true"
  event_source_arn                   = "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-campaign-sms"
  function_name                      = "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-outbound-campaign-sms"
  maximum_batching_window_in_seconds = "0"
  maximum_record_age_in_seconds      = "0"
  maximum_retry_attempts             = "0"
  parallelization_factor             = "0"
  tumbling_window_in_seconds         = "0"
}

resource "aws_lambda_event_source_mapping" "tfer--87b4207f-9776-4c56-98d0-38a3a9b54c93" {
  batch_size                         = "10"
  bisect_batch_on_function_error     = "false"
  enabled                            = "true"
  event_source_arn                   = "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/stream/2019-02-28T01:14:09.706"
  function_name                      = "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-dynamo-to-sqs-via-role"
  maximum_batching_window_in_seconds = "0"
  maximum_record_age_in_seconds      = "604800"
  maximum_retry_attempts             = "10000"
  parallelization_factor             = "1"
  starting_position                  = "LATEST"
  tumbling_window_in_seconds         = "0"
}

resource "aws_lambda_event_source_mapping" "tfer--8955cad3-c07f-456e-af24-01e0911af9a0" {
  batch_size                         = "1"
  bisect_batch_on_function_error     = "false"
  enabled                            = "true"
  event_source_arn                   = "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-outbound-sms"
  function_name                      = "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-outbound-sms"
  maximum_batching_window_in_seconds = "0"
  maximum_record_age_in_seconds      = "0"
  maximum_retry_attempts             = "0"
  parallelization_factor             = "0"
  tumbling_window_in_seconds         = "0"
}

resource "aws_lambda_event_source_mapping" "tfer--bdad9114-f1f8-4228-a9b1-56664a719bb3" {
  batch_size                         = "100"
  bisect_batch_on_function_error     = "false"
  enabled                            = "false"
  event_source_arn                   = "arn:aws:dynamodb:us-east-1:799611636099:table/sms-opt-in-prod/stream/2019-02-28T01:14:09.706"
  function_name                      = "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-dynamo-to-sqs"
  maximum_batching_window_in_seconds = "3"
  maximum_record_age_in_seconds      = "-1"
  maximum_retry_attempts             = "-1"
  parallelization_factor             = "3"
  starting_position                  = "TRIM_HORIZON"
  tumbling_window_in_seconds         = "0"
}

resource "aws_lambda_event_source_mapping" "tfer--dfa3eff5-d844-4eee-877a-1e6274f53176" {
  batch_size                         = "1"
  bisect_batch_on_function_error     = "false"
  enabled                            = "true"
  event_source_arn                   = "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-inbound-sms"
  function_name                      = "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-inbound-sms"
  maximum_batching_window_in_seconds = "0"
  maximum_record_age_in_seconds      = "0"
  maximum_retry_attempts             = "0"
  parallelization_factor             = "0"
  tumbling_window_in_seconds         = "0"
}
