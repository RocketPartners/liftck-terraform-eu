resource "aws_cloudwatch_metric_alarm" "tfer--DO-0020-NOT-0020-IGNORE-0020---0020-NO-0020-SMS-0020-OUT" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "No SMS OUT Prompts have gone out within a day"
  alarm_name          = "DO NOT IGNORE - NO SMS OUT"
  comparison_operator = "LessThanOrEqualToThreshold"
  datapoints_to_alarm = "14"

  dimensions = {
    DIRECTION    = "OUT"
    MESSAGE_TYPE = "PROMPT"
  }

  evaluation_periods = "24"
  metric_name        = "MESSAGES"
  namespace          = "SMS Service"
  period             = "3600"
  statistic          = "Sum"
  threshold          = "0"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--EC2-0020-Indexer-0020-CA-0020-DESC" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:lift-pagerduty"]
  alarm_description   = "The Canada descending EC2 Indexer is not receiving any logs. It likely shut down and needs to be restarted"
  alarm_name          = "EC2 Indexer CA DESC"
  comparison_operator = "LessThanOrEqualToThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    LogGroupName = "/ec2/indexer/ca-desc"
  }

  evaluation_periods = "1"
  metric_name        = "IncomingLogEvents"
  namespace          = "AWS/Logs"
  period             = "300"
  statistic          = "Average"
  threshold          = "0"
  treat_missing_data = "breaching"
}

resource "aws_cloudwatch_metric_alarm" "tfer--EC2-0020-Indexer-0020-CA-0020-NOTREINDEX" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:lift-pagerduty"]
  alarm_description   = "The Canada notreindex EC2 Indexer is not receiving any logs. It likely shut down and needs to be restarted"
  alarm_name          = "EC2 Indexer CA NOTREINDEX"
  comparison_operator = "LessThanOrEqualToThreshold"
  datapoints_to_alarm = "4"

  dimensions = {
    LogGroupName = "/ec2/indexer/ca-notreindex"
  }

  evaluation_periods = "4"
  metric_name        = "IncomingLogEvents"
  namespace          = "AWS/Logs"
  period             = "300"
  statistic          = "Average"
  threshold          = "0"
  treat_missing_data = "breaching"
}

resource "aws_cloudwatch_metric_alarm" "tfer--EC2-0020-Indexer-0020-IE-0020-DESC" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:lift-pagerduty"]
  alarm_description   = "The Ireland descending EC2 Indexer is not receiving any logs. It likely shut down and needs to be restarted"
  alarm_name          = "EC2 Indexer IE DESC"
  comparison_operator = "LessThanOrEqualToThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    LogGroupName = "/ec2/indexer/ie-desc"
  }

  evaluation_periods = "1"
  metric_name        = "IncomingLogEvents"
  namespace          = "AWS/Logs"
  period             = "300"
  statistic          = "Average"
  threshold          = "0"
  treat_missing_data = "breaching"
}

resource "aws_cloudwatch_metric_alarm" "tfer--EC2-0020-Indexer-0020-US-0020-DESC" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:lift-pagerduty"]
  alarm_description   = "The US descending EC2 Indexer is not receiving any logs. It likely shut down and needs to be restarted"
  alarm_name          = "EC2 Indexer US DESC"
  comparison_operator = "LessThanOrEqualToThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    LogGroupName = "/ec2/indexer/us-desc"
  }

  evaluation_periods = "1"
  metric_name        = "IncomingLogEvents"
  namespace          = "AWS/Logs"
  period             = "300"
  statistic          = "Average"
  threshold          = "0"
  treat_missing_data = "breaching"
}

resource "aws_cloudwatch_metric_alarm" "tfer--EC2-0020-Indexer-0020-US-0020-NOTREINDEX" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:lift-pagerduty"]
  alarm_description   = "The US notreindex EC2 Indexer is not receiving any logs. It likely shut down and needs to be restarted"
  alarm_name          = "EC2 Indexer US NOTREINDEX"
  comparison_operator = "LessThanOrEqualToThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    LogGroupName = "/ec2/indexer/us-notreindex"
  }

  evaluation_periods = "1"
  metric_name        = "IncomingLogEvents"
  namespace          = "AWS/Logs"
  period             = "300"
  statistic          = "Average"
  threshold          = "0"
  treat_missing_data = "breaching"
}

resource "aws_cloudwatch_metric_alarm" "tfer--ECS-0020---0020-Player-0020-Api-0020-Task-0020-Count-0020-is-0020-above-0020-25" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "ECS - Hight Player Api Task Count  - More than 25 task are running"
  alarm_name          = "ECS - Player Api Task Count is above 25"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    ClusterName = "player"
    ServiceName = "api"
  }

  evaluation_periods = "1"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "SampleCount"
  threshold          = "25"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--Gen2-0020-ALB-0020-has-0020-zero-0020-requests" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT IGNORE - Why hasn't the ALP received any requests? "
  alarm_name          = "Gen2 ALB has zero requests"
  comparison_operator = "LessThanOrEqualToThreshold"
  datapoints_to_alarm = "2"

  dimensions = {
    LoadBalancer = "app/player/64deb6688dcdede5"
  }

  evaluation_periods = "3"
  metric_name        = "RequestCount"
  namespace          = "AWS/ApplicationELB"
  period             = "300"
  statistic          = "Sum"
  threshold          = "10"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--Gen2-0020-Prod-0020-Database-0020-Max-0020-CPU-0020-over-0020-90-0025--0020-for-0020-10-0020-minutes" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT IGNORE - The production database is under extremely high load"
  alarm_name          = "Gen2 Prod Database Max CPU over 90% for 10 minutes"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "2"

  dimensions = {
    DBInstanceIdentifier = "cirk-prod"
  }

  evaluation_periods = "2"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/RDS"
  period             = "300"
  statistic          = "Maximum"
  threshold          = "90"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--Gen2-0020-Prod-0020-Elasticsearch-0020--0020---0020-CPU-0020-Utilization-0020-is-0020-over-0020-80-0025-" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "Gen2 Prod Elasticsearch  - CPU Utilization is over 80%"
  alarm_name          = "Gen2 Prod Elasticsearch  - CPU Utilization is over 80%"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    ClientId   = "799611636099"
    DomainName = "gen2"
  }

  evaluation_periods = "1"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ES"
  period             = "300"
  statistic          = "Average"
  threshold          = "80"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--Loyalty_Service-awsroute53-6cd84ddb-44f5-4621-ad73-8dd4f91fb11b-Low-HealthCheckStatus" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_name          = "Loyalty_Service-awsroute53-6cd84ddb-44f5-4621-ad73-8dd4f91fb11b-Low-HealthCheckStatus"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    HealthCheckId = "6cd84ddb-44f5-4621-ad73-8dd4f91fb11b"
  }

  evaluation_periods = "1"
  metric_name        = "HealthCheckStatus"
  namespace          = "AWS/Route53"
  period             = "60"
  statistic          = "Minimum"
  threshold          = "1"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--Player-0020-ALB-0020---0020-Target-0020-Response-0020-Time-0020-above-0020-2-0020-seconds" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:3a630b65-3254-49ec-8950-995bb1c4ac82:resource/ecs/service/player/api:policyName/response-time-scaling", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_name          = "Player ALB - Target Response Time above 2 seconds"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    LoadBalancer = "app/player/64deb6688dcdede5"
  }

  evaluation_periods = "1"
  metric_name        = "TargetResponseTime"
  namespace          = "AWS/ApplicationELB"
  period             = "60"
  statistic          = "Average"
  threshold          = "6"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--Player_API-awsroute53-dadbff03-6e64-443a-a7dd-247754d9cf14-Low-HealthCheckStatus" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_name          = "Player_API-awsroute53-dadbff03-6e64-443a-a7dd-247754d9cf14-Low-HealthCheckStatus"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    HealthCheckId = "dadbff03-6e64-443a-a7dd-247754d9cf14"
  }

  evaluation_periods = "1"
  metric_name        = "HealthCheckStatus"
  namespace          = "AWS/Route53"
  period             = "60"
  statistic          = "Minimum"
  threshold          = "1"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--Portal_API-awsroute53-fee0a734-ac53-4c87-b39f-6cdf7a203cf9-Low-HealthCheckStatus" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_name          = "Portal_API-awsroute53-fee0a734-ac53-4c87-b39f-6cdf7a203cf9-Low-HealthCheckStatus"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    HealthCheckId = "fee0a734-ac53-4c87-b39f-6cdf7a203cf9"
  }

  evaluation_periods = "1"
  metric_name        = "HealthCheckStatus"
  namespace          = "AWS/Route53"
  period             = "60"
  statistic          = "Minimum"
  threshold          = "1"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--Rocket-0020-ETL-0020-Lambda-0020-Errors" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "Error count is greater than zero.  This is real, DO NOT IGNORE"
  alarm_name          = "Rocket ETL Lambda Errors"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    FunctionName = "rocket-etl-lambda"
  }

  evaluation_periods = "1"
  metric_name        = "Errors"
  namespace          = "AWS/Lambda"
  period             = "300"
  statistic          = "Sum"
  threshold          = "0"
  treat_missing_data = "ignore"
}

resource "aws_cloudwatch_metric_alarm" "tfer--Rocket-0020-ETL-0020-Lambda-0020-Max-0020-Duration-0020-Alarm" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "Max duration has exceeded 10 minutes for the Rocket ETL Lambda. The max timeout for this lambda is 15 minutes.  This is just a warning, but it could lead to problem if the duration continues to increase. DO NOT IGNORE"
  alarm_name          = "Rocket ETL Lambda Max Duration Alarm"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    FunctionName = "rocket-etl-lambda"
  }

  evaluation_periods = "1"
  metric_name        = "Duration"
  namespace          = "AWS/Lambda"
  period             = "900"
  statistic          = "Maximum"
  threshold          = "600000"
  treat_missing_data = "ignore"
}

resource "aws_cloudwatch_metric_alarm" "tfer--SMS-0020-Twilio-0020-Webhook-0020-Alarm" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "Alarms when the SMS Twilio Webhook hasn't received any requests in a while "
  alarm_name          = "SMS Twilio Webhook Alarm"
  comparison_operator = "LessThanOrEqualToThreshold"
  datapoints_to_alarm = "5"

  dimensions = {
    API = "webhook"
  }

  evaluation_periods = "8"
  metric_name        = "REQUESTS"
  namespace          = "SMS Service"
  period             = "3600"
  statistic          = "Sum"
  threshold          = "0"
  treat_missing_data = "breaching"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-api-AlarmHigh-cd3946a9-c8e8-47d0-ba53-f24893c192d3" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:3a630b65-3254-49ec-8950-995bb1c4ac82:resource/ecs/service/player/api:policyName/cpu-scaling:createdBy/5af86224-f5a9-4c25-8db5-e0f5d5e9c0f8", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:3a630b65-3254-49ec-8950-995bb1c4ac82:resource/ecs/service/player/api:policyName/cpu-scaling:createdBy/5af86224-f5a9-4c25-8db5-e0f5d5e9c0f8."
  alarm_name          = "TargetTracking-service/player/api-AlarmHigh-cd3946a9-c8e8-47d0-ba53-f24893c192d3"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    ClusterName = "player"
    ServiceName = "api"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "60"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-api-AlarmLow-e8717f18-e476-4721-b1a1-fa33aefdfa56" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:3a630b65-3254-49ec-8950-995bb1c4ac82:resource/ecs/service/player/api:policyName/cpu-scaling:createdBy/5af86224-f5a9-4c25-8db5-e0f5d5e9c0f8"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:3a630b65-3254-49ec-8950-995bb1c4ac82:resource/ecs/service/player/api:policyName/cpu-scaling:createdBy/5af86224-f5a9-4c25-8db5-e0f5d5e9c0f8."
  alarm_name          = "TargetTracking-service/player/api-AlarmLow-e8717f18-e476-4721-b1a1-fa33aefdfa56"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    ClusterName = "player"
    ServiceName = "api"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "54"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-event-api-AlarmHigh-26f1fea9-fc8d-4c65-a337-b45cec4448ba" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:940cb2dc-caaf-41ec-9775-ab8a4185bbe7:resource/ecs/service/player/event-api:policyName/AverageCPU:createdBy/6f463f6f-adbc-474f-a7c4-312fd24ba91b", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:940cb2dc-caaf-41ec-9775-ab8a4185bbe7:resource/ecs/service/player/event-api:policyName/AverageCPU:createdBy/6f463f6f-adbc-474f-a7c4-312fd24ba91b."
  alarm_name          = "TargetTracking-service/player/event-api-AlarmHigh-26f1fea9-fc8d-4c65-a337-b45cec4448ba"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    ClusterName = "player"
    ServiceName = "event-api"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "75"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-event-api-AlarmHigh-d7d23365-91e6-4201-92fa-4f306477f949" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:940cb2dc-caaf-41ec-9775-ab8a4185bbe7:resource/ecs/service/player/event-api:policyName/RequestsPerTarget:createdBy/2b32f744-ce5f-4b84-a35e-c76ddd915273", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:940cb2dc-caaf-41ec-9775-ab8a4185bbe7:resource/ecs/service/player/event-api:policyName/RequestsPerTarget:createdBy/2b32f744-ce5f-4b84-a35e-c76ddd915273."
  alarm_name          = "TargetTracking-service/player/event-api-AlarmHigh-d7d23365-91e6-4201-92fa-4f306477f949"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    LoadBalancer = "app/player/64deb6688dcdede5"
    TargetGroup  = "targetgroup/player-event-api/9b2c3405837b5302"
  }

  evaluation_periods = "3"
  metric_name        = "RequestCountPerTarget"
  namespace          = "AWS/ApplicationELB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "6000"
  treat_missing_data = "missing"
  unit               = "None"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-event-api-AlarmLow-49e95583-bcd4-4fb2-a66c-afab6defe63d" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:940cb2dc-caaf-41ec-9775-ab8a4185bbe7:resource/ecs/service/player/event-api:policyName/AverageCPU:createdBy/6f463f6f-adbc-474f-a7c4-312fd24ba91b"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:940cb2dc-caaf-41ec-9775-ab8a4185bbe7:resource/ecs/service/player/event-api:policyName/AverageCPU:createdBy/6f463f6f-adbc-474f-a7c4-312fd24ba91b."
  alarm_name          = "TargetTracking-service/player/event-api-AlarmLow-49e95583-bcd4-4fb2-a66c-afab6defe63d"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    ClusterName = "player"
    ServiceName = "event-api"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "54"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-event-api-AlarmLow-732f135c-bebb-4df9-a578-aef0f3a644c6" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:940cb2dc-caaf-41ec-9775-ab8a4185bbe7:resource/ecs/service/player/event-api:policyName/RequestsPerTarget:createdBy/2b32f744-ce5f-4b84-a35e-c76ddd915273"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:940cb2dc-caaf-41ec-9775-ab8a4185bbe7:resource/ecs/service/player/event-api:policyName/RequestsPerTarget:createdBy/2b32f744-ce5f-4b84-a35e-c76ddd915273."
  alarm_name          = "TargetTracking-service/player/event-api-AlarmLow-732f135c-bebb-4df9-a578-aef0f3a644c6"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    LoadBalancer = "app/player/64deb6688dcdede5"
    TargetGroup  = "targetgroup/player-event-api/9b2c3405837b5302"
  }

  evaluation_periods = "15"
  metric_name        = "RequestCountPerTarget"
  namespace          = "AWS/ApplicationELB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "5400"
  treat_missing_data = "missing"
  unit               = "None"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-file-api-AlarmHigh-9981b92d-1b39-4ce2-813e-8f1eec0a69a6" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:397514b2-7017-480e-80e4-84ecc187ead1:resource/ecs/service/player/file-api:policyName/AvgCpuScaling:createdBy/2fd97847-353b-456f-ad43-5b694b0f4cf3", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:397514b2-7017-480e-80e4-84ecc187ead1:resource/ecs/service/player/file-api:policyName/AvgCpuScaling:createdBy/2fd97847-353b-456f-ad43-5b694b0f4cf3."
  alarm_name          = "TargetTracking-service/player/file-api-AlarmHigh-9981b92d-1b39-4ce2-813e-8f1eec0a69a6"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    ClusterName = "player"
    ServiceName = "file-api"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "60"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-file-api-AlarmHigh-cadf7c8a-fd65-40ad-a57e-39beb750a799" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:397514b2-7017-480e-80e4-84ecc187ead1:resource/ecs/service/player/file-api:policyName/RequestPerTarget:createdBy/302fc274-342e-409a-a289-01adf96dfa10", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:397514b2-7017-480e-80e4-84ecc187ead1:resource/ecs/service/player/file-api:policyName/RequestPerTarget:createdBy/302fc274-342e-409a-a289-01adf96dfa10."
  alarm_name          = "TargetTracking-service/player/file-api-AlarmHigh-cadf7c8a-fd65-40ad-a57e-39beb750a799"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    LoadBalancer = "app/player/64deb6688dcdede5"
    TargetGroup  = "targetgroup/player-file-api/ee4b23723bdd5921"
  }

  evaluation_periods = "3"
  metric_name        = "RequestCountPerTarget"
  namespace          = "AWS/ApplicationELB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "1500"
  treat_missing_data = "missing"
  unit               = "None"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-file-api-AlarmLow-2b18db18-b34c-4bcc-a662-44f912c0e7b4" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:397514b2-7017-480e-80e4-84ecc187ead1:resource/ecs/service/player/file-api:policyName/AvgCpuScaling:createdBy/2fd97847-353b-456f-ad43-5b694b0f4cf3"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:397514b2-7017-480e-80e4-84ecc187ead1:resource/ecs/service/player/file-api:policyName/AvgCpuScaling:createdBy/2fd97847-353b-456f-ad43-5b694b0f4cf3."
  alarm_name          = "TargetTracking-service/player/file-api-AlarmLow-2b18db18-b34c-4bcc-a662-44f912c0e7b4"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    ClusterName = "player"
    ServiceName = "file-api"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "54"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-file-api-AlarmLow-955c9f7a-22ac-4fce-82d9-e7beaa6b88f1" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:397514b2-7017-480e-80e4-84ecc187ead1:resource/ecs/service/player/file-api:policyName/RequestPerTarget:createdBy/302fc274-342e-409a-a289-01adf96dfa10"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:397514b2-7017-480e-80e4-84ecc187ead1:resource/ecs/service/player/file-api:policyName/RequestPerTarget:createdBy/302fc274-342e-409a-a289-01adf96dfa10."
  alarm_name          = "TargetTracking-service/player/file-api-AlarmLow-955c9f7a-22ac-4fce-82d9-e7beaa6b88f1"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    LoadBalancer = "app/player/64deb6688dcdede5"
    TargetGroup  = "targetgroup/player-file-api/ee4b23723bdd5921"
  }

  evaluation_periods = "15"
  metric_name        = "RequestCountPerTarget"
  namespace          = "AWS/ApplicationELB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "1350"
  treat_missing_data = "missing"
  unit               = "None"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-lift-okta-integration-AlarmHigh-2cdf26e5-f5c2-4c71-9946-ad80ad1e314c" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:29aed533-680e-49e6-8562-05e3640d85c2:resource/ecs/service/player/lift-okta-integration:policyName/okta-api-integration-cpuscaling:createdBy/7110ed73-73d4-4c51-96ab-1d2bd6ea22a1", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:29aed533-680e-49e6-8562-05e3640d85c2:resource/ecs/service/player/lift-okta-integration:policyName/okta-api-integration-cpuscaling:createdBy/7110ed73-73d4-4c51-96ab-1d2bd6ea22a1."
  alarm_name          = "TargetTracking-service/player/lift-okta-integration-AlarmHigh-2cdf26e5-f5c2-4c71-9946-ad80ad1e314c"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    ClusterName = "player"
    ServiceName = "lift-okta-integration"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "60"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-lift-okta-integration-AlarmLow-d6a8e883-eeba-4261-966b-1e1090b69454" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:29aed533-680e-49e6-8562-05e3640d85c2:resource/ecs/service/player/lift-okta-integration:policyName/okta-api-integration-cpuscaling:createdBy/7110ed73-73d4-4c51-96ab-1d2bd6ea22a1"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:29aed533-680e-49e6-8562-05e3640d85c2:resource/ecs/service/player/lift-okta-integration:policyName/okta-api-integration-cpuscaling:createdBy/7110ed73-73d4-4c51-96ab-1d2bd6ea22a1."
  alarm_name          = "TargetTracking-service/player/lift-okta-integration-AlarmLow-d6a8e883-eeba-4261-966b-1e1090b69454"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    ClusterName = "player"
    ServiceName = "lift-okta-integration"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "54"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-loyalty-AlarmHigh-0da3527d-f4e8-4525-ac82-7dc0c70393ac" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:20875421-9ea5-4b7c-afc6-d35dc4f24599:resource/ecs/service/player/loyalty:policyName/CPU-Scaling"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:20875421-9ea5-4b7c-afc6-d35dc4f24599:resource/ecs/service/player/loyalty:policyName/CPU-Scaling."
  alarm_name          = "TargetTracking-service/player/loyalty-AlarmHigh-0da3527d-f4e8-4525-ac82-7dc0c70393ac"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterName = "player"
    ServiceName = "loyalty"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "70"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-loyalty-AlarmLow-551a62f0-cdb5-49f7-a70e-e3f44f3c9364" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:20875421-9ea5-4b7c-afc6-d35dc4f24599:resource/ecs/service/player/loyalty:policyName/CPU-Scaling"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:20875421-9ea5-4b7c-afc6-d35dc4f24599:resource/ecs/service/player/loyalty:policyName/CPU-Scaling."
  alarm_name          = "TargetTracking-service/player/loyalty-AlarmLow-551a62f0-cdb5-49f7-a70e-e3f44f3c9364"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterName = "player"
    ServiceName = "loyalty"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "63"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-ngrp-proxy-AlarmHigh-68425fbe-7d19-47b1-b03e-07386f131698" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:28b6d288-8b19-43b2-912c-a28bd469b251:resource/ecs/service/player/ngrp-proxy:policyName/ngrp-proxy-cpu-scaling:createdBy/bf6c2207-b65c-4220-8c23-2f5d9cbcffa6", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:28b6d288-8b19-43b2-912c-a28bd469b251:resource/ecs/service/player/ngrp-proxy:policyName/ngrp-proxy-cpu-scaling:createdBy/bf6c2207-b65c-4220-8c23-2f5d9cbcffa6."
  alarm_name          = "TargetTracking-service/player/ngrp-proxy-AlarmHigh-68425fbe-7d19-47b1-b03e-07386f131698"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    ClusterName = "player"
    ServiceName = "ngrp-proxy"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "65"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-ngrp-proxy-AlarmLow-cbd93527-f37a-4abf-9838-b66adefcaf70" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:28b6d288-8b19-43b2-912c-a28bd469b251:resource/ecs/service/player/ngrp-proxy:policyName/ngrp-proxy-cpu-scaling:createdBy/bf6c2207-b65c-4220-8c23-2f5d9cbcffa6"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:28b6d288-8b19-43b2-912c-a28bd469b251:resource/ecs/service/player/ngrp-proxy:policyName/ngrp-proxy-cpu-scaling:createdBy/bf6c2207-b65c-4220-8c23-2f5d9cbcffa6."
  alarm_name          = "TargetTracking-service/player/ngrp-proxy-AlarmLow-cbd93527-f37a-4abf-9838-b66adefcaf70"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    ClusterName = "player"
    ServiceName = "ngrp-proxy"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "58.5"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-punchcard-AlarmHigh-8bf0faa4-d5bf-49c8-836f-28c0543ec0cf" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:dda72304-96ed-41e0-9275-9f698cf8c1fa:resource/ecs/service/player/punchcard:policyName/RequestPerTargetScaling:createdBy/56eb3b00-8b83-4e7b-8e8c-2fa5b491bb19", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:dda72304-96ed-41e0-9275-9f698cf8c1fa:resource/ecs/service/player/punchcard:policyName/RequestPerTargetScaling:createdBy/56eb3b00-8b83-4e7b-8e8c-2fa5b491bb19."
  alarm_name          = "TargetTracking-service/player/punchcard-AlarmHigh-8bf0faa4-d5bf-49c8-836f-28c0543ec0cf"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    LoadBalancer = "app/player/64deb6688dcdede5"
    TargetGroup  = "targetgroup/player-punchcard/47775e316b3363bf"
  }

  evaluation_periods = "3"
  metric_name        = "RequestCountPerTarget"
  namespace          = "AWS/ApplicationELB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "300"
  treat_missing_data = "missing"
  unit               = "None"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-player-002F-punchcard-AlarmLow-1c4d644e-c67c-401a-b903-735b6b336380" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:dda72304-96ed-41e0-9275-9f698cf8c1fa:resource/ecs/service/player/punchcard:policyName/RequestPerTargetScaling:createdBy/56eb3b00-8b83-4e7b-8e8c-2fa5b491bb19"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:dda72304-96ed-41e0-9275-9f698cf8c1fa:resource/ecs/service/player/punchcard:policyName/RequestPerTargetScaling:createdBy/56eb3b00-8b83-4e7b-8e8c-2fa5b491bb19."
  alarm_name          = "TargetTracking-service/player/punchcard-AlarmLow-1c4d644e-c67c-401a-b903-735b6b336380"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    LoadBalancer = "app/player/64deb6688dcdede5"
    TargetGroup  = "targetgroup/player-punchcard/47775e316b3363bf"
  }

  evaluation_periods = "15"
  metric_name        = "RequestCountPerTarget"
  namespace          = "AWS/ApplicationELB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "270"
  treat_missing_data = "missing"
  unit               = "None"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-portal-002F-api-AlarmHigh-eaf2de4d-f955-45a2-bb8b-49ee23e48d69" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:3cc832a5-461a-41e6-962a-0e07166db7e2:resource/ecs/service/portal/api:policyName/CPUover30percent"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:3cc832a5-461a-41e6-962a-0e07166db7e2:resource/ecs/service/portal/api:policyName/CPUover30percent."
  alarm_name          = "TargetTracking-service/portal/api-AlarmHigh-eaf2de4d-f955-45a2-bb8b-49ee23e48d69"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterName = "portal"
    ServiceName = "api"
  }

  evaluation_periods = "3"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "30"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-service-002F-portal-002F-api-AlarmLow-988e0bd8-65ba-417d-8f5f-d0b0cfeea46d" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:3cc832a5-461a-41e6-962a-0e07166db7e2:resource/ecs/service/portal/api:policyName/CPUover30percent"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:3cc832a5-461a-41e6-962a-0e07166db7e2:resource/ecs/service/portal/api:policyName/CPUover30percent."
  alarm_name          = "TargetTracking-service/portal/api-AlarmLow-988e0bd8-65ba-417d-8f5f-d0b0cfeea46d"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterName = "portal"
    ServiceName = "api"
  }

  evaluation_periods = "15"
  metric_name        = "CPUUtilization"
  namespace          = "AWS/ECS"
  period             = "60"
  statistic          = "Average"
  threshold          = "27"
  treat_missing_data = "missing"
  unit               = "Percent"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs1-index-AlarmHigh-332298db-d746-4756-855d-7e60a9b28444" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:1683a1e3-773d-45f1-8e39-dfbe9fcd91b3:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/070f4eaf-e42f-4784-bd67-6b2ecffd9adc"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:1683a1e3-773d-45f1-8e39-dfbe9fcd91b3:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/070f4eaf-e42f-4784-bd67-6b2ecffd9adc."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs1-index-AlarmHigh-332298db-d746-4756-855d-7e60a9b28444"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "21000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs1-index-AlarmHigh-44d0dc48-33be-4e43-a684-c0ba1eba9576" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:d17cc0e1-bee6-47f1-8371-53201379a129:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/f243c45d-52ac-44e9-a006-dbf9271b9c34"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:d17cc0e1-bee6-47f1-8371-53201379a129:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/f243c45d-52ac-44e9-a006-dbf9271b9c34."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs1-index-AlarmHigh-44d0dc48-33be-4e43-a684-c0ba1eba9576"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "53046"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs1-index-AlarmLow-624ea541-ced4-4d71-bace-27f6111cea96" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:1683a1e3-773d-45f1-8e39-dfbe9fcd91b3:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/070f4eaf-e42f-4784-bd67-6b2ecffd9adc"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:1683a1e3-773d-45f1-8e39-dfbe9fcd91b3:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/070f4eaf-e42f-4784-bd67-6b2ecffd9adc."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs1-index-AlarmLow-624ea541-ced4-4d71-bace-27f6111cea96"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "15000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs1-index-AlarmLow-ded18111-e76a-46f3-89fb-1cbce65fc34b" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:d17cc0e1-bee6-47f1-8371-53201379a129:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/f243c45d-52ac-44e9-a006-dbf9271b9c34"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:d17cc0e1-bee6-47f1-8371-53201379a129:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/f243c45d-52ac-44e9-a006-dbf9271b9c34."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs1-index-AlarmLow-ded18111-e76a-46f3-89fb-1cbce65fc34b"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "37890"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs1-index-ProvisionedCapacityHigh-2c8618c4-9958-4216-866f-26bc4dbfd397" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:1683a1e3-773d-45f1-8e39-dfbe9fcd91b3:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/070f4eaf-e42f-4784-bd67-6b2ecffd9adc"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:1683a1e3-773d-45f1-8e39-dfbe9fcd91b3:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/070f4eaf-e42f-4784-bd67-6b2ecffd9adc."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs1-index-ProvisionedCapacityHigh-2c8618c4-9958-4216-866f-26bc4dbfd397"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs1-index-ProvisionedCapacityHigh-34926fbc-9735-445c-b170-f0a01285cc2a" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:d17cc0e1-bee6-47f1-8371-53201379a129:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/f243c45d-52ac-44e9-a006-dbf9271b9c34"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:d17cc0e1-bee6-47f1-8371-53201379a129:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/f243c45d-52ac-44e9-a006-dbf9271b9c34."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs1-index-ProvisionedCapacityHigh-34926fbc-9735-445c-b170-f0a01285cc2a"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1263"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs1-index-ProvisionedCapacityLow-c9a4f932-fdc9-4a97-8e48-0bde72350722" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:d17cc0e1-bee6-47f1-8371-53201379a129:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/f243c45d-52ac-44e9-a006-dbf9271b9c34"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:d17cc0e1-bee6-47f1-8371-53201379a129:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/f243c45d-52ac-44e9-a006-dbf9271b9c34."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs1-index-ProvisionedCapacityLow-c9a4f932-fdc9-4a97-8e48-0bde72350722"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "1263"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs1-index-ProvisionedCapacityLow-e4cfe75a-fb4f-4a84-a424-595b064cf530" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:1683a1e3-773d-45f1-8e39-dfbe9fcd91b3:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/070f4eaf-e42f-4784-bd67-6b2ecffd9adc"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:1683a1e3-773d-45f1-8e39-dfbe9fcd91b3:resource/dynamodb/table/point-tracking/index/gs1-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs1-index:createdBy/070f4eaf-e42f-4784-bd67-6b2ecffd9adc."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs1-index-ProvisionedCapacityLow-e4cfe75a-fb4f-4a84-a424-595b064cf530"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs2-index-AlarmHigh-9de74751-127d-41e7-a7b8-36d8bbc25592" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:778698f2-ac4f-4bd3-97b7-521ac5730d36:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/199b2e9e-0fd3-4cfc-a37c-b8c3504116a5", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:778698f2-ac4f-4bd3-97b7-521ac5730d36:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/199b2e9e-0fd3-4cfc-a37c-b8c3504116a5."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs2-index-AlarmHigh-9de74751-127d-41e7-a7b8-36d8bbc25592"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "2"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "21000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs2-index-AlarmHigh-ea2385a3-7178-4be1-b399-072bfdeeae81" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ed6f14b3-7880-494e-8ca7-ce1c73257c04:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/280a9cd3-2426-47a7-b18e-614881cf5aec"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ed6f14b3-7880-494e-8ca7-ce1c73257c04:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/280a9cd3-2426-47a7-b18e-614881cf5aec."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs2-index-AlarmHigh-ea2385a3-7178-4be1-b399-072bfdeeae81"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "21000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs2-index-AlarmLow-07804b3d-fd0c-4f3b-bf7b-f8956dc2a9cb" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:778698f2-ac4f-4bd3-97b7-521ac5730d36:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/199b2e9e-0fd3-4cfc-a37c-b8c3504116a5"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:778698f2-ac4f-4bd3-97b7-521ac5730d36:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/199b2e9e-0fd3-4cfc-a37c-b8c3504116a5."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs2-index-AlarmLow-07804b3d-fd0c-4f3b-bf7b-f8956dc2a9cb"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "15000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs2-index-AlarmLow-e25a780e-3062-4f3c-ad66-2ea3332b57c0" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ed6f14b3-7880-494e-8ca7-ce1c73257c04:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/280a9cd3-2426-47a7-b18e-614881cf5aec"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ed6f14b3-7880-494e-8ca7-ce1c73257c04:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/280a9cd3-2426-47a7-b18e-614881cf5aec."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs2-index-AlarmLow-e25a780e-3062-4f3c-ad66-2ea3332b57c0"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "15000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs2-index-ProvisionedCapacityHigh-2fd19831-15b8-43a6-b6e7-2ec33db2f54b" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ed6f14b3-7880-494e-8ca7-ce1c73257c04:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/280a9cd3-2426-47a7-b18e-614881cf5aec"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ed6f14b3-7880-494e-8ca7-ce1c73257c04:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/280a9cd3-2426-47a7-b18e-614881cf5aec."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs2-index-ProvisionedCapacityHigh-2fd19831-15b8-43a6-b6e7-2ec33db2f54b"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs2-index-ProvisionedCapacityHigh-eebd4baa-f62e-4147-b41f-a7a09103d7fa" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:778698f2-ac4f-4bd3-97b7-521ac5730d36:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/199b2e9e-0fd3-4cfc-a37c-b8c3504116a5", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:778698f2-ac4f-4bd3-97b7-521ac5730d36:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/199b2e9e-0fd3-4cfc-a37c-b8c3504116a5."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs2-index-ProvisionedCapacityHigh-eebd4baa-f62e-4147-b41f-a7a09103d7fa"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs2-index-ProvisionedCapacityLow-2029b5f7-2e2b-48b4-9c58-3f083d80ee99" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ed6f14b3-7880-494e-8ca7-ce1c73257c04:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/280a9cd3-2426-47a7-b18e-614881cf5aec"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ed6f14b3-7880-494e-8ca7-ce1c73257c04:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/280a9cd3-2426-47a7-b18e-614881cf5aec."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs2-index-ProvisionedCapacityLow-2029b5f7-2e2b-48b4-9c58-3f083d80ee99"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-002F-index-002F-gs2-index-ProvisionedCapacityLow-460d4e9a-5139-48f0-83c6-547947e5a0e6" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:778698f2-ac4f-4bd3-97b7-521ac5730d36:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/199b2e9e-0fd3-4cfc-a37c-b8c3504116a5", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:778698f2-ac4f-4bd3-97b7-521ac5730d36:resource/dynamodb/table/point-tracking/index/gs2-index:policyName/DynamoDBReadCapacityUtilization:table/point-tracking/index/gs2-index:createdBy/199b2e9e-0fd3-4cfc-a37c-b8c3504116a5."
  alarm_name          = "TargetTracking-table/point-tracking/index/gs2-index-ProvisionedCapacityLow-460d4e9a-5139-48f0-83c6-547947e5a0e6"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-AlarmHigh-9a2c520d-e97d-4690-a7a7-7cb0dae2dd5b" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:45afb92a-263a-4fde-b2e5-9029a4e016ed:resource/dynamodb/table/point-tracking:policyName/DynamoDBReadCapacityUtilization:table/point-tracking:createdBy/b5089b0b-6b7f-4564-aae5-45ebb73ea886"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:45afb92a-263a-4fde-b2e5-9029a4e016ed:resource/dynamodb/table/point-tracking:policyName/DynamoDBReadCapacityUtilization:table/point-tracking:createdBy/b5089b0b-6b7f-4564-aae5-45ebb73ea886."
  alarm_name          = "TargetTracking-table/point-tracking-AlarmHigh-9a2c520d-e97d-4690-a7a7-7cb0dae2dd5b"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "21000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-AlarmHigh-e6bad3ee-6375-4251-baaf-1f32befe9843" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ca0add0b-6042-49c3-bdca-c083549ed04b:resource/dynamodb/table/point-tracking:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking:createdBy/407f8ac5-386e-4c45-bc1e-01c4478f2440"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ca0add0b-6042-49c3-bdca-c083549ed04b:resource/dynamodb/table/point-tracking:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking:createdBy/407f8ac5-386e-4c45-bc1e-01c4478f2440."
  alarm_name          = "TargetTracking-table/point-tracking-AlarmHigh-e6bad3ee-6375-4251-baaf-1f32befe9843"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "21000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-AlarmLow-34fe5d09-8ae7-4c85-bfb3-20219c214d1a" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:45afb92a-263a-4fde-b2e5-9029a4e016ed:resource/dynamodb/table/point-tracking:policyName/DynamoDBReadCapacityUtilization:table/point-tracking:createdBy/b5089b0b-6b7f-4564-aae5-45ebb73ea886"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:45afb92a-263a-4fde-b2e5-9029a4e016ed:resource/dynamodb/table/point-tracking:policyName/DynamoDBReadCapacityUtilization:table/point-tracking:createdBy/b5089b0b-6b7f-4564-aae5-45ebb73ea886."
  alarm_name          = "TargetTracking-table/point-tracking-AlarmLow-34fe5d09-8ae7-4c85-bfb3-20219c214d1a"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "15000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-AlarmLow-6eaab8dd-34ff-4222-95cf-24b6bd9d6978" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ca0add0b-6042-49c3-bdca-c083549ed04b:resource/dynamodb/table/point-tracking:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking:createdBy/407f8ac5-386e-4c45-bc1e-01c4478f2440"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ca0add0b-6042-49c3-bdca-c083549ed04b:resource/dynamodb/table/point-tracking:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking:createdBy/407f8ac5-386e-4c45-bc1e-01c4478f2440."
  alarm_name          = "TargetTracking-table/point-tracking-AlarmLow-6eaab8dd-34ff-4222-95cf-24b6bd9d6978"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "15000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-ProvisionedCapacityHigh-d6653f93-36fa-4475-9be5-0aaa4b08a8e3" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:45afb92a-263a-4fde-b2e5-9029a4e016ed:resource/dynamodb/table/point-tracking:policyName/DynamoDBReadCapacityUtilization:table/point-tracking:createdBy/b5089b0b-6b7f-4564-aae5-45ebb73ea886"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:45afb92a-263a-4fde-b2e5-9029a4e016ed:resource/dynamodb/table/point-tracking:policyName/DynamoDBReadCapacityUtilization:table/point-tracking:createdBy/b5089b0b-6b7f-4564-aae5-45ebb73ea886."
  alarm_name          = "TargetTracking-table/point-tracking-ProvisionedCapacityHigh-d6653f93-36fa-4475-9be5-0aaa4b08a8e3"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-ProvisionedCapacityHigh-d8fc4348-6c2f-4d30-87a2-ecf4dc6453c7" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ca0add0b-6042-49c3-bdca-c083549ed04b:resource/dynamodb/table/point-tracking:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking:createdBy/407f8ac5-386e-4c45-bc1e-01c4478f2440"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ca0add0b-6042-49c3-bdca-c083549ed04b:resource/dynamodb/table/point-tracking:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking:createdBy/407f8ac5-386e-4c45-bc1e-01c4478f2440."
  alarm_name          = "TargetTracking-table/point-tracking-ProvisionedCapacityHigh-d8fc4348-6c2f-4d30-87a2-ecf4dc6453c7"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-ProvisionedCapacityLow-7c1ff0a6-cd3f-478d-9e41-9669f00eff66" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:45afb92a-263a-4fde-b2e5-9029a4e016ed:resource/dynamodb/table/point-tracking:policyName/DynamoDBReadCapacityUtilization:table/point-tracking:createdBy/b5089b0b-6b7f-4564-aae5-45ebb73ea886"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:45afb92a-263a-4fde-b2e5-9029a4e016ed:resource/dynamodb/table/point-tracking:policyName/DynamoDBReadCapacityUtilization:table/point-tracking:createdBy/b5089b0b-6b7f-4564-aae5-45ebb73ea886."
  alarm_name          = "TargetTracking-table/point-tracking-ProvisionedCapacityLow-7c1ff0a6-cd3f-478d-9e41-9669f00eff66"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-point-tracking-ProvisionedCapacityLow-8064c9fe-8634-43e2-8c5a-75967b68fffc" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ca0add0b-6042-49c3-bdca-c083549ed04b:resource/dynamodb/table/point-tracking:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking:createdBy/407f8ac5-386e-4c45-bc1e-01c4478f2440"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ca0add0b-6042-49c3-bdca-c083549ed04b:resource/dynamodb/table/point-tracking:policyName/DynamoDBWriteCapacityUtilization:table/point-tracking:createdBy/407f8ac5-386e-4c45-bc1e-01c4478f2440."
  alarm_name          = "TargetTracking-table/point-tracking-ProvisionedCapacityLow-8064c9fe-8634-43e2-8c5a-75967b68fffc"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "500"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-002F-index-002F-GSI1-AlarmHigh-e44bbe1e-804d-4a58-8ae4-cfce4a3ce105" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:9c34cfca-4a27-4e4e-9a4b-498d2f453e65:resource/dynamodb/table/sms-opt-in-prod/index/GSI1:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod/index/GSI1:createdBy/c41665c3-e0c0-4fd7-b476-5ede04e0b531", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:9c34cfca-4a27-4e4e-9a4b-498d2f453e65:resource/dynamodb/table/sms-opt-in-prod/index/GSI1:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod/index/GSI1:createdBy/c41665c3-e0c0-4fd7-b476-5ede04e0b531."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod/index/GSI1-AlarmHigh-e44bbe1e-804d-4a58-8ae4-cfce4a3ce105"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "2"

  dimensions = {
    GlobalSecondaryIndexName = "GSI1"
    TableName                = "sms-opt-in-prod"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "84000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-002F-index-002F-GSI1-AlarmLow-538b0c48-70b8-4fb5-9e27-63c0ce0d431c" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:9c34cfca-4a27-4e4e-9a4b-498d2f453e65:resource/dynamodb/table/sms-opt-in-prod/index/GSI1:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod/index/GSI1:createdBy/c41665c3-e0c0-4fd7-b476-5ede04e0b531"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:9c34cfca-4a27-4e4e-9a4b-498d2f453e65:resource/dynamodb/table/sms-opt-in-prod/index/GSI1:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod/index/GSI1:createdBy/c41665c3-e0c0-4fd7-b476-5ede04e0b531."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod/index/GSI1-AlarmLow-538b0c48-70b8-4fb5-9e27-63c0ce0d431c"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    GlobalSecondaryIndexName = "GSI1"
    TableName                = "sms-opt-in-prod"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "60000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-002F-index-002F-GSI1-ProvisionedCapacityHigh-8503fa74-bbf7-4d85-9460-a20ec3f3d300" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:9c34cfca-4a27-4e4e-9a4b-498d2f453e65:resource/dynamodb/table/sms-opt-in-prod/index/GSI1:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod/index/GSI1:createdBy/c41665c3-e0c0-4fd7-b476-5ede04e0b531", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:9c34cfca-4a27-4e4e-9a4b-498d2f453e65:resource/dynamodb/table/sms-opt-in-prod/index/GSI1:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod/index/GSI1:createdBy/c41665c3-e0c0-4fd7-b476-5ede04e0b531."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod/index/GSI1-ProvisionedCapacityHigh-8503fa74-bbf7-4d85-9460-a20ec3f3d300"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    GlobalSecondaryIndexName = "GSI1"
    TableName                = "sms-opt-in-prod"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "2000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-002F-index-002F-GSI1-ProvisionedCapacityLow-91fbe18e-c105-4200-9201-92f50bf4bd3d" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:9c34cfca-4a27-4e4e-9a4b-498d2f453e65:resource/dynamodb/table/sms-opt-in-prod/index/GSI1:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod/index/GSI1:createdBy/c41665c3-e0c0-4fd7-b476-5ede04e0b531", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:9c34cfca-4a27-4e4e-9a4b-498d2f453e65:resource/dynamodb/table/sms-opt-in-prod/index/GSI1:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod/index/GSI1:createdBy/c41665c3-e0c0-4fd7-b476-5ede04e0b531."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod/index/GSI1-ProvisionedCapacityLow-91fbe18e-c105-4200-9201-92f50bf4bd3d"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    GlobalSecondaryIndexName = "GSI1"
    TableName                = "sms-opt-in-prod"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "2000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-AlarmHigh-2e2f9453-2755-4cde-b01b-d8f4ae5ab61e" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:0220a22a-6412-48c2-bf14-fdb5e8c03bf2:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBWriteCapacityUtilization:table/sms-opt-in-prod:createdBy/7a14ac4d-4662-4744-a403-05a524e151ec", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:0220a22a-6412-48c2-bf14-fdb5e8c03bf2:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBWriteCapacityUtilization:table/sms-opt-in-prod:createdBy/7a14ac4d-4662-4744-a403-05a524e151ec."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod-AlarmHigh-2e2f9453-2755-4cde-b01b-d8f4ae5ab61e"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "2"

  dimensions = {
    TableName = "sms-opt-in-prod"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "84000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-AlarmHigh-f7a33c2e-10eb-47b4-9a05-197fbde5f5d9" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ccd70ab4-a8a1-4c89-9275-16309b6b4349:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod:createdBy/3455e622-c7ed-4659-8887-639845c41b34", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ccd70ab4-a8a1-4c89-9275-16309b6b4349:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod:createdBy/3455e622-c7ed-4659-8887-639845c41b34."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod-AlarmHigh-f7a33c2e-10eb-47b4-9a05-197fbde5f5d9"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "2"

  dimensions = {
    TableName = "sms-opt-in-prod"
  }

  evaluation_periods = "2"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "84000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-AlarmLow-4d6a1fa6-d7e9-4ee8-8098-b07ca8a818f9" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ccd70ab4-a8a1-4c89-9275-16309b6b4349:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod:createdBy/3455e622-c7ed-4659-8887-639845c41b34"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ccd70ab4-a8a1-4c89-9275-16309b6b4349:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod:createdBy/3455e622-c7ed-4659-8887-639845c41b34."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod-AlarmLow-4d6a1fa6-d7e9-4ee8-8098-b07ca8a818f9"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    TableName = "sms-opt-in-prod"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "60000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-AlarmLow-5be2505b-1402-4f2e-8b58-47a75970d37d" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:0220a22a-6412-48c2-bf14-fdb5e8c03bf2:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBWriteCapacityUtilization:table/sms-opt-in-prod:createdBy/7a14ac4d-4662-4744-a403-05a524e151ec"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:0220a22a-6412-48c2-bf14-fdb5e8c03bf2:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBWriteCapacityUtilization:table/sms-opt-in-prod:createdBy/7a14ac4d-4662-4744-a403-05a524e151ec."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod-AlarmLow-5be2505b-1402-4f2e-8b58-47a75970d37d"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "15"

  dimensions = {
    TableName = "sms-opt-in-prod"
  }

  evaluation_periods = "15"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "60000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-ProvisionedCapacityHigh-0db973ec-58c0-4ccf-82ab-a796c49a8e8e" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ccd70ab4-a8a1-4c89-9275-16309b6b4349:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod:createdBy/3455e622-c7ed-4659-8887-639845c41b34", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ccd70ab4-a8a1-4c89-9275-16309b6b4349:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod:createdBy/3455e622-c7ed-4659-8887-639845c41b34."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod-ProvisionedCapacityHigh-0db973ec-58c0-4ccf-82ab-a796c49a8e8e"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    TableName = "sms-opt-in-prod"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "2000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-ProvisionedCapacityHigh-b32d589f-6246-44cf-8482-de17db07d4b0" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:0220a22a-6412-48c2-bf14-fdb5e8c03bf2:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBWriteCapacityUtilization:table/sms-opt-in-prod:createdBy/7a14ac4d-4662-4744-a403-05a524e151ec", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:0220a22a-6412-48c2-bf14-fdb5e8c03bf2:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBWriteCapacityUtilization:table/sms-opt-in-prod:createdBy/7a14ac4d-4662-4744-a403-05a524e151ec."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod-ProvisionedCapacityHigh-b32d589f-6246-44cf-8482-de17db07d4b0"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    TableName = "sms-opt-in-prod"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "2000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-ProvisionedCapacityLow-5c45ae76-500b-4817-96f8-e6c0a53919b5" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ccd70ab4-a8a1-4c89-9275-16309b6b4349:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod:createdBy/3455e622-c7ed-4659-8887-639845c41b34", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:ccd70ab4-a8a1-4c89-9275-16309b6b4349:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBReadCapacityUtilization:table/sms-opt-in-prod:createdBy/3455e622-c7ed-4659-8887-639845c41b34."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod-ProvisionedCapacityLow-5c45ae76-500b-4817-96f8-e6c0a53919b5"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    TableName = "sms-opt-in-prod"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "2000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-table-002F-sms-opt-in-prod-ProvisionedCapacityLow-a55349dc-90af-4c36-b57c-ee6610cf4d6a" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:0220a22a-6412-48c2-bf14-fdb5e8c03bf2:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBWriteCapacityUtilization:table/sms-opt-in-prod:createdBy/7a14ac4d-4662-4744-a403-05a524e151ec", "arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:799611636099:scalingPolicy:0220a22a-6412-48c2-bf14-fdb5e8c03bf2:resource/dynamodb/table/sms-opt-in-prod:policyName/DynamoDBWriteCapacityUtilization:table/sms-opt-in-prod:createdBy/7a14ac4d-4662-4744-a403-05a524e151ec."
  alarm_name          = "TargetTracking-table/sms-opt-in-prod-ProvisionedCapacityLow-a55349dc-90af-4c36-b57c-ee6610cf4d6a"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "3"

  dimensions = {
    TableName = "sms-opt-in-prod"
  }

  evaluation_periods = "3"
  metric_name        = "ProvisionedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "300"
  statistic          = "Average"
  threshold          = "2000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--percentage-disk-space-used-default-9fku9f7rlgrs" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms"]
  alarm_name          = "percentage-disk-space-used-default-9fku9f7rlgrs"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    ClusterIdentifier = "redshift-cluster-1"
  }

  evaluation_periods = "1"
  metric_name        = "PercentageDiskSpaceUsed"
  namespace          = "AWS/Redshift"
  period             = "300"
  statistic          = "Average"
  threshold          = "80"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--point-tracking-ReadCapacityUnitsLimit-BasicAlarm" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:dynamodb"]
  alarm_name          = "point-tracking-ReadCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = "5"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "5"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "240000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--point-tracking-WriteCapacityUnitsLimit-BasicAlarm" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:dynamodb"]
  alarm_name          = "point-tracking-WriteCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = "5"

  dimensions = {
    TableName = "point-tracking"
  }

  evaluation_periods = "5"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "144000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--point-tracking-gs1-index-ReadCapacityUnitsLimit-BasicAlarm" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:dynamodb"]
  alarm_name          = "point-tracking-gs1-index-ReadCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = "60"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "60"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "100000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--point-tracking-gs1-index-WriteCapacityUnitsLimit-BasicAlarm" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:dynamodb"]
  alarm_name          = "point-tracking-gs1-index-WriteCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = "60"

  dimensions = {
    GlobalSecondaryIndexName = "gs1-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "60"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "144000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--point-tracking-gs2-index-ReadCapacityUnitsLimit-BasicAlarm" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:dynamodb"]
  alarm_name          = "point-tracking-gs2-index-ReadCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = "60"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "60"
  metric_name        = "ConsumedReadCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "240"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--point-tracking-gs2-index-WriteCapacityUnitsLimit-BasicAlarm" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:dynamodb"]
  alarm_name          = "point-tracking-gs2-index-WriteCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = "60"

  dimensions = {
    GlobalSecondaryIndexName = "gs2-index"
    TableName                = "point-tracking"
  }

  evaluation_periods = "60"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "144000"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--sms-opt-in-prod-GSI1-WriteCapacityUnitsLimit-BasicAlarm" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:dynamodb"]
  alarm_name          = "sms-opt-in-prod-GSI1-WriteCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = "60"

  dimensions = {
    GlobalSecondaryIndexName = "GSI1"
    TableName                = "sms-opt-in-prod"
  }

  evaluation_periods = "60"
  metric_name        = "ConsumedWriteCapacityUnits"
  namespace          = "AWS/DynamoDB"
  period             = "60"
  statistic          = "Sum"
  threshold          = "9600"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--sms-service-10Plus-send" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:sms-alarms"]
  alarm_description   = "Triggered when we send a customer a message of the same campaign and message type in a 24 hour period"
  alarm_name          = "sms-service-10Plus-send"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"
  evaluation_periods  = "1"
  metric_name         = "DuplicateMessage10PlusSend"
  namespace           = "SMS Errors"
  period              = "60"
  statistic           = "Sum"
  threshold           = "0"
  treat_missing_data  = "notBreaching"
  unit                = "None"
}

resource "aws_cloudwatch_metric_alarm" "tfer--sms-service-3Plus-send" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:799611636099:alarms", "arn:aws:sns:us-east-1:799611636099:sms-alarms"]
  alarm_description   = "Triggered when we send a customer a message of the same campaign and message type in a 24 hour period"
  alarm_name          = "sms-service-3Plus-send"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"
  evaluation_periods  = "1"
  metric_name         = "DuplicateMessage3PlusSend"
  namespace           = "SMS Errors"
  period              = "60"
  statistic           = "Sum"
  threshold           = "0"
  treat_missing_data  = "notBreaching"
  unit                = "None"
}
