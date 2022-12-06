resource "aws_nat_gateway" "tfer--nat-02af312057f1509ee" {
  allocation_id     = "eipalloc-03ed668dfe3da3db5"
  connectivity_type = "public"
  private_ip        = "10.20.100.175"
  subnet_id         = "subnet-07d6918830b6abd48"
}

resource "aws_nat_gateway" "tfer--nat-0d9aebc74e176ff04" {
  allocation_id     = "eipalloc-0ec3904e2060e6073"
  connectivity_type = "public"
  private_ip        = "10.20.101.20"
  subnet_id         = "subnet-0b79e29e16fd8d71c"
}
