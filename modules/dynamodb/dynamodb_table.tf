resource "aws_dynamodb_table" "tfer--ad-segmentation" {
  attribute {
    name = "CAMPAIGNCODE"
    type = "S"
  }

  attribute {
    name = "MOBILENUMBER"
    type = "N"
  }

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "MOBILENUMBER"
  name         = "ad-segmentation"

  point_in_time_recovery {
    enabled = "true"
  }

  range_key      = "CAMPAIGNCODE"
  read_capacity  = "0"
  stream_enabled = "false"
  write_capacity = "0"
}

resource "aws_dynamodb_table" "tfer--customer-details" {
  attribute {
    name = "pk"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "pk"
  name         = "customer-details"

  point_in_time_recovery {
    enabled = "true"
  }

  read_capacity  = "0"
  stream_enabled = "false"
  write_capacity = "0"
}

resource "aws_dynamodb_table" "tfer--loyalty-punchcard" {
  attribute {
    name = "burnedat"
    type = "N"
  }

  attribute {
    name = "burnedatplayercode"
    type = "S"
  }

  attribute {
    name = "earnedat"
    type = "N"
  }

  attribute {
    name = "earnedatplayercode"
    type = "S"
  }

  attribute {
    name = "mobilenumber"
    type = "S"
  }

  attribute {
    name = "uuid"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "mobilenumber"

  local_secondary_index {
    name            = "mobilenumber-burnedat-index"
    projection_type = "ALL"
    range_key       = "burnedat"
  }

  local_secondary_index {
    name            = "mobilenumber-burnedatplayercode-index"
    projection_type = "ALL"
    range_key       = "burnedatplayercode"
  }

  local_secondary_index {
    name            = "mobilenumber-earnedat-index"
    projection_type = "ALL"
    range_key       = "earnedat"
  }

  local_secondary_index {
    name            = "mobilenumber-earnedatplayercode-index"
    projection_type = "ALL"
    range_key       = "earnedatplayercode"
  }

  name = "loyalty-punchcard"

  point_in_time_recovery {
    enabled = "true"
  }

  range_key      = "uuid"
  read_capacity  = "0"
  stream_enabled = "false"
  write_capacity = "0"
}

resource "aws_dynamodb_table" "tfer--loyalty-tracker" {
  attribute {
    name = "CAMPAIGNCODE"
    type = "S"
  }

  attribute {
    name = "MOBILENUMBER"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "MOBILENUMBER"
  name         = "loyalty-tracker"

  point_in_time_recovery {
    enabled = "true"
  }

  range_key      = "CAMPAIGNCODE"
  read_capacity  = "0"
  stream_enabled = "false"

  ttl {
    attribute_name = "EXPIRETIME"
    enabled        = "true"
  }

  write_capacity = "0"
}

resource "aws_dynamodb_table" "tfer--point-tracking" {
  attribute {
    name = "gs1hk"
    type = "S"
  }

  attribute {
    name = "gs1sk"
    type = "S"
  }

  attribute {
    name = "gs2hk"
    type = "S"
  }

  attribute {
    name = "gs2sk"
    type = "S"
  }

  attribute {
    name = "hk"
    type = "S"
  }

  attribute {
    name = "sk"
    type = "S"
  }

  billing_mode = "PROVISIONED"

  global_secondary_index {
    hash_key        = "gs1hk"
    name            = "gs1-index"
    projection_type = "ALL"
    range_key       = "gs1sk"
    read_capacity   = "1263"
    write_capacity  = "500"
  }

  global_secondary_index {
    hash_key        = "gs2hk"
    name            = "gs2-index"
    projection_type = "ALL"
    range_key       = "gs2sk"
    read_capacity   = "500"
    write_capacity  = "500"
  }

  hash_key = "hk"
  name     = "point-tracking"

  point_in_time_recovery {
    enabled = "true"
  }

  range_key      = "sk"
  read_capacity  = "500"
  stream_enabled = "false"

  ttl {
    attribute_name = "ttl"
    enabled        = "true"
  }

  write_capacity = "500"
}

resource "aws_dynamodb_table" "tfer--quick-expire" {
  attribute {
    name = "CAMPAIGNCODE"
    type = "S"
  }

  attribute {
    name = "MOBILENUMBER"
    type = "N"
  }

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "CAMPAIGNCODE"
  name         = "quick-expire"

  point_in_time_recovery {
    enabled = "true"
  }

  range_key      = "MOBILENUMBER"
  read_capacity  = "0"
  stream_enabled = "false"
  write_capacity = "0"
}

resource "aws_dynamodb_table" "tfer--sms-opt-in-prod" {
  attribute {
    name = "gspk1"
    type = "S"
  }

  attribute {
    name = "gssk1"
    type = "S"
  }

  attribute {
    name = "pk"
    type = "S"
  }

  attribute {
    name = "sk"
    type = "S"
  }

  billing_mode = "PROVISIONED"

  global_secondary_index {
    hash_key        = "gspk1"
    name            = "GSI1"
    projection_type = "ALL"
    range_key       = "gssk1"
    read_capacity   = "2000"
    write_capacity  = "2000"
  }

  hash_key = "pk"
  name     = "sms-opt-in-prod"

  point_in_time_recovery {
    enabled = "true"
  }

  range_key        = "sk"
  read_capacity    = "2000"
  stream_enabled   = "true"
  stream_view_type = "NEW_IMAGE"
  write_capacity   = "2000"
}

resource "aws_dynamodb_table" "tfer--token-tracker" {
  attribute {
    name = "CREATED"
    type = "S"
  }

  attribute {
    name = "USERID"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "USERID"
  name         = "token-tracker"

  point_in_time_recovery {
    enabled = "true"
  }

  range_key      = "CREATED"
  read_capacity  = "0"
  stream_enabled = "false"

  ttl {
    attribute_name = "EXPIRETIME"
    enabled        = "true"
  }

  write_capacity = "0"
}

resource "aws_dynamodb_table" "tfer--url-shortener" {
  attribute {
    name = "longUrl"
    type = "S"
  }

  attribute {
    name = "shortUrl"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"

  global_secondary_index {
    hash_key        = "longUrl"
    name            = "longUrl-shortUrl-index"
    projection_type = "ALL"
    range_key       = "shortUrl"
    read_capacity   = "0"
    write_capacity  = "0"
  }

  hash_key = "shortUrl"
  name     = "url-shortener"

  point_in_time_recovery {
    enabled = "true"
  }

  range_key      = "longUrl"
  read_capacity  = "0"
  stream_enabled = "false"

  ttl {
    attribute_name = "ttl"
    enabled        = "true"
  }

  write_capacity = "0"
}

resource "aws_dynamodb_table" "tfer--verification-codes" {
  attribute {
    name = "mobile"
    type = "S"
  }

  attribute {
    name = "passcode"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"

  global_secondary_index {
    hash_key        = "passcode"
    name            = "passcode-mobile-index"
    projection_type = "ALL"
    range_key       = "mobile"
    read_capacity   = "0"
    write_capacity  = "0"
  }

  hash_key = "mobile"
  name     = "verification-codes"

  point_in_time_recovery {
    enabled = "true"
  }

  range_key      = "passcode"
  read_capacity  = "0"
  stream_enabled = "false"

  ttl {
    attribute_name = "ttl"
    enabled        = "true"
  }

  write_capacity = "0"
}
