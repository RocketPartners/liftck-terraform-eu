
resource "aws_cloudwatch_log_group" "Log-circleklift-basket"{
  name = "Log-circleklift-basket"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery" {
  log_group_name = aws_cloudwatch_log_group.Log-circleklift-basket.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery" {
  log_group_name = aws_cloudwatch_log_group.Log-circleklift-basket.name
  name           = "S3Delivery"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-event"{
  name = "/aws/kinesisfirehose/circleklift-event"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-event" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-event.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-event" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-event.name
  name           = "S3Delivery"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-impression"{
  name = "/aws/kinesisfirehose/circleklift-impression"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-impression" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-impression.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-impression" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-impression.name
  name           = "S3Delivery"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-input"{
  name = "/aws/kinesisfirehose/circleklift-input"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-input" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-input.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-input" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-input.name
  name           = "S3Delivery"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-lineitem"{
  name = "Log-circleklift-lineitem"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-lineitem" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-lineitem.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-lineitem" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-lineitem.name
  name           = "S3Delivery"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-message"{
  name = "Log-circleklift-message"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-message" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-message.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-message" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-message.name
  name           = "S3Delivery"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-offer"{
  name = "Log-circleklift-offer"
  retention_in_days = 7
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-offer" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-offer.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-offer" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-offer.name
  name           = "S3Delivery"
}

resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-sms"{
  name = "/aws/kinesisfirehose/circleklift-sms-opt-in"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-sms" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-sms.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-sms" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-sms.name
  name           = "S3Delivery"
}


resource "aws_cloudwatch_log_group" "_aws_kinesisfirehose_circleklift-smsdev"{
  name = "/aws/kinesisfirehose/circleklift-sms-opt-in-dev"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_stream" "RedshiftDelivery_circleklift-smsdev" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-smsdev.name
  name           = "RedshiftDelivery"
}

resource "aws_cloudwatch_log_stream" "S3Delivery_circleklift-smsdev" {
  log_group_name = aws_cloudwatch_log_group._aws_kinesisfirehose_circleklift-smsdev.name
  name           = "S3Delivery"
}

