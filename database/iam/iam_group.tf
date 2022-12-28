resource "aws_iam_group" "tfer--RocketAdmins" {
  name = "RocketAdmins"
  path = "/"
}

resource "aws_iam_group" "tfer--aws-mobile-app" {
  name = "aws-mobile-app"
  path = "/"
}

resource "aws_iam_group" "tfer--cli-users" {
  name = "cli-users"
  path = "/"
}
