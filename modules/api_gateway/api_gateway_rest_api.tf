resource "aws_api_gateway_rest_api" "tfer--2xhs7s4c6e_screenshot-maker-api-gateway" {
  api_key_source               = "HEADER"
  binary_media_types           = ["*/*"]
  description                  = "Screenshot Maker Api Gateway"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "screenshot-maker-api-gateway"
}

resource "aws_api_gateway_rest_api" "tfer--6ehfjegon8_url-shortener-api" {
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "url-shortener-api"
}

resource "aws_api_gateway_rest_api" "tfer--8q4x51fq08_age-verification-api" {
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "age-verification-api"
}

resource "aws_api_gateway_rest_api" "tfer--ee6bg3ru9b_sms-opt-in-prod-sms-api-gateway" {
  api_key_source               = "HEADER"
  description                  = "SMS Opt-In Api Gateway"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "sms-opt-in-prod-sms-api-gateway"
}

resource "aws_api_gateway_rest_api" "tfer--eshwui6uea_loyalty-points-api" {
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "loyalty-points-api"
}

resource "aws_api_gateway_rest_api" "tfer--v490sfl4v7_one-time-code-api-gateway" {
  api_key_source               = "HEADER"
  description                  = "One Time Code Service Api Gateway"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "one-time-code-api-gateway"
}

resource "aws_api_gateway_rest_api" "tfer--wfkk0eta3h_prod-generate-barcode" {
  api_key_source               = "HEADER"
  binary_media_types           = ["*/*"]
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "prod-generate-barcode"
}

resource "aws_api_gateway_rest_api" "tfer--y97kbzufyc_verification-codes-api" {
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "verification-codes-api"
}

resource "aws_api_gateway_rest_api" "tfer--yur6fdr640_client-logger-api" {
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "client-logger-api"
}

resource "aws_api_gateway_rest_api" "tfer--z7x8rshul9_prod-cors-proxy" {
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "prod-cors-proxy"
}
