resource "aws_cloudwatch_event_rule" "tfer--TEMP-rocket-etl-fuel-cpns-reindex" {
  description         = "TEMP: reindex fuel coupon ads (workaround for slow full reindexing of ads)"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "TEMP-rocket-etl-fuel-cpns-reindex"
  schedule_expression = "cron(0 9,6 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--alarm-scheduler-every-minute" {
  description         = "Runs the scheduler lambda every minute"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "alarm-scheduler-every-minute"
  schedule_expression = "cron(0/1 * * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--awscodestarnotifications-rule" {
  description    = "This rule is used to route CodeBuild, CodeCommit, CodeDeploy, CodePipeline, and other Code Suite notifications to CodeStar Notifications"
  event_bus_name = "default"
  event_pattern  = "{\"source\":[\"aws.codebuild\",\"aws.codecommit\",\"aws.codedeploy\",\"aws.codepipeline\"]}"
  is_enabled     = "true"
  name           = "awscodestarnotifications-rule"
}

resource "aws_cloudwatch_event_rule" "tfer--clear-tunnel-connection-sql-runner-cron-event" {
  description         = "Run the SqlRunnerCron Lambda 8:10am UTC"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "clear-tunnel-connection-sql-runner-cron-event"
  schedule_expression = "cron(10 8 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--indexer-stack-liftckindexerindexerlambda3-XGDSJGCC7USR" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "indexer-stack-liftckindexerindexerlambda3-XGDSJGCC7USR"
  schedule_expression = "rate(30 minutes)"
}

resource "aws_cloudwatch_event_rule" "tfer--liftck-cron-activelyscheduled-daily-update-event" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "liftck-cron-activelyscheduled-daily-update-event"
  schedule_expression = "cron(30 7 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--liftck-cron-masterdatafile-daily-update-event" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "liftck-cron-masterdatafile-daily-update-event"
  schedule_expression = "cron(*/2 * * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--liftck-cron-onpromoreindex-daily-update-event" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "liftck-cron-onpromoreindex-daily-update-event"
  schedule_expression = "cron(30 7 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--liftck-octanebuilder-prod-OctaneBuilderLambdaoctan-17FMH3ISWMLOC" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "liftck-octanebuilder-prod-OctaneBuilderLambdaoctan-17FMH3ISWMLOC"
  schedule_expression = "rate(10 minutes)"
}

resource "aws_cloudwatch_event_rule" "tfer--liftck-octanebuilder-stac-OctaneBuilderLambdaoctan-QZ4DHUXRKQ2B" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "liftck-octanebuilder-stac-OctaneBuilderLambdaoctan-QZ4DHUXRKQ2B"
  schedule_expression = "rate(10 minutes)"
}

resource "aws_cloudwatch_event_rule" "tfer--lottery-image-every-10-mins" {
  description         = "Every 10 minutes regen the illinois lottery image"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "lottery-image-every-10-mins"
  schedule_expression = "cron(4/10 * * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--nlb-alb-ip-updater-443-ScheduledRule-R8ATSTFV10W5" {
  description         = "ScheduledRule"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "nlb-alb-ip-updater-443-ScheduledRule-R8ATSTFV10W5"
  schedule_expression = "rate(1 minute)"
}

resource "aws_cloudwatch_event_rule" "tfer--nlb-alb-ip-updater-80-ScheduledRule-12EBVNNNH2UU3" {
  description         = "ScheduledRule"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "nlb-alb-ip-updater-80-ScheduledRule-12EBVNNNH2UU3"
  schedule_expression = "rate(1 minute)"
}

resource "aws_cloudwatch_event_rule" "tfer--power-bi-reports-prod-ad-query-cron" {
  description         = "Run the Advertisement Lambda daily at 4am"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "power-bi-reports-prod-ad-query-cron"
  schedule_expression = "cron(15 4 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--power-bi-reports-prod-cashier-query-cron" {
  description         = "Run the Advertisement Lambda daily at 4am"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "power-bi-reports-prod-cashier-query-cron"
  schedule_expression = "cron(15 4 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--rocket-etl-batch" {
  description         = "runs rocket etl from rds->redshift every day"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "rocket-etl-batch"
  schedule_expression = "cron(30 4 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--rocket-etl-batch-aggregate" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "rocket-etl-batch-aggregate"
  schedule_expression = "cron(30 6 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--rocket-etl-batch-dedup" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "rocket-etl-batch-dedup"
  schedule_expression = "cron(0 6 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--rocket-etl-etltotals" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "rocket-etl-etltotals"
  schedule_expression = "cron(30 5 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--rocket-etl-mysql-data" {
  description         = "runs rocket etl for mysql gen2 lift db"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "rocket-etl-mysql-data"
  schedule_expression = "cron(45 4 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--rocket-etl-quarterlies" {
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "rocket-etl-quarterlies"
  schedule_expression = "cron(45 6 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--row-copier-items-prod-row-copier-cron-event" {
  description         = "Run the RowCopierCron Lambda 8:10am UTC"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "row-copier-items-prod-row-copier-cron-event"
  schedule_expression = "cron(10 8 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--row-copier-legacylocation-prod-row-copier-cron-event" {
  description         = "Run the RowCopierCron Lambda 8:10am UTC"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "row-copier-legacylocation-prod-row-copier-cron-event"
  schedule_expression = "cron(10 8 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--row-copier-locations-prod-row-copier-cron-event" {
  description         = "Run the RowCopierCron Lambda 8:10am UTC"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "row-copier-locations-prod-row-copier-cron-event"
  schedule_expression = "cron(10 8 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--row-copier-playerlegacy-prod-row-copier-cron-event" {
  description         = "Run the RowCopierCron Lambda 8:10am UTC"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "row-copier-playerlegacy-prod-row-copier-cron-event"
  schedule_expression = "cron(10 8 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--run-at-820am-utc" {
  description         = "Run a 8:20am UTC"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "run-at-820am-utc"
  schedule_expression = "cron(20 8 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--run-indexer-lambda-2" {
  description         = "Run the indexer-lambda-2 every 30 minutes"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "run-indexer-lambda-2"
  schedule_expression = "rate(30 minutes)"
}

resource "aws_cloudwatch_event_rule" "tfer--sms-opt-in-prod-campaign-schedule-cron" {
  description         = "Run the SMS Opt-In CampaignSchedule Lambda every 15 mins - every day - 11am-6pm EST"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "sms-opt-in-prod-campaign-schedule-cron"
  schedule_expression = "cron(5/15 15-23 ? * * *)"
}

resource "aws_cloudwatch_event_rule" "tfer--sms-opt-in-prod-follow-up-cron-cron" {
  description         = "Run the SMS Opt-In FollowUpCron Lambda every 20 mins - 11am-9pm EST"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "sms-opt-in-prod-follow-up-cron-cron"
  schedule_expression = "cron(0/20 15-1 ? * * *)"
}

resource "aws_cloudwatch_event_rule" "tfer--sms-opt-in-prod-pending-msg-cron-cron" {
  description         = "Run the Pending Message Cron Lambda every 20 mins - 10am-10pm EST"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "sms-opt-in-prod-pending-msg-cron-cron"
  schedule_expression = "cron(15/20 14-2 ? * * *)"
}

resource "aws_cloudwatch_event_rule" "tfer--weekly-database-sync" {
  description         = "cron to trigger weekly database sync between prod and dev"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "weekly-database-sync"
  schedule_expression = "cron(0 6 ? * TUE *)"
}
