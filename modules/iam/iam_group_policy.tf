resource "aws_iam_group_policy" "tfer--RocketAdmins_Prevent-DB-Deletes" {
  group = "RocketAdmins"
  name  = "Prevent-DB-Deletes"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:DeleteTable"
      ],
      "Effect": "Deny",
      "Resource": [
        "*"
      ],
      "Sid": "Stmt1575559762000"
    },
    {
      "Action": [
        "rds:DeleteDBCluster"
      ],
      "Effect": "Deny",
      "Resource": [
        "*"
      ],
      "Sid": "Stmt1575559877000"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
