resource "aws_api_gateway_integration_response" "tfer--z7x8rshul9-002F-3sztyb0g5e-002F-OPTIONS-002F-200" {
  http_method = "OPTIONS"
  resource_id = "3sztyb0g5e"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'false'"
    "method.response.header.Access-Control-Allow-Headers"     = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,X-Amz-User-Agent'"
    "method.response.header.Access-Control-Allow-Methods"     = "'OPTIONS,POST,GET'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }

  response_templates = {
    "application/json" = "#set($origin = $input.params(\"Origin\"))\n#if($origin == \"\") #set($origin = $input.params(\"origin\")) #end\n#if($origin == \"*\") #set($context.responseOverride.header.Access-Control-Allow-Origin = $origin) #end"
  }

  rest_api_id = "z7x8rshul9"
  status_code = "200"
}
