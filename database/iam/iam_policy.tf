
resource "aws_iam_policy" "tfer--cirkdev-rds-invoke-lambda" {
  description = "Allow RDS to call a lambda function from a db trigger"
  name        = "cirkdev-rds-invoke-lambda"
  path        = "/"
  policy = jsonencode(
    {
      "Statement": [
        {
          "Action": [
            "lambda:InvokeFunction",
            "lambda:InvokeAsync"
          ],
          "Effect": "Allow",
          "Resource": [
            "arn:aws:lambda:${var.region}:${var.account_number}:function:indexer-lambda",
            "arn:aws:lambda:${var.region}:${var.account_number}:function:indexer-lambda*"
          ],
          "Sid": "VisualEditor0"
        }
      ],
      "Version": "2012-10-17"
    })
}