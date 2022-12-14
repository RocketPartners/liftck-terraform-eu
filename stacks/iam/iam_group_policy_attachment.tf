resource "aws_iam_group_policy_attachment" "tfer--RocketAdmins_AdministratorAccess" {
  group      = "RocketAdmins"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--aws-mobile-app_AWSHealthFullAccess" {
  group      = "aws-mobile-app"
  policy_arn = "arn:aws:iam::aws:policy/AWSHealthFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--aws-mobile-app_CloudWatchFullAccess" {
  group      = "aws-mobile-app"
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--cli-users_AmazonSESFullAccess" {
  group      = "cli-users"
  policy_arn = "arn:aws:iam::aws:policy/AmazonSESFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--cli-users_CloudFrontFullAccess" {
  group      = "cli-users"
  policy_arn = "arn:aws:iam::aws:policy/CloudFrontFullAccess"
}
