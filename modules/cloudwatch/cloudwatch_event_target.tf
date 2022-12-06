resource "aws_cloudwatch_event_target" "tfer--TEMP-rocket-etl-fuel-cpns-reindex-002F-Iddc750017-8739-4bc1-9346-d308a598a629" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:rocket-etl-lambda"
  input     = "{\n  \"datasources\": {\n    \"lift\": \"$${pstore:///rocket-etl/datasource/lift}\"\n  },\n  \"vars\": {\n  },\n  \"jobs\": [\n    {\n      \"job\": \"run-etl\",\n      \"datasource\": \"lift\",\n      \"sql\": \"insert into IndexLog (tenantId, entityId, entityType, entityIndex, triggerType, error) \\nselect 1, id, 'ads', null, 'update', null\\nfrom Ad\\nwhere lower(name) like lower('internal Holiday Fuel Cpns%')\\n    and published;\\ninsert into Log (tenantId, userId, body, collectionKey) values (1, 1, '', 'ads');\"\n    }\n  ]\n}"
  rule      = "TEMP-rocket-etl-fuel-cpns-reindex"
  target_id = "Iddc750017-8739-4bc1-9346-d308a598a629"
}

resource "aws_cloudwatch_event_target" "tfer--alarm-scheduler-every-minute-002F-alarm-scheduler" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:prod-scheduler"
  rule      = "alarm-scheduler-every-minute"
  target_id = "alarm-scheduler"
}

resource "aws_cloudwatch_event_target" "tfer--awscodestarnotifications-rule-002F-codestar-notifications-events-target" {
  arn       = "arn:aws:codestar-notifications:us-east-1:::"
  rule      = "awscodestarnotifications-rule"
  target_id = "codestar-notifications-events-target"
}

resource "aws_cloudwatch_event_target" "tfer--clear-tunnel-connection-sql-runner-cron-event-002F-clear-tunnel-connection-sql-runner-cron-event-target" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:clear-tunnel-connection-sqlrunnercron"
  rule      = "clear-tunnel-connection-sql-runner-cron-event"
  target_id = "clear-tunnel-connection-sql-runner-cron-event-target"
}

resource "aws_cloudwatch_event_target" "tfer--indexer-stack-liftckindexerindexerlambda3-XGDSJGCC7USR-002F-liftckindexerindexerlambda3LambdaTarget" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:indexer-lambda"
  rule      = "indexer-stack-liftckindexerindexerlambda3-XGDSJGCC7USR"
  target_id = "liftckindexerindexerlambda3LambdaTarget"
}

resource "aws_cloudwatch_event_target" "tfer--liftck-cron-activelyscheduled-daily-update-event-002F-UpdateActivelyScheduledLambdaDailyCronLambdaTarget" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:liftck-cron-activelyscheduled-lambda"
  rule      = "liftck-cron-activelyscheduled-daily-update-event"
  target_id = "UpdateActivelyScheduledLambdaDailyCronLambdaTarget"
}

resource "aws_cloudwatch_event_target" "tfer--liftck-cron-masterdatafile-daily-update-event-002F-UpdateMasterDataFileLambdaDailyCronLambdaTarget" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:liftck-cron-masterdatafile-lambda"
  rule      = "liftck-cron-masterdatafile-daily-update-event"
  target_id = "UpdateMasterDataFileLambdaDailyCronLambdaTarget"
}

resource "aws_cloudwatch_event_target" "tfer--liftck-cron-onpromoreindex-daily-update-event-002F-UpdateOnPromoReindexLambdaDailyCronLambdaTarget" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:liftck-cron-onpromoreindex-lambda"
  rule      = "liftck-cron-onpromoreindex-daily-update-event"
  target_id = "UpdateOnPromoReindexLambdaDailyCronLambdaTarget"
}

resource "aws_cloudwatch_event_target" "tfer--liftck-octanebuilder-prod-OctaneBuilderLambdaoctan-17FMH3ISWMLOC-002F-OctaneBuilderLambdaoctanelambda3LambdaTarget" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:liftck-octanebuilder-prod-octanebuilder-lambda"
  rule      = "liftck-octanebuilder-prod-OctaneBuilderLambdaoctan-17FMH3ISWMLOC"
  target_id = "OctaneBuilderLambdaoctanelambda3LambdaTarget"
}

resource "aws_cloudwatch_event_target" "tfer--liftck-octanebuilder-stac-OctaneBuilderLambdaoctan-QZ4DHUXRKQ2B-002F-OctaneBuilderLambdaoctanelambda3LambdaTarget" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:liftck-octanebuilder-octanebuilder-lambda"
  rule      = "liftck-octanebuilder-stac-OctaneBuilderLambdaoctan-QZ4DHUXRKQ2B"
  target_id = "OctaneBuilderLambdaoctanelambda3LambdaTarget"
}

resource "aws_cloudwatch_event_target" "tfer--lottery-image-every-10-mins-002F-megamillions" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:lottery-download-to-s3"
  input     = "{ \t\"config\": \"{ \\\"s3Bucket\\\": \\\"files.circleklift.com\\\", \\\"s3Path\\\": \\\"dynamic/illinoislottery/megamillions.jpg\\\", \\\"url\\\": \\\"https://screenshot.circlekliftdev.com/handler?url=https://s3.amazonaws.com/static-pages.circleklift.com/illinoislottery/megamillions.html\u0026imageType=jpeg\u0026quality=100\u0026fullPage=true\u0026width=1366\\\" }\" \t}"
  rule      = "lottery-image-every-10-mins"
  target_id = "megamillions"
}

resource "aws_cloudwatch_event_target" "tfer--lottery-image-every-10-mins-002F-megamillions-travel" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:lottery-download-to-s3"
  input     = "{ \t\"config\": \"{ \\\"s3Bucket\\\": \\\"files.circleklift.com\\\", \\\"s3Path\\\": \\\"dynamic/illinoislottery/megamillions_travel.jpg\\\", \\\"url\\\": \\\"https://screenshot.circlekliftdev.com/handler?url=https://s3.amazonaws.com/static-pages.circleklift.com/illinoislottery/megamillions_travel.html\u0026imageType=jpeg\u0026quality=100\u0026fullPage=true\u0026width=1366\\\" }\" \t}"
  rule      = "lottery-image-every-10-mins"
  target_id = "megamillions-travel"
}

resource "aws_cloudwatch_event_target" "tfer--lottery-image-every-10-mins-002F-powerball" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:lottery-download-to-s3"
  input     = "{ \t\"config\": \"{ \\\"s3Bucket\\\": \\\"files.circleklift.com\\\", \\\"s3Path\\\": \\\"dynamic/illinoislottery/powerball.jpg\\\", \\\"url\\\": \\\"https://screenshot.circlekliftdev.com/handler?url=https://s3.amazonaws.com/static-pages.circleklift.com/illinoislottery/powerball.html\u0026imageType=jpeg\u0026quality=100\u0026fullPage=true\u0026width=1366\\\" }\" \t}"
  rule      = "lottery-image-every-10-mins"
  target_id = "powerball"
}

resource "aws_cloudwatch_event_target" "tfer--lottery-image-every-10-mins-002F-powerball-leisure" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:lottery-download-to-s3"
  input     = "{ \t\"config\": \"{ \\\"s3Bucket\\\": \\\"files.circleklift.com\\\", \\\"s3Path\\\": \\\"dynamic/illinoislottery/powerball_leisure.jpg\\\", \\\"url\\\": \\\"https://screenshot.circlekliftdev.com/handler?url=https://s3.amazonaws.com/static-pages.circleklift.com/illinoislottery/powerball_leisure.html\u0026imageType=jpeg\u0026quality=100\u0026fullPage=true\u0026width=1366\\\" }\" \t}"
  rule      = "lottery-image-every-10-mins"
  target_id = "powerball-leisure"
}

resource "aws_cloudwatch_event_target" "tfer--nlb-alb-ip-updater-443-ScheduledRule-R8ATSTFV10W5-002F-TargetFunctionV1" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:nlb-alb-ip-updater-443-LambdaFunction-1Q8CJ9L7PQ00J"
  rule      = "nlb-alb-ip-updater-443-ScheduledRule-R8ATSTFV10W5"
  target_id = "TargetFunctionV1"
}

resource "aws_cloudwatch_event_target" "tfer--nlb-alb-ip-updater-80-ScheduledRule-12EBVNNNH2UU3-002F-TargetFunctionV1" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:nlb-alb-ip-updater-80-LambdaFunction-39D0JIX8NN4M"
  rule      = "nlb-alb-ip-updater-80-ScheduledRule-12EBVNNNH2UU3"
  target_id = "TargetFunctionV1"
}

resource "aws_cloudwatch_event_target" "tfer--power-bi-reports-prod-ad-query-cron-002F-power-bi-reports-prod-ad-query-cron-target" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:power-bi-reports-prod-ad-query"
  rule      = "power-bi-reports-prod-ad-query-cron"
  target_id = "power-bi-reports-prod-ad-query-cron-target"
}

resource "aws_cloudwatch_event_target" "tfer--power-bi-reports-prod-cashier-query-cron-002F-power-bi-reports-prod-cashier-query-cron-target" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:power-bi-reports-prod-cashier-query"
  rule      = "power-bi-reports-prod-cashier-query-cron"
  target_id = "power-bi-reports-prod-cashier-query-cron-target"
}

resource "aws_cloudwatch_event_target" "tfer--rocket-etl-batch-002F-Id5867539959106" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:rocket-etl-lambda"
  input     = "{ \"s3Bucket\": \"circlek-prod-etl\", \"s3Key\": \"config-prod/redshift-domain-data.json\" }"
  rule      = "rocket-etl-batch"
  target_id = "Id5867539959106"
}

resource "aws_cloudwatch_event_target" "tfer--rocket-etl-batch-aggregate-002F-Id6064466525891" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:rocket-etl-lambda"
  input     = "{ \"s3Bucket\": \"circlek-prod-etl\", \"s3Key\": \"config-prod/redshift-data-aggregator-batch.json\" }"
  rule      = "rocket-etl-batch-aggregate"
  target_id = "Id6064466525891"
}

resource "aws_cloudwatch_event_target" "tfer--rocket-etl-batch-dedup-002F-Id5877267528462" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:rocket-etl-lambda"
  input     = "{ \"s3Bucket\": \"circlek-prod-etl\", \"s3Key\": \"config-prod/redshift-data-deduplicator-batch.json\" }"
  rule      = "rocket-etl-batch-dedup"
  target_id = "Id5877267528462"
}

resource "aws_cloudwatch_event_target" "tfer--rocket-etl-mysql-data-002F-Id2989813961961" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:rocket-etl-lambda"
  input     = "{ \"s3Bucket\": \"circlek-prod-etl\", \"s3Key\": \"config-prod/lift-mysql-data.json\" }"
  rule      = "rocket-etl-mysql-data"
  target_id = "Id2989813961961"
}

resource "aws_cloudwatch_event_target" "tfer--rocket-etl-quarterlies-002F-Id296206416111" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:rocket-etl-lambda"
  input     = "{ \"s3Bucket\": \"circlek-prod-etl\", \"s3Key\": \"config-prod/quarterlies.json\" }"
  rule      = "rocket-etl-quarterlies"
  target_id = "Id296206416111"
}

resource "aws_cloudwatch_event_target" "tfer--row-copier-legacylocation-prod-row-copier-cron-event-002F-row-copier-legacylocation-prod-row-copier-cron-event-target" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:row-copier-legacylocation-prod-row-copier-cron"
  rule      = "row-copier-legacylocation-prod-row-copier-cron-event"
  target_id = "row-copier-legacylocation-prod-row-copier-cron-event-target"
}

resource "aws_cloudwatch_event_target" "tfer--row-copier-playerlegacy-prod-row-copier-cron-event-002F-row-copier-playerlegacy-prod-row-copier-cron-event-target" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:row-copier-playerlegacy-prod-row-copier-cron"
  rule      = "row-copier-playerlegacy-prod-row-copier-cron-event"
  target_id = "row-copier-playerlegacy-prod-row-copier-cron-event-target"
}

resource "aws_cloudwatch_event_target" "tfer--run-at-820am-utc-002F-d57c1c61-9c81-4fec-a22e-420ffe010a69" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:row-copier-players-prod-row-copier-cron"
  rule      = "run-at-820am-utc"
  target_id = "d57c1c61-9c81-4fec-a22e-420ffe010a69"
}

resource "aws_cloudwatch_event_target" "tfer--run-indexer-lambda-2-002F-Id10680239701496" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:indexer-lambda-2"
  rule      = "run-indexer-lambda-2"
  target_id = "Id10680239701496"
}

resource "aws_cloudwatch_event_target" "tfer--sms-opt-in-prod-campaign-schedule-cron-002F-c6e1a458-f7d0-44bd-bfca-a660f7414e92" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-campaign-schedule"
  rule      = "sms-opt-in-prod-campaign-schedule-cron"
  target_id = "c6e1a458-f7d0-44bd-bfca-a660f7414e92"
}

resource "aws_cloudwatch_event_target" "tfer--sms-opt-in-prod-follow-up-cron-cron-002F-sms-opt-in-prod-follow-up-cron-cron-target" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-follow-up-cron"
  rule      = "sms-opt-in-prod-follow-up-cron-cron"
  target_id = "sms-opt-in-prod-follow-up-cron-cron-target"
}

resource "aws_cloudwatch_event_target" "tfer--sms-opt-in-prod-pending-msg-cron-cron-002F-sms-opt-in-prod-pending-msg-cron-cron-target" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:sms-opt-in-prod-pending-msg-cron"
  rule      = "sms-opt-in-prod-pending-msg-cron-cron"
  target_id = "sms-opt-in-prod-pending-msg-cron-cron-target"
}

resource "aws_cloudwatch_event_target" "tfer--weekly-database-sync-002F-710625af-e896-4be4-a416-71d1e062d1a4" {
  arn       = "arn:aws:lambda:us-east-1:799611636099:function:prod-dev-database-sync"
  rule      = "weekly-database-sync"
  target_id = "710625af-e896-4be4-a416-71d1e062d1a4"
}
