resource "aws_api_gateway_method_response" "tfer--2xhs7s4c6e-002F-2gb3op-002F-ANY-002F-200" {
  http_method = "ANY"
  resource_id = "2gb3op"
  rest_api_id = "2xhs7s4c6e"
  status_code = "200"
}

resource "aws_api_gateway_method_response" "tfer--z7x8rshul9-002F-3sztyb0g5e-002F-OPTIONS-002F-200" {
  http_method = "OPTIONS"
  resource_id = "3sztyb0g5e"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "true"
    "method.response.header.Access-Control-Allow-Headers"     = "true"
    "method.response.header.Access-Control-Allow-Methods"     = "true"
    "method.response.header.Access-Control-Allow-Origin"      = "true"
  }

  rest_api_id = "z7x8rshul9"
  status_code = "200"
}
