resource "aws_iam_instance_profile" "tfer--DataPipelineDefaultResourceRole" {
  name = "DataPipelineDefaultResourceRole"
  path = "/"
  role = "DataPipelineDefaultResourceRole"
}

resource "aws_iam_instance_profile" "tfer--Indexer_EC2_role" {
  name = "Indexer_EC2_role"
  path = "/"
  role = "Indexer_EC2_role"
}

resource "aws_iam_instance_profile" "tfer--ec2-ddb-role" {
  name = "ec2-ddb-role"
  path = "/"
  role = "ec2-ddb-role"
}

resource "aws_iam_instance_profile" "tfer--ec2-machine-role-liftcksnooze" {
  name = "ec2-machine-role-liftcksnooze"
  path = "/"
  role = "ec2-machine-role-liftcksnooze"
}

resource "aws_iam_instance_profile" "tfer--rocket-sqlserver-ec2-migration-role" {
  name = "rocket-sqlserver-ec2-migration-role"
  path = "/"
  role = "rocket-sqlserver-ec2-migration-role"
}
