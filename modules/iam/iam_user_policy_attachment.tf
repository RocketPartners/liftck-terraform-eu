resource "aws_iam_user_policy_attachment" "tfer--brett-002E-botto-002E-cli_AmazonRedshiftReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftReadOnlyAccess"
  user       = "brett.botto.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--brett-002E-botto-002E-cli_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "brett.botto.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--brett-002E-botto-002E-cli_ck-marketing-cross-account-access" {
  policy_arn = "arn:aws:iam::799611636099:policy/ck-marketing-cross-account-access"
  user       = "brett.botto.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--brett-002E-botto_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "brett.botto"
}

resource "aws_iam_user_policy_attachment" "tfer--brett-002E-botto_ck-marketing-cross-account-access" {
  policy_arn = "arn:aws:iam::799611636099:policy/ck-marketing-cross-account-access"
  user       = "brett.botto"
}

resource "aws_iam_user_policy_attachment" "tfer--carlos-002E-sanchez-002E-cli_AWSLambda_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
  user       = "carlos.sanchez.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--carlos-002E-sanchez-002E-cli_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  user       = "carlos.sanchez.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--carlos-002E-sanchez-002E-cli_AmazonVPCFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
  user       = "carlos.sanchez.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--carlos-002E-sanchez_AWSResourceAccessManagerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSResourceAccessManagerFullAccess"
  user       = "carlos.sanchez"
}

resource "aws_iam_user_policy_attachment" "tfer--carlos-002E-sanchez_AmazonVPCFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
  user       = "carlos.sanchez"
}

resource "aws_iam_user_policy_attachment" "tfer--elena-002E-mateos-002E-martin-002E-cli_AmazonSQSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
  user       = "elena.mateos.martin.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--elena-002E-mateos-002E-martin-002E-cli_ListAndCreatePolicies" {
  policy_arn = "arn:aws:iam::799611636099:policy/ListAndCreatePolicies"
  user       = "elena.mateos.martin.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--elena-002E-mateos-002E-martin-002E-cli_bucketTransfer_scriptdevbucket_scriptprodbucket" {
  policy_arn = "arn:aws:iam::799611636099:policy/bucketTransfer_scriptdevbucket_scriptprodbucket"
  user       = "elena.mateos.martin.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--elena-002E-mateos-002E-martin-002E-cli_bucket_transfer_octane_final" {
  policy_arn = "arn:aws:iam::799611636099:policy/bucket_transfer_octane_final"
  user       = "elena.mateos.martin.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--elena-002E-mateos-002E-martin-002E-cli_bucket_transfer_octane_full" {
  policy_arn = "arn:aws:iam::799611636099:policy/bucket_transfer_octane_full"
  user       = "elena.mateos.martin.cli"
}

resource "aws_iam_user_policy_attachment" "tfer--elena-002E-mateos-002E-martin_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "elena.mateos.martin"
}

resource "aws_iam_user_policy_attachment" "tfer--github-actions-files-upload_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "github-actions-files-upload"
}

resource "aws_iam_user_policy_attachment" "tfer--github-portal-packages-put_circlek-portal-packages-put" {
  policy_arn = "arn:aws:iam::799611636099:policy/circlek-portal-packages-put"
  user       = "github-portal-packages-put"
}

resource "aws_iam_user_policy_attachment" "tfer--github-portal-release_circlek-portal-release-github" {
  policy_arn = "arn:aws:iam::799611636099:policy/circlek-portal-release-github"
  user       = "github-portal-release"
}

resource "aws_iam_user_policy_attachment" "tfer--ivan-002E-motos_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "ivan.motos"
}

resource "aws_iam_user_policy_attachment" "tfer--jessica-002E-lancaster_CloudWatchReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess"
  user       = "jessica.lancaster"
}

resource "aws_iam_user_policy_attachment" "tfer--kevin-002E-frankic_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "kevin.frankic"
}

resource "aws_iam_user_policy_attachment" "tfer--matt-002E-moore_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  user       = "matt.moore"
}

resource "aws_iam_user_policy_attachment" "tfer--matt-002E-moore_IAMSelfManageServiceSpecificCredentials" {
  policy_arn = "arn:aws:iam::aws:policy/IAMSelfManageServiceSpecificCredentials"
  user       = "matt.moore"
}

resource "aws_iam_user_policy_attachment" "tfer--matt-002E-moore_IAMUserChangePassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = "matt.moore"
}

resource "aws_iam_user_policy_attachment" "tfer--michael-002E-martin-cli_AmazonECS_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  user       = "michael.martin-cli"
}

resource "aws_iam_user_policy_attachment" "tfer--michael-002E-martin-cli_AmazonSSMReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMReadOnlyAccess"
  user       = "michael.martin-cli"
}

resource "aws_iam_user_policy_attachment" "tfer--michael-002E-martin_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "michael.martin"
}

resource "aws_iam_user_policy_attachment" "tfer--raul-002E-ripoll-cli_AmazonSQSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
  user       = "raul.ripoll-cli"
}

resource "aws_iam_user_policy_attachment" "tfer--raul-002E-ripoll-cli_ListAndCreatePolicies" {
  policy_arn = "arn:aws:iam::799611636099:policy/ListAndCreatePolicies"
  user       = "raul.ripoll-cli"
}

resource "aws_iam_user_policy_attachment" "tfer--raul-002E-ripoll-cli_bucketTransfer_scriptdevbucket_scriptprodbucket" {
  policy_arn = "arn:aws:iam::799611636099:policy/bucketTransfer_scriptdevbucket_scriptprodbucket"
  user       = "raul.ripoll-cli"
}

resource "aws_iam_user_policy_attachment" "tfer--sipnsave-002E-data-002E-download_sipnsave-002E-s3-002E-data" {
  policy_arn = "arn:aws:iam::799611636099:policy/sipnsave.s3.data"
  user       = "sipnsave.data.download"
}

resource "aws_iam_user_policy_attachment" "tfer--sms-bot-user_firehose-sms-dev-full-access" {
  policy_arn = "arn:aws:iam::799611636099:policy/firehose-sms-dev-full-access"
  user       = "sms-bot-user"
}

resource "aws_iam_user_policy_attachment" "tfer--sms-ec2-ddb_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  user       = "sms-ec2-ddb"
}
