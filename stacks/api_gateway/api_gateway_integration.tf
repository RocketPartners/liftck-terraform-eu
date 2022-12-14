resource "aws_api_gateway_integration" "tfer--2xhs7s4c6e-002F-2gb3op-002F-ANY" {
  cache_namespace         = "2gb3op"
  connection_type         = "INTERNET"
  http_method             = "ANY"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "2gb3op"
  rest_api_id             = "2xhs7s4c6e"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:screenshot-maker/invocations"
}

resource "aws_api_gateway_integration" "tfer--6ehfjegon8-002F-m0irg3-002F-ANY" {
  cache_namespace         = "t1a1fz"
  connection_type         = "INTERNET"
  http_method             = "ANY"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "m0irg3"
  rest_api_id             = "6ehfjegon8"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:url-shortener-lambda/invocations"
}

resource "aws_api_gateway_integration" "tfer--8q4x51fq08-002F-gzol5j-002F-ANY" {
  cache_namespace         = "gzol5j"
  connection_type         = "INTERNET"
  http_method             = "ANY"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "gzol5j"
  rest_api_id             = "8q4x51fq08"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:age-verification-lambda/invocations"
}

resource "aws_api_gateway_integration" "tfer--ee6bg3ru9b-002F-mezc9x-002F-ANY" {
  cache_namespace         = "mezc9x"
  connection_type         = "INTERNET"
  http_method             = "ANY"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "mezc9x"
  rest_api_id             = "ee6bg3ru9b"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-sms-api/invocations"
}

resource "aws_api_gateway_integration" "tfer--eshwui6uea-002F-qrxm79-002F-ANY" {
  cache_namespace         = "qrxm79"
  connection_type         = "INTERNET"
  http_method             = "ANY"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "qrxm79"
  rest_api_id             = "eshwui6uea"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:loyalty-points-lambda/invocations"
}

resource "aws_api_gateway_integration" "tfer--v490sfl4v7-002F-ejiq3o-002F-ANY" {
  cache_namespace         = "ejiq3o"
  connection_type         = "INTERNET"
  http_method             = "ANY"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "ejiq3o"
  rest_api_id             = "v490sfl4v7"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:one-time-code-lambda/invocations"
}

resource "aws_api_gateway_integration" "tfer--wfkk0eta3h-002F-8p1yth-002F-GET" {
  cache_namespace         = "8p1yth"
  connection_type         = "INTERNET"
  http_method             = "GET"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "8p1yth"
  rest_api_id             = "wfkk0eta3h"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:generate-barcode-prod-handler/invocations"
}

resource "aws_api_gateway_integration" "tfer--y97kbzufyc-002F-xqv2xa-002F-ANY" {
  cache_namespace         = "xqv2xa"
  connection_type         = "INTERNET"
  http_method             = "ANY"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "xqv2xa"
  rest_api_id             = "y97kbzufyc"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:verification-codes-lambda/invocations"
}

resource "aws_api_gateway_integration" "tfer--yur6fdr640-002F-yef7xj-002F-ANY" {
  cache_namespace         = "yef7xj"
  connection_type         = "INTERNET"
  http_method             = "ANY"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "yef7xj"
  rest_api_id             = "yur6fdr640"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:client-logger-lambda/invocations"
}

resource "aws_api_gateway_integration" "tfer--z7x8rshul9-002F-3sztyb0g5e-002F-GET" {
  cache_namespace         = "3sztyb0g5e"
  connection_type         = "INTERNET"
  http_method             = "GET"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "3sztyb0g5e"
  rest_api_id             = "z7x8rshul9"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:cors-proxy/invocations"
}

resource "aws_api_gateway_integration" "tfer--z7x8rshul9-002F-3sztyb0g5e-002F-OPTIONS" {
  cache_namespace      = "3sztyb0g5e"
  connection_type      = "INTERNET"
  content_handling     = "CONVERT_TO_TEXT"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{statusCode:200}"
  }

  resource_id          = "3sztyb0g5e"
  rest_api_id          = "z7x8rshul9"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}

resource "aws_api_gateway_integration" "tfer--z7x8rshul9-002F-3sztyb0g5e-002F-POST" {
  cache_namespace         = "3sztyb0g5e"
  connection_type         = "INTERNET"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "3sztyb0g5e"
  rest_api_id             = "z7x8rshul9"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:799611636099:function:cors-proxy/invocations"
}
