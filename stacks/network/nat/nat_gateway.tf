resource "aws_nat_gateway" "tfer--nat-02af312057f1509ee" {
  allocation_id     = var.ngw_eip_1a #"eipalloc-03ed668dfe3da3db5"
  connectivity_type = "public"
  #private_ip        = "10.20.100.175"
  subnet_id         = var.public_subnet_1_id
}

resource "aws_nat_gateway" "tfer--nat-0d9aebc74e176ff04" {
  allocation_id     = var.ngw_eip_1b #"eipalloc-0ec3904e2060e6073"
  connectivity_type = "public"
  #private_ip        = "10.20.101.20"
  subnet_id         = var.public_subnet_2_id
}