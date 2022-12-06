resource "aws_codepipeline_webhook" "tfer--arn-003A-aws-003A-codepipeline-003A-us-east-1-003A-799611636099-003A-webhook-003A-liftckcronpipeline--Source--RocketPartnersliftckcron--801850412" {
  authentication = "GITHUB_HMAC"

  authentication_configuration {
    secret_token = "1033802860182038743198592249538989264504288092705838388442762318697537908097222601252370888060"
  }

  filter {
    json_path    = "$.ref"
    match_equals = "refs/heads/{Branch}"
  }

  name            = "liftckcronpipeline--Source--RocketPartnersliftckcron--801850412"
  target_action   = "Source"
  target_pipeline = "liftck-cron-pipeline"
}

resource "aws_codepipeline_webhook" "tfer--arn-003A-aws-003A-codepipeline-003A-us-east-1-003A-799611636099-003A-webhook-003A-reportspipeline--App--RocketPartnersliftckgen2leg--1802673383" {
  authentication = "GITHUB_HMAC"

  authentication_configuration {
    secret_token = "40330146544103590426399424141611982953632337074527359700462439680783741436905552733576521841239693"
  }

  filter {
    json_path    = "$.ref"
    match_equals = "refs/heads/{Branch}"
  }

  name            = "reportspipeline--App--RocketPartnersliftckgen2leg--1802673383"
  target_action   = "App"
  target_pipeline = "reports-pipeline"
}
