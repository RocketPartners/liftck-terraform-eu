resource "aws_nat_gateway" "tfer--nat-02af312057f1509ee" {
  allocation_id     = aws_eip.tfer--eipalloc-03ed668dfe3da3db5.id
  connectivity_type = "public"
  #private_ip        = "10.20.100.175"
  subnet_id         = aws_subnet.tfer--subnet-07d6918830b6abd48.id
}

resource "aws_nat_gateway" "tfer--nat-0d9aebc74e176ff04" {
  allocation_id     = aws_eip.tfer--eipalloc-0ec3904e2060e6073.id
  connectivity_type = "public"
  #private_ip        = "10.20.101.20"
  subnet_id         = aws_subnet.tfer--subnet-0b79e29e16fd8d71c.id
}