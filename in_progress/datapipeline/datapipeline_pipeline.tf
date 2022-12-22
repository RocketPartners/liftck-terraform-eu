resource "aws_datapipeline_pipeline" "tfer--loyalty-punchcard-2" {
  name = "loyalty-punchcard-2"
}

resource "aws_datapipeline_pipeline" "tfer--loyalty-punchcard-ddb-load" {
  name = "loyalty-punchcard-ddb-load"
}

resource "aws_datapipeline_pipeline" "tfer--token-tracker-table-load" {
  description = "Loads token-tracker table with data form S3 that was pulled from CK Marketing"
  name        = "token-tracker-table-load"
}
