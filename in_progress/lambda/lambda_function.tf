resource "aws_lambda_function" "tfer--age-verification-lambda" {
  architectures = ["x86_64"]
  description   = "Age Verification Service Api"

  environment {
    variables = {
      AGE_VERIFY_URI                = "https://ws.idms.lexisnexis.com/restws/identity/v3/accounts/35665/workflows/customers.circlek.verify.age.workflow/conversations"
      API_KEYS                      = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f,ngrp_9zk2iflapd83bv"
      DEBUG                         = "true"
      GET_LOYALTY_URI               = "https://lift.allpoints.io/consumers/"
      MODE                          = "live"
      PASSWORD                      = "Rk!3vl4L8x"
      PDI_OCP_APIM_SUBSCRIPTION_KEY = "7de5d5cba0284519bd8529d22404a339"
      PDI_X_RETAILER_GUID           = "CC0C3C80-7774-4EA6-AF20-E544EC51CB19"
      TABLE_NAME                    = "customer-details"
      USER_ID                       = "CircleK_Integ"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "age-verification-lambda"
  handler                        = "com.liftck.ageverification.LambdaHandler::handleRequest"
  memory_size                    = "2048"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/age-verification-stack-LambdaRole-2PX5TNE1WJ0A"
  runtime                        = "java8"
  source_code_hash               = "D2od/l2+f161tIIEbR5/TJEB5bCUiOsz21OA4Er22NI="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "30"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-065260779a3d2cbda"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--clear-tunnel-connection-sqlrunnercron" {
  architectures = ["x86_64"]
  description   = "LambdaFunction for SqlRunner"

  environment {
    variables = {
      DEBUG  = "true"
      config = "{   \"driver\": \"com.mysql.cj.jdbc.Driver\",   \"url\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026rewriteBatchedStatements=true\",   \"user\": \"cirkadmin\",   \"pass\": \"QJrz8dQ7aifpYThpyYfxCFfC2\", \t\"sql\": \"update Tunnel set connect = 0 where connect = 1;\", \t\"debug\": false }"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "clear-tunnel-connection-sqlrunnercron"
  handler                        = "io.rcktapp.cron.sql.SqlRunnerLambdaHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-clear-tunnel-connection-sql-runner-cron"
  runtime                        = "java8"
  source_code_hash               = "YLWZ6d+V20IkyRofwb6r+PpDAWtJpQeJWd6k0bEQBnA="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0e7e6c6b32be59230"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--client-logger-lambda" {
  architectures = ["x86_64"]
  description   = "Client Logger API"

  environment {
    variables = {
      API_KEYS    = "todoprod"
      ENVIRONMENT = "production"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "client-logger-lambda"
  handler                        = "build/index.main"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/client-logger-stack-LambdaRole-1CTVFA7M4EANJ"
  runtime                        = "nodejs12.x"
  source_code_hash               = "hRu0sxA/5Tl9nM6UYvxCfuwiPyicR2XKuPv6giVzOQM="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "30"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--cors-proxy" {
  architectures = ["x86_64"]

  environment {
    variables = {
      foo = "123"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "cors-proxy"
  handler                        = "handler.corsProxy"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/cors-proxy-prod-us-east-1-lambdaRole"
  runtime                        = "nodejs6.10"
  source_code_hash               = "J9E0sl3gCzzSNlP54QFsTzpqf1i8zHs8FLVP9kfsZpM="

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }

  timeout = "60"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--data-sync-notifier-lambda" {
  architectures = ["x86_64"]

  dead_letter_config {
    target_arn = "arn:aws:sqs:us-east-1:799611636099:data-sync-notifier-lambda-dlq-sqs"
  }

  description = "Data Sync Notifier"

  environment {
    variables = {
      DEBUG = "true"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "data-sync-notifier-lambda"
  handler                        = "com.liftck.datasyncmodifier.LambdaHandler::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/data-sync-notifier-stack-LambdaRole-1UEWP9XHNWLGA"
  runtime                        = "java8"
  source_code_hash               = "ctSnoWQel7hdCl2mBr/PFLZtmQwhI3xKMXQ52KnMwjE="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "15"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--generate-barcode-prod-handler" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "generate-barcode-prod-handler"
  handler                        = "index.handler"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/generate-barcode-prod-us-east-1-lambdaRole"
  runtime                        = "nodejs8.10"
  source_code_hash               = "7BOV5P/vZvOt0a3Gs5hCX0edfzjtlgg3RfjYjsMdkqY="

  tags = {
    STAGE = "prod"
  }

  tags_all = {
    STAGE = "prod"
  }

  timeout = "6"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--indexer-lambda" {
  architectures = ["x86_64"]
  description   = "Triggered from MySql Trigger in IndexLog table"

  environment {
    variables = {
      DEBUG          = "true"
      elasticdb_url  = "https://vpc-gen2-sts7k7orlpti22i4leh2kmslhm.us-east-1.es.amazonaws.com"
      sqldb_driver   = "com.mysql.jdbc.Driver"
      sqldb_pass     = "QJrz8dQ7aifpYThpyYfxCFfC2"
      sqldb_url      = "jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull"
      sqldb_user     = "cirkadmin"
      sqldbro_driver = "com.mysql.jdbc.Driver"
      sqldbro_pass   = "QJrz8dQ7aifpYThpyYfxCFfC2"
      sqldbro_url    = "jdbc:mysql://cirk-prod.cluster-ro-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull"
      sqldbro_user   = "cirkadmin"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "indexer-lambda"
  handler                        = "com.liftck.index.lambda.IndexerLambdaHandler::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "0"
  role                           = "arn:aws:iam::799611636099:role/indexer-stack-liftckindexerRole-1DO1GBFI1SSZ9"
  runtime                        = "java8"
  source_code_hash               = "QqrhSBTMK7LtWcv4DwDEtUXESQcnQeOGmipvZrQnA/8="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0caf9494a308209a2"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--liftck-cron-activelyscheduled-lambda" {
  architectures = ["x86_64"]
  description   = "Updates Ads' activelyScheduled property once per day"

  environment {
    variables = {
      sqldb_driver = "com.mysql.jdbc.Driver"
      sqldb_pass   = "QJrz8dQ7aifpYThpyYfxCFfC2"
      sqldb_url    = "jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull"
      sqldb_user   = "cirkadmin"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "liftck-cron-activelyscheduled-lambda"
  handler                        = "com.liftck.cron.activelyscheduled.ActivelyScheduledHandler::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/liftck-cron-stack-UpdateActivelyScheduledLambdaRol-1AS820JNA175X"
  runtime                        = "java8"
  source_code_hash               = "PmNjkLZWTNFRXz2z9TEasWcZciLuVtL+qYIqlb4T41g="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-065260779a3d2cbda"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--liftck-cron-masterdatafile-lambda" {
  architectures = ["x86_64"]
  description   = "Creates Master Data File from Item table once a day"

  environment {
    variables = {
      env               = "prod"
      masterDataFileUrl = "files.circleklift.com"
      sqldb_driver      = "com.mysql.jdbc.Driver"
      sqldb_pass        = "QJrz8dQ7aifpYThpyYfxCFfC2"
      sqldb_url         = "jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull"
      sqldb_user        = "cirkadmin"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "liftck-cron-masterdatafile-lambda"
  handler                        = "com.liftck.cron.masterdatafile.MasterDataFileHandler::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/liftck-cron-stack-UpdateMasterDataFileLambdaRole-1AUUKZYSDZQW4"
  runtime                        = "java8"
  source_code_hash               = "PmNjkLZWTNFRXz2z9TEasWcZciLuVtL+qYIqlb4T41g="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "180"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-065260779a3d2cbda"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--liftck-cron-onpromoreindex-lambda" {
  architectures = ["x86_64"]
  description   = "Adds reindex rows to the IndexLog table for every onPromo ad once a day"

  environment {
    variables = {
      sqldb_driver = "com.mysql.jdbc.Driver"
      sqldb_pass   = "QJrz8dQ7aifpYThpyYfxCFfC2"
      sqldb_url    = "jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull"
      sqldb_user   = "cirkadmin"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "liftck-cron-onpromoreindex-lambda"
  handler                        = "com.liftck.cron.onpromoreindex.OnPromoReindexHandler::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/liftck-cron-stack-UpdateOnPromoReindexLambdaRole-1FFVEMGL9INQ2"
  runtime                        = "java8"
  source_code_hash               = "PmNjkLZWTNFRXz2z9TEasWcZciLuVtL+qYIqlb4T41g="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-065260779a3d2cbda"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--liftck-octanebuilder-prod-octanebuilder-lambda" {
  architectures = ["x86_64"]
  description   = "creating Octane Builder file from pricebook updates files"

  environment {
    variables = {
      bucket_Name       = "files.circleklift.com"
      env               = "prod"
      masterDataFileUrl = "files.circleklift.com"
      sqldb_driver      = "com.mysql.jdbc.Driver"
      sqldb_pass        = "QJrz8dQ7aifpYThpyYfxCFfC2"
      sqldb_url         = "jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull"
      sqldb_user        = "cirkadmin"
      tenant_Code       = "ie"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "liftck-octanebuilder-prod-octanebuilder-lambda"
  handler                        = "com.liftck.octane.lambda.LambdaHandler::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/liftck-octanebuilder-prod-OctaneBuilderLambdaRole-1XI8L54K0RS7X"
  runtime                        = "java8"
  source_code_hash               = "QoUvioNy+qFQwXq1zA9EEt0t5XJIV3ehI90DYHOZKjU="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-065260779a3d2cbda"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--lottery-download-to-s3" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "lottery-download-to-s3"
  handler                        = "io.rcktapp.cron.web.UrlDownloadToS3LambdaHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-lottery-download-to-s3"
  runtime                        = "java8"
  source_code_hash               = "TDjdBC76kPF0pAIFj4ZhzC9jNJOFqe8FCMJkj6ji580="
  timeout                        = "30"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--loyalty-points-lambda" {
  architectures = ["x86_64"]
  description   = "Loyalty Points Service Api"

  environment {
    variables = {
      API_KEYS     = "7erzg89b2w8e9yfb2jmkq"
      DEBUG        = "true"
      DYNAMO_TABLE = "loyalty-punchcard"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "loyalty-points-lambda"
  handler                        = "com.liftck.loyaltypoints.LoyaltyPointsLambdaHandler::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/loyalty-points-stack-LoyaltyPointsLambdaRole-1DDVYF7IDPFHG"
  runtime                        = "java8"
  source_code_hash               = "dMxFc/ofisJDeegKzFc/InMIuDhXiOcXw9I2esP4Vjk="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "15"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--nlb-alb-ip-updater-443-LambdaFunction-1Q8CJ9L7PQ00J" {
  architectures = ["x86_64"]
  description   = "Register Application Load Balancer to Network Load Balancer"

  environment {
    variables = {
      ALB_DNS_NAME                      = "internal-player-1258786010.us-east-1.elb.amazonaws.com"
      ALB_LISTENER                      = "443"
      CW_METRIC_FLAG_IP_COUNT           = "False"
      FILE_KEY_PREFIX                   = "player-alb-443"
      INVOCATIONS_BEFORE_DEREGISTRATION = "3"
      MAX_LOOKUP_PER_INVOCATION         = "10"
      NLB_TG_ARN                        = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-alb-443/0fc9785933d9bd18"
      S3_BUCKET                         = "circlek-prod-nlb-alb-ip-updater"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "nlb-alb-ip-updater-443-LambdaFunction-1Q8CJ9L7PQ00J"
  handler                        = "populate_NLB_TG_with_ALB.lambda_handler"
  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/nlb-alb-ip-updater-443-LambdaIAMRole-BKMHZIJUKEX2"
  runtime                        = "python2.7"
  source_code_hash               = "MyEVuqRLP/T+aWBlBg4TaDhAro9go7HuigteKMfUJNA="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "300"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--nlb-alb-ip-updater-80-LambdaFunction-39D0JIX8NN4M" {
  architectures = ["x86_64"]
  description   = "Register Application Load Balancer to Network Load Balancer"

  environment {
    variables = {
      ALB_DNS_NAME                      = "internal-player-1258786010.us-east-1.elb.amazonaws.com"
      ALB_LISTENER                      = "80"
      CW_METRIC_FLAG_IP_COUNT           = "False"
      FILE_KEY_PREFIX                   = "player-alb-80"
      INVOCATIONS_BEFORE_DEREGISTRATION = "3"
      MAX_LOOKUP_PER_INVOCATION         = "10"
      NLB_TG_ARN                        = "arn:aws:elasticloadbalancing:us-east-1:799611636099:targetgroup/player-alb-80/3ec028af5f199507"
      S3_BUCKET                         = "circlek-prod-nlb-alb-ip-updater"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "nlb-alb-ip-updater-80-LambdaFunction-39D0JIX8NN4M"
  handler                        = "populate_NLB_TG_with_ALB.lambda_handler"
  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/nlb-alb-ip-updater-80-LambdaIAMRole-1C3OF1M1SRD3B"
  runtime                        = "python2.7"
  source_code_hash               = "MyEVuqRLP/T+aWBlBg4TaDhAro9go7HuigteKMfUJNA="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "300"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--one-time-code-lambda" {
  architectures = ["x86_64"]
  description   = "One Time Code Service Api"

  environment {
    variables = {
      DEBUG     = "true"
      api_keys  = "qe7tsp34dzeh92nd8bcm623xzsnbd"
      db_driver = "com.mysql.jdbc.Driver"
      db_pass   = "GThw82uttA2774vGrWXzzTdfs8ygwR"
      db_url    = "jdbc:mysql://cirk-services.cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/cirk_services?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull"
      db_user   = "cirkservices"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "one-time-code-lambda"
  handler                        = "com.cirk.services.onetimecode.OneTimeCodeLambdaHandler::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-one-time-code"
  runtime                        = "java8"
  source_code_hash               = "g9npX7ljbIm7hVHm9VsUjausy7LYFRMZ98f3Z8T8eds="
  timeout                        = "90"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0ddfbf5000869a7db"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--power-bi-reports-prod-ad-query" {
  architectures = ["x86_64"]
  description   = "Advertisement Query"

  environment {
    variables = {
      DEBUG                  = "false"
      MAIN_CLASS             = "io.rcktapp.sql.sqlbatch.cloud.SqlBatchCloudApp"
      SPRING_PROFILES_ACTIVE = "bi-ad-query"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "power-bi-reports-prod-ad-query"
  handler                        = "io.rcktapp.sql.sqlbatch.cloud.SqlBatchCloudHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-power-bi-reports-prod-ad-query"
  runtime                        = "java8"
  source_code_hash               = "BFZ6uLJ9TOFzwYFZ06F2kegFg1gIVL1iiG4IM3wgn6I="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0e06cd821e0301498"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--power-bi-reports-prod-ad-upsert" {
  architectures = ["x86_64"]
  description   = "Advertisement Upsert"

  environment {
    variables = {
      DEBUG                  = "false"
      MAIN_CLASS             = "io.rcktapp.sql.sqlbatch.cloud.SqlBatchCloudApp"
      SPRING_PROFILES_ACTIVE = "bi-ad-upsert"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "power-bi-reports-prod-ad-upsert"
  handler                        = "io.rcktapp.sql.sqlbatch.cloud.SqlBatchCloudHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-power-bi-reports-prod-ad-upsert"
  runtime                        = "java8"
  source_code_hash               = "HF5Hh2M5PuGtOT8pf8XuW2yAQ1Qbu1puEkybipQbroY="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0e06cd821e0301498"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--power-bi-reports-prod-cashier-query" {
  architectures = ["x86_64"]
  description   = "Triggered from Cloud Watch Cron, Queries and Stores Last Week's Cashier Report"

  environment {
    variables = {
      DEBUG                  = "false"
      MAIN_CLASS             = "io.rcktapp.sql.sqlbatch.cloud.SqlBatchCloudApp"
      SPRING_PROFILES_ACTIVE = "bi-cashier-query"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "power-bi-reports-prod-cashier-query"
  handler                        = "io.rcktapp.sql.sqlbatch.cloud.SqlBatchCloudHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-power-bi-reports-prod-cashier-query"
  runtime                        = "java8"
  source_code_hash               = "HF5Hh2M5PuGtOT8pf8XuW2yAQ1Qbu1puEkybipQbroY="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0e06cd821e0301498"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--power-bi-reports-prod-cashier-upsert" {
  architectures = ["x86_64"]
  description   = "Cashier Upsert"

  environment {
    variables = {
      DEBUG                  = "false"
      MAIN_CLASS             = "io.rcktapp.sql.sqlbatch.cloud.SqlBatchCloudApp"
      SPRING_PROFILES_ACTIVE = "bi-cashier-upsert"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "power-bi-reports-prod-cashier-upsert"
  handler                        = "io.rcktapp.sql.sqlbatch.cloud.SqlBatchCloudHandler"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-power-bi-reports-prod-cashier-upsert"
  runtime                        = "java8"
  source_code_hash               = "HF5Hh2M5PuGtOT8pf8XuW2yAQ1Qbu1puEkybipQbroY="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0e06cd821e0301498"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--prod-dev-database-sync" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "prod-dev-database-sync"
  handler                        = "index.handler"
  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/service-role/prod-dev-database-sync-role-2z6bctsw"
  runtime                        = "nodejs14.x"
  source_code_hash               = "uTJFxT0sQYd8f6CtxoZoBcLT6Hd0A48LniMm4gpxgDw="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--prod-monitor" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "prod-monitor"
  handler                        = "io.rcktapp.cron.monitor.MonitorLambdaHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/alarm-lambda-role"
  runtime                        = "java8"
  source_code_hash               = "UQwiMpYb5X86dhKs4h8FGGeHOJW8Wa0J/f3G0LrG1zw="
  timeout                        = "601"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-05f225e225971532b"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--prod-notify" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "prod-notify"
  handler                        = "io.rcktapp.cron.monitor.NotifyLambdaHandler::handleRequest"
  memory_size                    = "256"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/alarm-lambda-role"
  runtime                        = "java8"
  source_code_hash               = "UQwiMpYb5X86dhKs4h8FGGeHOJW8Wa0J/f3G0LrG1zw="
  timeout                        = "300"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-05f225e225971532b"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--prod-scheduler" {
  architectures = ["x86_64"]

  environment {
    variables = {
      config = "{ \t\"jdbcDriver\": \"com.mysql.cj.jdbc.Driver\", \t\"jdbcUrl\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?useServerPrepStmts=false\u0026rewriteBatchedStatements=true\u0026autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026connectTimeout=5000\u0026useSSL=false\", \t\"jdbcUsername\": \"cirkadmin\", \t\"jdbcPassword\": \"QJrz8dQ7aifpYThpyYfxCFfC2\", \t\"tablePrefix\": \"Alarm\" }"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "prod-scheduler"
  handler                        = "io.rcktapp.cron.SchedulerLambdaHandler::handleRequest"
  memory_size                    = "256"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/scheduler-lambda-role"
  runtime                        = "java8"
  source_code_hash               = "UQwiMpYb5X86dhKs4h8FGGeHOJW8Wa0J/f3G0LrG1zw="
  timeout                        = "301"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-05f225e225971532b"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--rocket-etl-lambda" {
  architectures = ["x86_64"]
  description   = "rocket-etl API Lambda"

  environment {
    variables = {
      DEBUG = "true"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "rocket-etl-lambda"
  handler                        = "io.rocketpartners.etl.lambda.DataExporterImporterLambda::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/rocket-etl-stack-RocketEtlLambdaRole-ZXZQYS01N56Q"
  runtime                        = "java8"
  source_code_hash               = "kj2fVXSipy5ub11tWSbOpq4EO88Pv/yk9lIYril7R6c="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0ff2af863bfa17934"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--row-copier-items-prod-row-copier-cron" {
  architectures = ["x86_64"]
  description   = "Triggered from Row Copier Cron, copy rows from one table to another"

  environment {
    variables = {
      DEBUG  = "true"
      config = "{     \"src\": {         \"driver\": \"com.mysql.cj.jdbc.Driver\",         \"url\": \"jdbc:mysql://liftprod.cwf1nqwkubwc.us-east-1.rds.amazonaws.com:3306/server8?connectTimeout=5000\",         \"user\": \"liftAdmin\",         \"pass\": \"MzQN2e!x$F\"     },     \"dest\": {         \"driver\": \"com.mysql.cj.jdbc.Driver\",         \"url\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?connectTimeout=5000\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026rewriteBatchedStatements=true\u0026useSSL=false\",         \"user\": \"cirkadmin\",         \"pass\": \"QJrz8dQ7aifpYThpyYfxCFfC2\"     },     \"sourceSelect\": \"select `id`, 1 as tenantId, IF(upc is not null, upc, plu) as code, `name`, `description`, `category`, `subcategory`, `manufacturer`, `brandFamily`, `sellingQty`, `size`, `pack`, `variablePrice`, `minAge`, `alcohol`, `tobacco`, `discrete`, `isGroup`, lastModified as modifiedAt from Item where isGroup=0 and lastModified > DATE_SUB(NOW(), INTERVAL 3 DAY)\",     \"destTable\": \"Item\",     \"batchSize\": 200,     \"debug\": false }"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "row-copier-items-prod-row-copier-cron"
  handler                        = "io.rcktapp.cron.sql.RowCopierLambdaHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-row-copier-items-prod-row-copier-cron"
  runtime                        = "java8"
  source_code_hash               = "YLWZ6d+V20IkyRofwb6r+PpDAWtJpQeJWd6k0bEQBnA="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-017d03101602e2ee4"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--row-copier-legacylocation-prod-row-copier-cron" {
  architectures = ["x86_64"]
  description   = "Triggered from Row Copier Cron, copy rows from one table to another"

  environment {
    variables = {
      DEBUG  = "true"
      config = "{ \"src\": { \"driver\": \"com.mysql.cj.jdbc.Driver\", \"url\": \"jdbc:mysql://liftprod.cwf1nqwkubwc.us-east-1.rds.amazonaws.com:3306/server8?connectTimeout=5000\", \"user\": \"liftAdmin\", \"pass\": \"MzQN2e!x$F\" }, \"dest\": { \"driver\": \"com.mysql.cj.jdbc.Driver\", \"url\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?connectTimeout=5000\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026rewriteBatchedStatements=true\u0026useSSL=false\", \"user\": \"cirkadmin\", \"pass\": \"QJrz8dQ7aifpYThpyYfxCFfC2\" }, \"sourceSelect\": \"select id, 1 as tenantId, `locationCode`, `storeNumber` as store, `liftPortalId`, `amdocsSiteId`, `nickname`, `address1`, `address2`, `address3`, `city`, `state`, `zip`,`screenOrientation`, `alternateId`, `clearinghouseId`, `dma`, `phone`, `email`, `primaryContact`, `primaryPhone`, `timeZone`, `uninstalled`, `isGroup`, lastModified as modifiedAt, `longitude`, `latitude`,`hispanicRank`, `dmaRank`, `division`, `region`, `market`, `installDate`, `status`, `statusDate`, `expectedDevices` from Location where isGroup=0 and lastModified > DATE_SUB(NOW(), INTERVAL 30 DAY)\", \"destTable\": \"LocationLegacy\", \"batchSize\": 200, \"debug\": false }"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "row-copier-legacylocation-prod-row-copier-cron"
  handler                        = "io.rcktapp.cron.sql.RowCopierLambdaHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-row-copier-legacylocation-prod-row-copier-cron"
  runtime                        = "java8"
  source_code_hash               = "YLWZ6d+V20IkyRofwb6r+PpDAWtJpQeJWd6k0bEQBnA="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0d6900739eccef946"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--row-copier-locations-prod-row-copier-cron" {
  architectures = ["x86_64"]
  description   = "Triggered from Row Copier Cron, copy rows from one table to another"

  environment {
    variables = {
      DEBUG  = "true"
      config = "{     \"src\": {         \"driver\": \"com.mysql.cj.jdbc.Driver\",         \"url\": \"jdbc:mysql://liftprod.cwf1nqwkubwc.us-east-1.rds.amazonaws.com:3306/server8?connectTimeout=5000\",         \"user\": \"liftAdmin\",         \"pass\": \"MzQN2e!x$F\"     },     \"dest\": {         \"driver\": \"com.mysql.cj.jdbc.Driver\",         \"url\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?connectTimeout=5000\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026rewriteBatchedStatements=true\u0026useSSL=false\",         \"user\": \"cirkadmin\",         \"pass\": \"QJrz8dQ7aifpYThpyYfxCFfC2\"     },     \"sourceSelect\": \"select id, 1 as tenantId, `locationCode`, storeNumber as store, `liftPortalId`, `amdocsSiteId`, `nickname`, `address1`, `address2`, `address3`, `city`, `state`, `zip`,`screenOrientation`, `alternateId`, `clearinghouseId`, `dma`, `phone`, `email`, `primaryContact`, `primaryPhone`, `timeZone`, `uninstalled`, `isGroup`, lastModified as modifiedAt, `longitude`, `latitude`,`hispanicRank`, `dmaRank`, `division`, `region`, `market`, `installDate`, `status`, `statusDate`, `expectedDevices` from Location where isGroup=0 and status != 'Removed' and storeNumber is not null and lastModified > DATE_SUB(NOW(), INTERVAL 3 DAY)\",     \"destTable\": \"LocationLegacy\",     \"batchSize\": 200,     \"debug\": false }"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "row-copier-locations-prod-row-copier-cron"
  handler                        = "io.rcktapp.cron.sql.RowCopierLambdaHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-row-copier-locations-prod-row-copier-cron"
  runtime                        = "java8"
  source_code_hash               = "YLWZ6d+V20IkyRofwb6r+PpDAWtJpQeJWd6k0bEQBnA="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-03f71996f91c1edef"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--row-copier-playerlegacy-prod-row-copier-cron" {
  architectures = ["x86_64"]
  description   = "Triggered from Row Copier Cron, copy rows from one table to another"

  environment {
    variables = {
      DEBUG  = "true"
      config = "{ \"src\": { \"driver\": \"com.mysql.cj.jdbc.Driver\", \"url\": \"jdbc:mysql://liftprod.cwf1nqwkubwc.us-east-1.rds.amazonaws.com:3306/server8?connectTimeout=5000\", \"user\": \"liftAdmin\", \"pass\": \"MzQN2e!x$F\" }, \"dest\": { \"driver\": \"com.mysql.cj.jdbc.Driver\", \"url\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?connectTimeout=5000\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026rewriteBatchedStatements=true\u0026useSSL=false\", \"user\": \"cirkadmin\", \"pass\": \"QJrz8dQ7aifpYThpyYfxCFfC2\" }, \"sourceSelect\": \"select `id`, 1 as tenantId, `playerCode`, `playerKey`,`locationId`, 'This table is temporary - used for player auth only' as info from Player where playerKey != 'MOVED' and playerCode is not null and lastModified > DATE_SUB(NOW(), INTERVAL 30 DAY)\", \"destTable\": \"PlayerLegacy\", \"batchSize\": 200, \"debug\": false }"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "row-copier-playerlegacy-prod-row-copier-cron"
  handler                        = "io.rcktapp.cron.sql.RowCopierLambdaHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-row-copier-playerlegacy-prod-row-copier-cron"
  runtime                        = "java8"
  source_code_hash               = "YLWZ6d+V20IkyRofwb6r+PpDAWtJpQeJWd6k0bEQBnA="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-03194c99ee2fe6df2"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--row-copier-players-prod-row-copier-cron" {
  architectures = ["x86_64"]
  description   = "Triggered from Row Copier Cron, copy rows from one table to another"

  environment {
    variables = {
      DEBUG  = "true"
      config = "{ \"src\": { \"driver\": \"com.mysql.cj.jdbc.Driver\", \"url\": \"jdbc:mysql://liftprod.cwf1nqwkubwc.us-east-1.rds.amazonaws.com:3306/server8?connectTimeout=5000\", \"user\": \"liftAdmin\", \"pass\": \"MzQN2e!x$F\" }, \"dest\": { \"driver\": \"com.mysql.cj.jdbc.Driver\", \"url\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?connectTimeout=5000\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026rewriteBatchedStatements=true\u0026useSSL=false\", \"user\": \"cirkadmin\", \"pass\": \"QJrz8dQ7aifpYThpyYfxCFfC2\" }, \"sourceSelect\": \"select `id`, 1 as tenantId, `playerCode`, `playerKey`, `macAddress`, `locationId`, `registerNum`, `activated`, `status`, `notes`, lastModified as modifiedAt from Player where playerKey != 'MOVED' and playerCode is not null and playerCode not like '%DELETE%' and lastModified > DATE_SUB(NOW(), INTERVAL 3 DAY)\", \"destTable\": \"zLegacyPlayerSync\", \"batchSize\": 200, \"debug\": false }"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "row-copier-players-prod-row-copier-cron"
  handler                        = "io.rcktapp.cron.sql.RowCopierLambdaHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-row-copier-players-prod-row-copier-cron"
  runtime                        = "java8"
  source_code_hash               = "YLWZ6d+V20IkyRofwb6r+PpDAWtJpQeJWd6k0bEQBnA="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-01d3be7430059d4db"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--screenshot-maker" {
  architectures = ["x86_64"]
  description   = "Screenshot Maker Lambda"

  environment {
    variables = {
      DEBUG = "true"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "screenshot-maker"
  handler                        = "index.handler"
  layers                         = ["arn:aws:lambda:us-east-1:799611636099:layer:chrome-aws-lambda_w_puppeteer-core:1"]
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-screenshot-maker"
  runtime                        = "nodejs8.10"
  source_code_hash               = "lX41Rcw+Hey/7A+DLRtnCuy2gHnk5k6SAWwMTxUEr5o="
  timeout                        = "15"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-campaign-schedule" {
  architectures = ["x86_64"]
  description   = "Triggered from Cloud Watch Cron, creates send records in dynamo"

  environment {
    variables = {
      BUCKET                      = "circlek-prod-sms-opt-in"
      DEBUG                       = "true"
      DYNAMO_TABLE                = "sms-opt-in-prod"
      END_TIME                    = "23:00"
      MAX_BYTES_PER_FILE          = "30000"
      ROWS_PER_FILE               = "2000"
      START_TIME                  = "16:00"
      WORKER_LAMBDA_FUNCTION_NAME = "sms-opt-in-prod-campaign-worker"
      ageVerifyApiKey             = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      ageVerifyUrl                = "https://age-verification.circleklift.com/api/verify"
      smsProvider                 = "mobivity"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-campaign-schedule"
  handler                        = "com.liftck.smsoptin.lambda.CampaignScheduleHandler::handleRequest"
  memory_size                    = "2048"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-sms-opt-in-prod-campaign-schedule"
  runtime                        = "java8"
  source_code_hash               = "oiDaU0DKFqXg7POtUTAWIy2ZQsHvSIxSgzApZyBgPtc="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-campaign-worker" {
  architectures = ["x86_64"]

  dead_letter_config {
    target_arn = "arn:aws:sqs:us-east-1:799611636099:sms-opt-in-prod-campaign-worker-sms-deadletter"
  }

  description = "Triggered from the CampaignScheduleHandler to process split files to send records"

  environment {
    variables = {
      DEBUG           = "true"
      DYNAMO_TABLE    = "sms-opt-in-prod"
      ageVerifyApiKey = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      ageVerifyUrl    = "https://age-verification.circleklift.com/api/verify"
      smsProvider     = "mobivity"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-campaign-worker"
  handler                        = "com.liftck.smsoptin.lambda.CampaignWorkerHandler::handleRequest"
  memory_size                    = "2048"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-sms-opt-in-prod-campaign-worker"
  runtime                        = "java8"
  source_code_hash               = "oiDaU0DKFqXg7POtUTAWIy2ZQsHvSIxSgzApZyBgPtc="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-dynamo-to-sqs" {
  architectures = ["x86_64"]
  description   = "Sms Opt In Dynamo Table Stream Events to Sqs queue"

  environment {
    variables = {
      DEBUG                       = "true"
      SMS_INBOUND_QUEUE           = "https://sqs.us-east-1.amazonaws.com/799611636099/sms-opt-in-prod-inbound-sms"
      SMS_OUTBOUND_CAMPAIGN_QUEUE = "https://sqs.us-east-1.amazonaws.com/799611636099/sms-opt-in-prod-outbound-campaign-sms"
      SMS_OUTBOUND_QUEUE          = "https://sqs.us-east-1.amazonaws.com/799611636099/sms-opt-in-prod-outbound-sms"
      ageVerifyApiKey             = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      ageVerifyUrl                = "https://age-verification.circleklift.com/api/verify"
      firehoseStreamName          = "circleklift-sms-opt-in"
      smsProvider                 = "mobivity"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-dynamo-to-sqs"
  handler                        = "com.liftck.smsoptin.lambda.DynamoEventToSqsHandler::handleRequest"
  memory_size                    = "2048"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-sms-opt-in-prod-dynamo-to-sqs"
  runtime                        = "java8"
  source_code_hash               = "oiDaU0DKFqXg7POtUTAWIy2ZQsHvSIxSgzApZyBgPtc="
  timeout                        = "15"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-dynamo-to-sqs-via-role" {
  architectures = ["x86_64"]

  environment {
    variables = {
      DEBUG              = "true"
      SMS_INBOUND_QUEUE  = "https://sqs.us-east-1.amazonaws.com/799611636099/sms-opt-in-prod-inbound-sms"
      SMS_OUTBOUND_QUEUE = "https://sqs.us-east-1.amazonaws.com/799611636099/sms-opt-in-prod-outbound-sms"
      firehoseEnabled    = "true"
      firehoseStreamName = "circleklift-sms-opt-in"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-dynamo-to-sqs-via-role"
  handler                        = "com.liftck.smsoptin.lambda.DynamoEventToSqsHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/lambda-sms-opt-in-prod-with-role-sqs-firehose"
  runtime                        = "java8"
  source_code_hash               = "ZzC31NxLCHnb6UFNDK7WJhalJIcRB7GpEYGGaDxCnGY="
  timeout                        = "15"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-follow-up-cron" {
  architectures = ["x86_64"]
  description   = "Triggered from Cloud Watch Cron, send follow-up prompt messages as needed"

  environment {
    variables = {
      DEBUG           = "true"
      DYNAMO_TABLE    = "sms-opt-in-prod"
      END_TIME        = "23:00"
      START_TIME      = "16:00"
      ageVerifyApiKey = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      ageVerifyUrl    = "https://age-verification.circleklift.com/api/verify"
      smsProvider     = "mobivity"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-follow-up-cron"
  handler                        = "com.liftck.smsoptin.lambda.FollowUpPromptCron::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-sms-opt-in-prod-follow-up-cron"
  runtime                        = "java8"
  source_code_hash               = "oiDaU0DKFqXg7POtUTAWIy2ZQsHvSIxSgzApZyBgPtc="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-inbound-sms" {
  architectures = ["x86_64"]
  description   = "Triggered from SQS queue, handles incoming SMS message received from Twilio webhook"

  environment {
    variables = {
      DEBUG                     = "true"
      ageVerifyApiKey           = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      ageVerifyUrl              = "https://age-verification.circleklift.com/api/verify"
      oniApiKey                 = "7e0f0123e2204166b9b17dd4fcdf4e3d"
      oniHostUrl                = "https://lift.allpoints.io"
      oniRetailerGuids          = "CC0C3C80-7774-4EA6-AF20-E544EC51CB19,7ED7017F-63F8-4B50-B209-2F04372655A0"
      smsProvider               = "mobivity"
      twilioAccountSid          = "AC2e48e7b6f0bd81609cadabfe9033f930"
      twilioAuthToken           = "f632e93a92ac8c5eb1291fd3b9ff6d28"
      twilioMessagingServiceSid = "MGdb7793acb6507a6353933cb2bc2c6a50"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-inbound-sms"
  handler                        = "com.liftck.smsoptin.lambda.InboundSmsSqsHandler::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-sms-opt-in-prod-inbound-sms"
  runtime                        = "java8"
  source_code_hash               = "oiDaU0DKFqXg7POtUTAWIy2ZQsHvSIxSgzApZyBgPtc="
  timeout                        = "15"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0075536c802632bc3"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-outbound-campaign-sms" {
  architectures = ["x86_64"]
  description   = "Triggered from SQS queue, sends outbound SMS messages"

  environment {
    variables = {
      DEBUG                         = "true"
      ageVerifyApiKey               = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      ageVerifyUrl                  = "https://age-verification.circleklift.com/api/verify"
      apiKeys                       = "xt28skau449whxbp83jfy5ekqush,0a8104fb-2fec-411a-bddb-4865e9b27dc7,liftverifcode-g8f9m6bef85q86cacbf53x13a9,ngrp-kw72tpsvr37jq2x95gtwpdgt6d,bW9iaXZpdHlzbXM6Z3VqUWJlVzZwcjN4QXpjdjVHekM="
      canSendSms                    = "true"
      dynamoTable                   = "sms-opt-in-prod"
      maxFailedMessageBeforeInvalid = "3"
      maxSqsRetryCount              = "3"
      mobivityAuthPassword          = "!k46vjbhtz83"
      mobivityAuthUsername          = "RP253279API"
      mobivityTargetId              = "4318532"
      mobivityUrl                   = "https://mobivityapihandler.appspot.com/api/v3"
      shortCode                     = "253279"
      smsProvider                   = "mobivity"
      smsSimulationSleepTime        = "0"
      sqsOutBoundQueueUrl           = "https://sqs.us-east-1.amazonaws.com/799611636099/sms-opt-in-prod-outbound-campaign-sms"
      twilioAccountSid              = "AC2e48e7b6f0bd81609cadabfe9033f930"
      twilioAuthToken               = "f632e93a92ac8c5eb1291fd3b9ff6d28"
      twilioMessagingServiceSid     = "MGdb7793acb6507a6353933cb2bc2c6a50"
      twilioWebhookUrl              = "https://sms-opt-in.circleklift.com/sms/twilio-webhook"
      verificationEnabled           = "true"
      webhookUrl                    = "https://sms-opt-in.circleklift.com/sms/webhook"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-outbound-campaign-sms"
  handler                        = "com.liftck.smsoptin.lambda.OutboundSmsSqsHandler::handleRequest"
  memory_size                    = "2048"
  package_type                   = "Zip"
  reserved_concurrent_executions = "25"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-sms-opt-in-prod-outbound-campaign-sms"
  runtime                        = "java8"
  source_code_hash               = "oiDaU0DKFqXg7POtUTAWIy2ZQsHvSIxSgzApZyBgPtc="
  timeout                        = "15"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-outbound-sms" {
  architectures = ["x86_64"]
  description   = "Triggered from SQS queue, sends outbound SMS messages"

  environment {
    variables = {
      DEBUG                         = "true"
      ageVerifyApiKey               = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      ageVerifyUrl                  = "https://age-verification.circleklift.com/api/verify"
      apiKeys                       = "xt28skau449whxbp83jfy5ekqush,0a8104fb-2fec-411a-bddb-4865e9b27dc7,liftverifcode-g8f9m6bef85q86cacbf53x13a9,ngrp-kw72tpsvr37jq2x95gtwpdgt6d,bW9iaXZpdHlzbXM6Z3VqUWJlVzZwcjN4QXpjdjVHekM="
      canSendSms                    = "true"
      dynamoTable                   = "sms-opt-in-prod"
      maxFailedMessageBeforeInvalid = "3"
      maxSqsRetryCount              = "3"
      mobivityAuthPassword          = "!k46vjbhtz83"
      mobivityAuthUsername          = "RP253279API"
      mobivityTargetId              = "4318532"
      mobivityUrl                   = "https://mobivityapihandler.appspot.com/api/v3"
      shortCode                     = "253279"
      smsProvider                   = "mobivity"
      sqsOutBoundQueueUrl           = "https://sqs.us-east-1.amazonaws.com/799611636099/sms-opt-in-prod-outbound-sms"
      twilioAccountSid              = "AC2e48e7b6f0bd81609cadabfe9033f930"
      twilioAuthToken               = "f632e93a92ac8c5eb1291fd3b9ff6d28"
      twilioMessagingServiceSid     = "MGdb7793acb6507a6353933cb2bc2c6a50"
      twilioWebhookUrl              = "https://sms-opt-in.circleklift.com/sms/twilio-webhook"
      verificationEnabled           = "true"
      webhookUrl                    = "https://sms-opt-in.circleklift.com/sms/webhook"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-outbound-sms"
  handler                        = "com.liftck.smsoptin.lambda.OutboundSmsSqsHandler::handleRequest"
  memory_size                    = "2048"
  package_type                   = "Zip"
  reserved_concurrent_executions = "300"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-sms-opt-in-prod-outbound-sms"
  runtime                        = "java8"
  source_code_hash               = "oiDaU0DKFqXg7POtUTAWIy2ZQsHvSIxSgzApZyBgPtc="
  timeout                        = "30"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-pending-msg-cron" {
  architectures = ["x86_64"]
  description   = "Triggered from Cloud Watch Cron, update pending out messages to sending status"

  environment {
    variables = {
      DEBUG           = "true"
      DYNAMO_TABLE    = "sms-opt-in-prod"
      ageVerifyApiKey = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      ageVerifyUrl    = "https://age-verification.circleklift.com/api/verify"
      smsProvider     = "mobivity"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-pending-msg-cron"
  handler                        = "com.liftck.smsoptin.lambda.PendingMessagesCron::handleRequest"
  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "1"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-sms-opt-in-prod-pending-msg-cron"
  runtime                        = "java8"
  source_code_hash               = "oiDaU0DKFqXg7POtUTAWIy2ZQsHvSIxSgzApZyBgPtc="
  timeout                        = "900"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--sms-opt-in-prod-sms-api" {
  architectures = ["x86_64"]
  description   = "SMS Opt-in Api"

  environment {
    variables = {
      DEBUG                     = "true"
      ageVerifyApiKey           = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      ageVerifyUrl              = "https://age-verification.circleklift.com/api/customers"
      apiKeys                   = "xt28skau449whxbp83jfy5ekqush,0a8104fb-2fec-411a-bddb-4865e9b27dc7,liftverifcode-g8f9m6bef85q86cacbf53x13a9,ngrp-kw72tpsvr37jq2x95gtwpdgt6d,bW9iaXZpdHlzbXM6Z3VqUWJlVzZwcjN4QXpjdjVHekM=,ngrp_9zk2iflapd83bv"
      dynamoTable               = "sms-opt-in-prod"
      mobivityAuthPassword      = "!k46vjbhtz83"
      mobivityAuthUsername      = "RP253279API"
      mobivityTargetId          = "4318532"
      mobivityUrl               = "https://mobivityapihandler.appspot.com/api/v3"
      shortCode                 = "253279"
      smsProvider               = "mobivity"
      twilioAccountSid          = "AC2e48e7b6f0bd81609cadabfe9033f930"
      twilioAuthToken           = "f632e93a92ac8c5eb1291fd3b9ff6d28"
      twilioMessagingServiceSid = "MGdb7793acb6507a6353933cb2bc2c6a50"
      twilioWebhookUrl          = "https://sms-opt-in.circleklift.com/sms/twilio-webhook"
      webhookUrl                = "https://sms-opt-in.circleklift.com/sms/webhook"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "sms-opt-in-prod-sms-api"
  handler                        = "com.liftck.smsoptin.lambda.SmsOptInLambdaHandler::handleRequest"
  memory_size                    = "768"
  package_type                   = "Zip"
  reserved_concurrent_executions = "100"
  role                           = "arn:aws:iam::799611636099:role/lambda-role-sms-opt-in-prod-sms-api"
  runtime                        = "java8"
  source_code_hash               = "oiDaU0DKFqXg7POtUTAWIy2ZQsHvSIxSgzApZyBgPtc="
  timeout                        = "180"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-0523b69f53aa30d0e"]
    subnet_ids         = ["subnet-017cb385e5acdbec2", "subnet-0f592478c6198fa9e"]
  }
}

resource "aws_lambda_function" "tfer--url-shortener-lambda" {
  architectures = ["x86_64"]
  description   = "URL Shortener Lambda"

  environment {
    variables = {
      API_KEYS = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f"
      DEBUG    = "true"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "url-shortener-lambda"
  handler                        = "com.liftck.shortener.LambdaHandler::handleRequest"
  memory_size                    = "2048"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/url-shortener-stack-LambdaRole-1I1JN7LNI1Q4D"
  runtime                        = "java8"
  source_code_hash               = "T25yyYmppsd3SiPueF6UZunDUc2OLPY9TkTZeniHvlk="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "15"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--verification-codes-lambda" {
  architectures = ["x86_64"]
  description   = "Verification Code Service Api"

  environment {
    variables = {
      API_KEYS    = "23e6bd75-1a64-4fa4-a9d1-c6793a7b650f,ngrp_9zk2iflapd83bv"
      SMS_API_KEY = "liftverifcode-g8f9m6bef85q86cacbf53x13a9"
      SMS_URI     = "https://sms-opt-in.circleklift.com/sms/manual-send"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "verification-codes-lambda"
  handler                        = "com.liftck.verificationcode.LambdaHandler::handleRequest"
  memory_size                    = "1024"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::799611636099:role/verification-codes-stack-LambdaRole-UP7587DAUKVE"
  runtime                        = "java8"
  source_code_hash               = "UUE6oElR2tIyi/Cl+XaYDvrW0Gl046YQtAPZ2VfDzn0="

  tags = {
    "lambda:createdBy" = "SAM"
  }

  tags_all = {
    "lambda:createdBy" = "SAM"
  }

  timeout = "15"

  tracing_config {
    mode = "PassThrough"
  }
}
