resource "aws_network_interface" "tfer--eni-0038bee762b9434d8" {
  description        = "AWS Lambda VPC ENI-row-copier-legacylocation-prod-row-copier-cron-a3a853d0-3557-446f-8a44-b01e334123ce"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.213"
  private_ip_list    = ["10.20.11.213"]
  private_ips        = ["10.20.11.213"]
  private_ips_count  = "0"
  security_groups    = ["sg-0d6900739eccef946"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-003abc5d5b201059a" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/17fa1dc1-d5df-4735-9aba-0161045a28f9"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.85"
  private_ip_list    = ["10.20.11.85"]
  private_ips        = ["10.20.11.85"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-005593859e32aec64" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/9491db4d-0266-4992-bbad-27ea33ffc350"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.187"
  private_ip_list    = ["10.20.11.187"]
  private_ips        = ["10.20.11.187"]
  private_ips_count  = "0"
  security_groups    = ["sg-00af07a43287c65ba"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-007528980662c2a91" {
  description        = "VPC Endpoint Interface vpce-0d0bf1465fda47013"
  interface_type     = "vpc_endpoint"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.124"
  private_ip_list    = ["10.20.11.124"]
  private_ips        = ["10.20.11.124"]
  private_ips_count  = "0"
  security_groups    = ["sg-0d00d076553481cb5"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0076622ade48ce963" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/71e9b43a-8f0f-4cee-9567-7449a7ac2f7a"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.129"
  private_ip_list    = ["10.20.11.129"]
  private_ips        = ["10.20.11.129"]
  private_ips_count  = "0"
  security_groups    = ["sg-063f9e6e2b18ed441"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0094e9ab149f43442" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/3f159a99-aefe-4790-833e-0969b81ace48"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.249"
  private_ip_list    = ["10.20.10.249"]
  private_ips        = ["10.20.10.249"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-00dd86da794f59834" {
  description        = "AWS Lambda VPC ENI-row-copier-players-prod-row-copier-cron-40e783ec-6270-4ccd-8d18-6e0398788f51"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.18"
  private_ip_list    = ["10.20.11.18"]
  private_ips        = ["10.20.11.18"]
  private_ips_count  = "0"
  security_groups    = ["sg-01d3be7430059d4db"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-00eace8e835b58861" {
  description        = "AWS Lambda VPC ENI-prod-monitor-ff26cfa4-4880-4d2a-a250-7b33413f3b0f"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.148"
  private_ip_list    = ["10.20.10.148"]
  private_ips        = ["10.20.10.148"]
  private_ips_count  = "0"
  security_groups    = ["sg-05f225e225971532b"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-00f413033f27e1039" {
  attachment {
    device_index = "0"
    instance     = "i-0615cb98daca715b3"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.29.32"
  private_ip_list    = ["172.31.29.32"]
  private_ips        = ["172.31.29.32"]
  private_ips_count  = "0"
  security_groups    = ["sg-0498f10ab53b4e33e"]
  source_dest_check  = "true"
  subnet_id          = "subnet-ac1429e6"
}

resource "aws_network_interface" "tfer--eni-01192d80bde7a7ed9" {
  description        = "AWS Lambda VPC ENI: e64bbb87-8b61-4bb7-8295-6975c39585a0"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.162"
  private_ip_list    = ["10.20.10.162"]
  private_ips        = ["10.20.10.162"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0125503b1fc9707da" {
  description        = "ELB app/player/64deb6688dcdede5"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.246"
  private_ip_list    = ["10.20.10.246"]
  private_ips        = ["10.20.10.246"]
  private_ips_count  = "0"
  security_groups    = ["sg-075ee2d0c09048822"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-012778711e533b066" {
  description        = "AWS Lambda VPC ENI-prod-monitor-4eee8638-56a2-b28b-0375-7c8300dcfeab"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.163"
  private_ip_list    = ["10.20.10.163"]
  private_ips        = ["10.20.10.163"]
  private_ips_count  = "0"
  security_groups    = ["sg-05f225e225971532b"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-015ed1d300822fa84" {
  description        = "AWS Lambda VPC ENI-row-copier-playerlegacy-prod-row-copier-cron-7d1eb420-1a95-4739-bb1d-fcd0cd39c0e5"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.132"
  private_ip_list    = ["10.20.11.132"]
  private_ips        = ["10.20.11.132"]
  private_ips_count  = "0"
  security_groups    = ["sg-03194c99ee2fe6df2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0164a7bf5480a4630" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/73c4023e-3673-4df2-b70d-1472b8e6d076"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.129"
  private_ip_list    = ["10.20.10.129"]
  private_ips        = ["10.20.10.129"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-016b47d62cf4a95cf" {
  description        = "AWS Lambda VPC ENI: 08efb83f-5d20-4149-bdeb-5e1887b2b013"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.84"
  private_ip_list    = ["10.20.10.84"]
  private_ips        = ["10.20.10.84"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-017a797a3fd917fcd" {
  description        = "AWS Lambda VPC ENI-sms-opt-in-prod-inbound-sms-3342d8e2-086c-4e07-ba83-c5137ca1989c"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.153"
  private_ip_list    = ["10.20.10.153"]
  private_ips        = ["10.20.10.153"]
  private_ips_count  = "0"
  security_groups    = ["sg-0075536c802632bc3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-017b1933cf35b1e74" {
  description        = "AWS Lambda VPC ENI-one-time-code-lambda-63c5ea0c-3459-4ff9-99c8-73a87a9a3e26"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.68"
  private_ip_list    = ["10.20.10.68"]
  private_ips        = ["10.20.10.68"]
  private_ips_count  = "0"
  security_groups    = ["sg-0ddfbf5000869a7db"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-01a60e27822be4625" {
  description        = "AWS Lambda VPC ENI-power-bi-reports-prod-cashier-query-ae8cfdeb-fde0-4a33-9fe9-9d7d5bed24fe"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.126"
  private_ip_list    = ["10.20.11.126"]
  private_ips        = ["10.20.11.126"]
  private_ips_count  = "0"
  security_groups    = ["sg-0e06cd821e0301498"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-01ac7e6a3b503292d" {
  description        = "VPC Endpoint Interface vpce-0f4ee3598df7e2b39"
  interface_type     = "vpc_endpoint"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.114"
  private_ip_list    = ["10.20.100.114"]
  private_ips        = ["10.20.100.114"]
  private_ips_count  = "0"
  security_groups    = ["sg-08e3a030c8e59bb25"]
  source_dest_check  = "true"
  subnet_id          = "subnet-07d6918830b6abd48"
}

resource "aws_network_interface" "tfer--eni-01ef1a62d5f19cbd0" {
  description        = "AWS Lambda VPC ENI: 88e3cc88-61b5-43b2-8c75-64400523d643"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.15"
  private_ip_list    = ["10.20.10.15"]
  private_ips        = ["10.20.10.15"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0217a7d30f50e216f" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/2c08d833-f39c-4eb4-a7a4-11dc6038f015"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.237"
  private_ip_list    = ["10.20.11.237"]
  private_ips        = ["10.20.11.237"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-021c03ae65f244c45" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/d6e6a219-d7a5-4279-90ad-c0ddf29cb00d"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.197"
  private_ip_list    = ["10.20.11.197"]
  private_ips        = ["10.20.11.197"]
  private_ips_count  = "0"
  security_groups    = ["sg-03dde2bf264e99e63"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-024806e1d471b89ae" {
  description        = "ELB net/nlb/ab25f3ac807d0ea8"
  interface_type     = "network_load_balancer"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.101.122"
  private_ip_list    = ["10.20.101.122"]
  private_ips        = ["10.20.101.122"]
  private_ips_count  = "0"
  source_dest_check  = "false"
  subnet_id          = "subnet-0b79e29e16fd8d71c"
}

resource "aws_network_interface" "tfer--eni-025c501cd2d12d572" {
  description        = "RedshiftNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.182"
  private_ip_list    = ["10.20.100.182"]
  private_ips        = ["10.20.100.182"]
  private_ips_count  = "0"
  security_groups    = ["sg-0abf449eb49a6fab9"]
  source_dest_check  = "true"
  subnet_id          = "subnet-07d6918830b6abd48"
}

resource "aws_network_interface" "tfer--eni-028362687b6d97280" {
  description        = "AWS Lambda VPC ENI: 7e547bfd-4c96-4e9f-8560-147453fbf81e"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.36"
  private_ip_list    = ["10.20.10.36"]
  private_ips        = ["10.20.10.36"]
  private_ips_count  = "0"
  security_groups    = ["sg-0df6f0ff03fbbeba3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-02bc05185e770a3db" {
  description        = "ELB net/nlb/ab25f3ac807d0ea8"
  interface_type     = "network_load_balancer"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.189"
  private_ip_list    = ["10.20.100.189"]
  private_ips        = ["10.20.100.189"]
  private_ips_count  = "0"
  source_dest_check  = "false"
  subnet_id          = "subnet-07d6918830b6abd48"
}

resource "aws_network_interface" "tfer--eni-02deaca01788efe34" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/3103706d-ace9-460d-9db4-d60bf01625e1"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.80"
  private_ip_list    = ["10.20.10.80"]
  private_ips        = ["10.20.10.80"]
  private_ips_count  = "0"
  security_groups    = ["sg-09692131146ac5a26"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-03598174ee04c31ea" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/89873808-41a5-4935-a587-0492cc669b3b"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.192"
  private_ip_list    = ["10.20.10.192"]
  private_ips        = ["10.20.10.192"]
  private_ips_count  = "0"
  security_groups    = ["sg-0902cedd5f90b83aa"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0364819cbab7bd271" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/31db1efd-be99-47f5-8acf-e7fd8fc09502"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.71"
  private_ip_list    = ["10.20.10.71"]
  private_ips        = ["10.20.10.71"]
  private_ips_count  = "0"
  security_groups    = ["sg-063f9e6e2b18ed441"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-038a196df0501a308" {
  attachment {
    device_index = "0"
    instance     = "i-01365104f8da67717"
  }

  description        = "Primary network interface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.233"
  private_ip_list    = ["10.20.11.233"]
  private_ips        = ["10.20.11.233"]
  private_ips_count  = "0"
  security_groups    = ["sg-029389812c7380b2c"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-038b2e41bad7ae992" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/079c73e7-facf-42df-aaa8-619a5ac5273b"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.225"
  private_ip_list    = ["10.20.11.225"]
  private_ips        = ["10.20.11.225"]
  private_ips_count  = "0"
  security_groups    = ["sg-09e521b99ed8a0d58"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-03a5b537524044e25" {
  description        = "ELB app/reports-alb/665b406fa4523ce1"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.7"
  private_ip_list    = ["10.20.11.7"]
  private_ips        = ["10.20.11.7"]
  private_ips_count  = "0"
  security_groups    = ["sg-00af07a43287c65ba"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-03b4505e0e6bfcbb7" {
  description        = "AWS Lambda VPC ENI-one-time-code-lambda-1bfdbc8b-1314-4a95-b3a6-20ba935c870d"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.199"
  private_ip_list    = ["10.20.11.199"]
  private_ips        = ["10.20.11.199"]
  private_ips_count  = "0"
  security_groups    = ["sg-0ddfbf5000869a7db"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-03d3c008cfffe0971" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/666bbc3a-2831-47d9-af86-8bae78eca5d6"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.171"
  private_ip_list    = ["10.20.10.171"]
  private_ips        = ["10.20.10.171"]
  private_ips_count  = "0"
  security_groups    = ["sg-063f9e6e2b18ed441"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-03d7cb0044586eec9" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/bbda74db-071d-46b0-844a-161ddd623b0a"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.128"
  private_ip_list    = ["10.20.11.128"]
  private_ips        = ["10.20.11.128"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0400ede5921290cc3" {
  description        = "AWS Lambda VPC ENI-indexer-lambda-f630c154-db81-4ca9-bebc-ee2378e01ccf"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.174"
  private_ip_list    = ["10.20.10.174"]
  private_ips        = ["10.20.10.174"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-041ac034d601904c4" {
  description        = "VPC Endpoint Interface vpce-0d0bf1465fda47013"
  interface_type     = "vpc_endpoint"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.14"
  private_ip_list    = ["10.20.10.14"]
  private_ips        = ["10.20.10.14"]
  private_ips_count  = "0"
  security_groups    = ["sg-0d00d076553481cb5"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-045f7e05b69abf123" {
  description        = "AWS Lambda VPC ENI-prod-monitor-3c02cd1b-af41-14e7-a398-7afe70384d84"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.48"
  private_ip_list    = ["10.20.10.48"]
  private_ips        = ["10.20.10.48"]
  private_ips_count  = "0"
  security_groups    = ["sg-05f225e225971532b"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-04c06a173dfd93351" {
  description        = "AWS Lambda VPC ENI: ef9b446b-6e46-4df3-a6eb-d6971d3ff948"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.47"
  private_ip_list    = ["10.20.10.47"]
  private_ips        = ["10.20.10.47"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-04c6371a499e47871" {
  description        = "AWS Lambda VPC ENI-rocket-etl-lambda-ed33c12c-0f86-47b4-883d-9ba72117d1bd"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.224"
  private_ip_list    = ["10.20.10.224"]
  private_ips        = ["10.20.10.224"]
  private_ips_count  = "0"
  security_groups    = ["sg-0ff2af863bfa17934"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-04e7d7778e421d124" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/b48db55f-8fd9-401e-8839-86f8e2d987a8"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.41"
  private_ip_list    = ["10.20.11.41"]
  private_ips        = ["10.20.11.41"]
  private_ips_count  = "0"
  security_groups    = ["sg-0902cedd5f90b83aa"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-04fd8f4f348f912de" {
  description        = "VPC Endpoint Interface vpce-0f4ee3598df7e2b39"
  interface_type     = "vpc_endpoint"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.101.220"
  private_ip_list    = ["10.20.101.220"]
  private_ips        = ["10.20.101.220"]
  private_ips_count  = "0"
  security_groups    = ["sg-08e3a030c8e59bb25"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0b79e29e16fd8d71c"
}

resource "aws_network_interface" "tfer--eni-0505b58e86874aa2d" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/0cd74e01-1d51-4b35-873c-241677f006b1"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.29"
  private_ip_list    = ["10.20.11.29"]
  private_ips        = ["10.20.11.29"]
  private_ips_count  = "0"
  security_groups    = ["sg-0902cedd5f90b83aa"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0533930f9e457fd9c" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/24b430b2-594c-4f89-894f-6db7d255678d"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.69"
  private_ip_list    = ["10.20.11.69"]
  private_ips        = ["10.20.11.69"]
  private_ips_count  = "0"
  security_groups    = ["sg-074e54a972387bb95"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-053d2ce6e69141c46" {
  description        = "Interface for NAT Gateway nat-0d9aebc74e176ff04"
  interface_type     = "nat_gateway"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.101.20"
  private_ip_list    = ["10.20.101.20"]
  private_ips        = ["10.20.101.20"]
  private_ips_count  = "0"
  source_dest_check  = "false"
  subnet_id          = "subnet-0b79e29e16fd8d71c"
}

resource "aws_network_interface" "tfer--eni-055ab513c8e7696a2" {
  description        = "AWS Lambda VPC ENI: 4c8e8ca3-4040-4a04-8e82-8328725788fd"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.58"
  private_ip_list    = ["10.20.10.58"]
  private_ips        = ["10.20.10.58"]
  private_ips_count  = "0"
  security_groups    = ["sg-03f71996f91c1edef"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-05744f613976555cf" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/999ca12a-ad9d-4994-9560-692781d7ac3f"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.93"
  private_ip_list    = ["10.20.10.93"]
  private_ips        = ["10.20.10.93"]
  private_ips_count  = "0"
  security_groups    = ["sg-0a20177346b77f28b"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-05bb846fe59cef123" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/461ca05f-6bd8-483b-a990-bd1a519f441a"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.86"
  private_ip_list    = ["10.20.11.86"]
  private_ips        = ["10.20.11.86"]
  private_ips_count  = "0"
  security_groups    = ["sg-074e54a972387bb95"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-05cca897704402fab" {
  description        = "AWS Lambda VPC ENI-age-verification-lambda-26799f31-476d-42c9-8933-d042626cb238"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.101"
  private_ip_list    = ["10.20.10.101"]
  private_ips        = ["10.20.10.101"]
  private_ips_count  = "0"
  security_groups    = ["sg-065260779a3d2cbda"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-05f606cb68c25440b" {
  attachment {
    device_index = "0"
    instance     = "i-03eaa4cd160d46f0d"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.98"
  private_ip_list    = ["10.20.11.98"]
  private_ips        = ["10.20.11.98"]
  private_ips_count  = "0"
  security_groups    = ["sg-0114d31cc820cd8af"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0607359bd7504d318" {
  description        = "Interface for NAT Gateway nat-02af312057f1509ee"
  interface_type     = "nat_gateway"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.175"
  private_ip_list    = ["10.20.100.175"]
  private_ips        = ["10.20.100.175"]
  private_ips_count  = "0"
  source_dest_check  = "false"
  subnet_id          = "subnet-07d6918830b6abd48"
}

resource "aws_network_interface" "tfer--eni-062b2d8abe02c0c0a" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/918a3e02-f67f-401d-addb-0292c250b212"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.173"
  private_ip_list    = ["10.20.10.173"]
  private_ips        = ["10.20.10.173"]
  private_ips_count  = "0"
  security_groups    = ["sg-09e521b99ed8a0d58"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-067e7edd14be1d18c" {
  description        = "RedshiftNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.50"
  private_ip_list    = ["10.20.100.50"]
  private_ips        = ["10.20.100.50"]
  private_ips_count  = "0"
  security_groups    = ["sg-0abf449eb49a6fab9"]
  source_dest_check  = "true"
  subnet_id          = "subnet-07d6918830b6abd48"
}

resource "aws_network_interface" "tfer--eni-06ab83a9168f1f011" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/e3fe575d-d3f4-4e04-a84d-4bbc5f3dd8ec"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.66"
  private_ip_list    = ["10.20.11.66"]
  private_ips        = ["10.20.11.66"]
  private_ips_count  = "0"
  security_groups    = ["sg-019e4241039743f1e"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-06be83f5b48c09057" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/b9af976d-1bf5-4fd7-a425-339228c237c4"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.116"
  private_ip_list    = ["10.20.10.116"]
  private_ips        = ["10.20.10.116"]
  private_ips_count  = "0"
  security_groups    = ["sg-00af07a43287c65ba"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-06fc74b0c0e42e183" {
  description        = "AWS Lambda VPC ENI-age-verification-lambda-e8f09b9e-c018-4333-94e2-d03e0eca3d3c"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.169"
  private_ip_list    = ["10.20.11.169"]
  private_ips        = ["10.20.11.169"]
  private_ips_count  = "0"
  security_groups    = ["sg-065260779a3d2cbda"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-07031ee6018cf8288" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/9fed4820-10b3-4b6c-939d-5e68001a8fdd"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.39"
  private_ip_list    = ["10.20.10.39"]
  private_ips        = ["10.20.10.39"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0717ae80b4c2e15a6" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/cad9d239-a9dc-4d77-ab0c-cf49d41ca3e1"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.148"
  private_ip_list    = ["10.20.11.148"]
  private_ips        = ["10.20.11.148"]
  private_ips_count  = "0"
  security_groups    = ["sg-019e4241039743f1e"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-072970d0e6f340383" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.210"
  private_ip_list    = ["10.20.10.210"]
  private_ips        = ["10.20.10.210"]
  private_ips_count  = "0"
  security_groups    = ["sg-0c35a4474b18863d5"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0774dacea5e70eaf0" {
  description        = "AWS Lambda VPC ENI-clear-tunnel-connection-sqlrunnercron-6fa45f4b-4571-49b4-bcff-3745d96637d6"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.143"
  private_ip_list    = ["10.20.11.143"]
  private_ips        = ["10.20.11.143"]
  private_ips_count  = "0"
  security_groups    = ["sg-0e7e6c6b32be59230"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0839ff725c943d716" {
  description        = "AWS Lambda VPC ENI: d049dccd-10d4-48b9-920b-e73a696c81ab"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.10"
  private_ip_list    = ["10.20.10.10"]
  private_ips        = ["10.20.10.10"]
  private_ips_count  = "0"
  security_groups    = ["sg-0df6f0ff03fbbeba3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-08873680eab420e7c" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/1a235684-550e-44ba-8ea3-69926c146436"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.143"
  private_ip_list    = ["10.20.10.143"]
  private_ips        = ["10.20.10.143"]
  private_ips_count  = "0"
  security_groups    = ["sg-074e54a972387bb95"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-088d646695917f750" {
  description        = "AWS Lambda VPC ENI-sms-opt-in-prod-sms-api-84f26b2a-7a40-4875-8cea-20da5183331d"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.15"
  private_ip_list    = ["10.20.11.15"]
  private_ips        = ["10.20.11.15"]
  private_ips_count  = "0"
  security_groups    = ["sg-0523b69f53aa30d0e"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-091743b5159843726" {
  description        = "AWS Lambda VPC ENI-row-copier-legacylocation-prod-row-copier-cron-18af4c30-9418-4c2a-91c7-30a5f0bd0bc0"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.72"
  private_ip_list    = ["10.20.10.72"]
  private_ips        = ["10.20.10.72"]
  private_ips_count  = "0"
  security_groups    = ["sg-0d6900739eccef946"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-09181798f256f79ce" {
  description        = "AWS Lambda VPC ENI-sms-opt-in-prod-sms-api-6ca2be9a-f650-46c7-bdf4-4b767d81dfdf"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.239"
  private_ip_list    = ["10.20.10.239"]
  private_ips        = ["10.20.10.239"]
  private_ips_count  = "0"
  security_groups    = ["sg-0523b69f53aa30d0e"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0950c5fffae3c05f8" {
  description        = "AWS Lambda VPC ENI-sms-opt-in-prod-inbound-sms-0e00c731-90e3-4f93-93d7-52c391ac8e06"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.232"
  private_ip_list    = ["10.20.11.232"]
  private_ips        = ["10.20.11.232"]
  private_ips_count  = "0"
  security_groups    = ["sg-0075536c802632bc3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-09645da6f1a051bf7" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/616b511d-570f-44f7-bc2c-32d3a0b883f6"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.234"
  private_ip_list    = ["10.20.11.234"]
  private_ips        = ["10.20.11.234"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-09876306c19ff17ae" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/b0c2f111-17e7-4396-9dbd-8bf3e4338ad3"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.103"
  private_ip_list    = ["10.20.10.103"]
  private_ips        = ["10.20.10.103"]
  private_ips_count  = "0"
  security_groups    = ["sg-03dde2bf264e99e63"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0a06f277141352c76" {
  description        = "ELB app/player/64deb6688dcdede5"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.65"
  private_ip_list    = ["10.20.10.65"]
  private_ips        = ["10.20.10.65"]
  private_ips_count  = "0"
  security_groups    = ["sg-075ee2d0c09048822"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0a1f8b64977a51a10" {
  description        = "AWS Lambda VPC ENI: 32f3b757-9eae-4f9e-8589-5dbe31db03ec"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.54"
  private_ip_list    = ["10.20.10.54"]
  private_ips        = ["10.20.10.54"]
  private_ips_count  = "0"
  security_groups    = ["sg-0df6f0ff03fbbeba3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0a31e4138b8c96471" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/2e1c9aa8-77be-48c8-9930-4703655c4efe"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.193"
  private_ip_list    = ["10.20.10.193"]
  private_ips        = ["10.20.10.193"]
  private_ips_count  = "0"
  security_groups    = ["sg-063f9e6e2b18ed441"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0a329bce0c824b959" {
  description        = "ELB app/player/64deb6688dcdede5"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.196"
  private_ip_list    = ["10.20.11.196"]
  private_ips        = ["10.20.11.196"]
  private_ips_count  = "0"
  security_groups    = ["sg-075ee2d0c09048822"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0a461a7319735283b" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/0086b4d0-d410-49c2-a5a7-c3d41c66ff35"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.167"
  private_ip_list    = ["10.20.10.167"]
  private_ips        = ["10.20.10.167"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0a480d0c6bf798d79" {
  description        = "ELB app/reports-alb/665b406fa4523ce1"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.120"
  private_ip_list    = ["10.20.10.120"]
  private_ips        = ["10.20.10.120"]
  private_ips_count  = "0"
  security_groups    = ["sg-00af07a43287c65ba"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0a56c965f1c3e9ef0" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.65"
  private_ip_list    = ["10.20.11.65"]
  private_ips        = ["10.20.11.65"]
  private_ips_count  = "0"
  security_groups    = ["sg-019e0d7419c048856"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0aa3b3bf139c1dcfb" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/e31c54af-2e9f-4732-8d47-8009e851413d"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.157"
  private_ip_list    = ["10.20.10.157"]
  private_ips        = ["10.20.10.157"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0abea2bba5e144297" {
  description        = "ELB app/player/64deb6688dcdede5"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.109"
  private_ip_list    = ["10.20.11.109"]
  private_ips        = ["10.20.11.109"]
  private_ips_count  = "0"
  security_groups    = ["sg-075ee2d0c09048822"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0ac7dcb2ea6c1bf00" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.130"
  private_ip_list    = ["10.20.10.130"]
  private_ips        = ["10.20.10.130"]
  private_ips_count  = "0"
  security_groups    = ["sg-019e0d7419c048856"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0ae900ed80f3b718c" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/8797b3e6-e8b7-46df-afa7-b418415e74c4"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.9"
  private_ip_list    = ["10.20.10.9"]
  private_ips        = ["10.20.10.9"]
  private_ips_count  = "0"
  security_groups    = ["sg-09692131146ac5a26"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0b2100bc0b3aafa93" {
  description        = "AWS Lambda VPC ENI: a44770ee-b4ce-4bc8-88da-6161ef029657"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.137"
  private_ip_list    = ["10.20.10.137"]
  private_ips        = ["10.20.10.137"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0b29ad8690693ddcc" {
  description        = "ELB app/player/64deb6688dcdede5"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.119"
  private_ip_list    = ["10.20.11.119"]
  private_ips        = ["10.20.11.119"]
  private_ips_count  = "0"
  security_groups    = ["sg-075ee2d0c09048822"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0b672ffeebaf53fcf" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/b2bb7c2c-7787-4955-8448-169590886314"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.76"
  private_ip_list    = ["10.20.11.76"]
  private_ips        = ["10.20.11.76"]
  private_ips_count  = "0"
  security_groups    = ["sg-019e4241039743f1e"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0b77a4645ca5dabae" {
  description        = "ELB app/player/64deb6688dcdede5"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.136"
  private_ip_list    = ["10.20.10.136"]
  private_ips        = ["10.20.10.136"]
  private_ips_count  = "0"
  security_groups    = ["sg-075ee2d0c09048822"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0bbe494084aa774d7" {
  description        = "RedshiftNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.48"
  private_ip_list    = ["10.20.100.48"]
  private_ips        = ["10.20.100.48"]
  private_ips_count  = "0"
  security_groups    = ["sg-0abf449eb49a6fab9"]
  source_dest_check  = "true"
  subnet_id          = "subnet-07d6918830b6abd48"
}

resource "aws_network_interface" "tfer--eni-0be9158fba314400c" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/95213bda-f8d2-486d-9868-7b83da3303d6"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.245"
  private_ip_list    = ["10.20.11.245"]
  private_ips        = ["10.20.11.245"]
  private_ips_count  = "0"
  security_groups    = ["sg-09692131146ac5a26"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0bf16822a51d65365" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/fcd76a5a-d445-47c8-8a47-d0b5f0c412d1"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.107"
  private_ip_list    = ["10.20.10.107"]
  private_ips        = ["10.20.10.107"]
  private_ips_count  = "0"
  security_groups    = ["sg-0050e870b9c645858"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0cd4d54cc5461928b" {
  description        = "ElastiCache gen2-redis"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.192"
  private_ip_list    = ["10.20.100.192"]
  private_ips        = ["10.20.100.192"]
  private_ips_count  = "0"
  security_groups    = ["sg-0971f73c233e409e7"]
  source_dest_check  = "true"
  subnet_id          = "subnet-07d6918830b6abd48"
}

resource "aws_network_interface" "tfer--eni-0d01a367523407f9c" {
  description        = "AWS Lambda VPC ENI-power-bi-reports-prod-cashier-query-fbe71ffe-9d26-4c01-9349-f74b10123464"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.212"
  private_ip_list    = ["10.20.10.212"]
  private_ips        = ["10.20.10.212"]
  private_ips_count  = "0"
  security_groups    = ["sg-0e06cd821e0301498"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0d0b5eff9dd13c224" {
  description        = "AWS Lambda VPC ENI-rocket-etl-lambda-2821b0f2-4fac-4231-b6b1-28a09a6c7870"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.247"
  private_ip_list    = ["10.20.11.247"]
  private_ips        = ["10.20.11.247"]
  private_ips_count  = "0"
  security_groups    = ["sg-0ff2af863bfa17934"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0d2c17c28d7391999" {
  description        = "AWS Lambda VPC ENI-clear-tunnel-connection-sqlrunnercron-a14a20e8-3ce8-438f-8e9f-cd99ab5c318e"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.231"
  private_ip_list    = ["10.20.10.231"]
  private_ips        = ["10.20.10.231"]
  private_ips_count  = "0"
  security_groups    = ["sg-0e7e6c6b32be59230"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0d398b708d34430f3" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/3aa7631f-9857-4023-a693-c0743eb56276"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.57"
  private_ip_list    = ["10.20.11.57"]
  private_ips        = ["10.20.11.57"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0d44ebef555f6bbf5" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/c3fb7bda-be27-4309-9733-46fcf8d53f6c"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.181"
  private_ip_list    = ["10.20.11.181"]
  private_ips        = ["10.20.11.181"]
  private_ips_count  = "0"
  security_groups    = ["sg-0a20177346b77f28b"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0d541b0093443e44f" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.188"
  private_ip_list    = ["10.20.11.188"]
  private_ips        = ["10.20.11.188"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0d611a76fb207395d" {
  description        = "ELB app/portal/d8b10a6a47bdf009"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.211"
  private_ip_list    = ["10.20.100.211"]
  private_ips        = ["10.20.100.211"]
  private_ips_count  = "0"
  security_groups    = ["sg-06d59a5e786ab73fd"]
  source_dest_check  = "true"
  subnet_id          = "subnet-07d6918830b6abd48"
}

resource "aws_network_interface" "tfer--eni-0d672693b44b80ead" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.230"
  private_ip_list    = ["10.20.11.230"]
  private_ips        = ["10.20.11.230"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0d6e8bb30aad6f218" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.216"
  private_ip_list    = ["10.20.11.216"]
  private_ips        = ["10.20.11.216"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0d7c2a9bec13ae76a" {
  description        = "ELB app/portal/d8b10a6a47bdf009"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.101.150"
  private_ip_list    = ["10.20.101.150"]
  private_ips        = ["10.20.101.150"]
  private_ips_count  = "0"
  security_groups    = ["sg-06d59a5e786ab73fd"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0b79e29e16fd8d71c"
}

resource "aws_network_interface" "tfer--eni-0d8a5adde594afa28" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.149"
  private_ip_list    = ["10.20.11.149"]
  private_ips        = ["10.20.11.149"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0d8d409f1bbc31035" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.159"
  private_ip_list    = ["10.20.11.159"]
  private_ips        = ["10.20.11.159"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0d9d0bfa300f55852" {
  description        = "AWS Lambda VPC ENI-row-copier-players-prod-row-copier-cron-254982ff-3668-434f-ae97-9957a2011002"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.57"
  private_ip_list    = ["10.20.10.57"]
  private_ips        = ["10.20.10.57"]
  private_ips_count  = "0"
  security_groups    = ["sg-01d3be7430059d4db"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0db8204d96aac7ecc" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.136"
  private_ip_list    = ["10.20.11.136"]
  private_ips        = ["10.20.11.136"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0dc02406989c8b6ed" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.23"
  private_ip_list    = ["10.20.11.23"]
  private_ips        = ["10.20.11.23"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0dc19c98870302e92" {
  description        = "AWS Lambda VPC ENI-prod-monitor-90148274-2033-c4d1-aa58-96f4af8a2263"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.13"
  private_ip_list    = ["10.20.10.13"]
  private_ips        = ["10.20.10.13"]
  private_ips_count  = "0"
  security_groups    = ["sg-05f225e225971532b"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0dd20db2bf89af3db" {
  description        = "AWS Lambda VPC ENI: a01ca4a0-b2c1-4d5f-b604-91074bfdb15c"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.17"
  private_ip_list    = ["10.20.10.17"]
  private_ips        = ["10.20.10.17"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0dd301ac159fc6ff7" {
  description        = "AWS Lambda VPC ENI: 4a09a652-57ad-4665-8edf-ea36bbd890e2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.106"
  private_ip_list    = ["10.20.10.106"]
  private_ips        = ["10.20.10.106"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0de83dac16f7ad2fc" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.244"
  private_ip_list    = ["10.20.11.244"]
  private_ips        = ["10.20.11.244"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0df032e5fa402a9d4" {
  description        = "AWS Lambda VPC ENI-prod-monitor-ddc923ee-34ee-4bd8-b773-c8384ea17ffe"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.88"
  private_ip_list    = ["10.20.11.88"]
  private_ips        = ["10.20.11.88"]
  private_ips_count  = "0"
  security_groups    = ["sg-05f225e225971532b"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0df5025191364239b" {
  description        = "AWS Lambda VPC ENI-row-copier-playerlegacy-prod-row-copier-cron-cae68003-1e0c-47bf-909c-c626d794e60e"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.41"
  private_ip_list    = ["10.20.10.41"]
  private_ips        = ["10.20.10.41"]
  private_ips_count  = "0"
  security_groups    = ["sg-03194c99ee2fe6df2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0dffeb6d0710eef55" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.180"
  private_ip_list    = ["10.20.10.180"]
  private_ips        = ["10.20.10.180"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0e01bd4be69d8fbd1" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.52"
  private_ip_list    = ["10.20.10.52"]
  private_ips        = ["10.20.10.52"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0e0bd9f1371692764" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.60"
  private_ip_list    = ["10.20.10.60"]
  private_ips        = ["10.20.10.60"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0e16f5de68947e203" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.13"
  private_ip_list    = ["10.20.11.13"]
  private_ips        = ["10.20.11.13"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0e1bde824724db8f5" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.104"
  private_ip_list    = ["10.20.11.104"]
  private_ips        = ["10.20.11.104"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0e3e938536b20c22e" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.94"
  private_ip_list    = ["10.20.10.94"]
  private_ips        = ["10.20.10.94"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0e42c238babc51604" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/a537653c-eca5-4d8c-8c65-f4a6faaf7e88"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.83"
  private_ip_list    = ["10.20.11.83"]
  private_ips        = ["10.20.11.83"]
  private_ips_count  = "0"
  security_groups    = ["sg-063f9e6e2b18ed441"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0e5504e427ee94b4d" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.25"
  private_ip_list    = ["10.20.11.25"]
  private_ips        = ["10.20.11.25"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0e77d66e442369c3f" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.240"
  private_ip_list    = ["10.20.11.240"]
  private_ips        = ["10.20.11.240"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0e81d9b1cdda3a8ec" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.151"
  private_ip_list    = ["10.20.10.151"]
  private_ips        = ["10.20.10.151"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0e81f8ea06e2ee0ca" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.7"
  private_ip_list    = ["10.20.10.7"]
  private_ips        = ["10.20.10.7"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0e8e46e23eb79eea1" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.211"
  private_ip_list    = ["10.20.11.211"]
  private_ips        = ["10.20.11.211"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0e9155834ff1864f7" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.217"
  private_ip_list    = ["10.20.10.217"]
  private_ips        = ["10.20.10.217"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0ea8944b2c71fbecf" {
  description        = "RedshiftNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.100.31"
  private_ip_list    = ["10.20.100.31"]
  private_ips        = ["10.20.100.31"]
  private_ips_count  = "0"
  security_groups    = ["sg-0abf449eb49a6fab9"]
  source_dest_check  = "true"
  subnet_id          = "subnet-07d6918830b6abd48"
}

resource "aws_network_interface" "tfer--eni-0ebe2d559241c93ab" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.244"
  private_ip_list    = ["10.20.10.244"]
  private_ips        = ["10.20.10.244"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0ed50ea8ed05f0e76" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/2a721a02-06af-4430-9981-909cba4df62a"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.90"
  private_ip_list    = ["10.20.11.90"]
  private_ips        = ["10.20.11.90"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0ed788ef0a4a9b9cb" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.174"
  private_ip_list    = ["10.20.11.174"]
  private_ips        = ["10.20.11.174"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0ee57501f71d793d8" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.18"
  private_ip_list    = ["10.20.10.18"]
  private_ips        = ["10.20.10.18"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0eee74a6debc5d48d" {
  description        = "AWS Lambda VPC ENI: 295a1621-fa1c-4e26-9340-5d31a36faee7"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.25"
  private_ip_list    = ["10.20.10.25"]
  private_ips        = ["10.20.10.25"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0ef7f260d872cc66d" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.159"
  private_ip_list    = ["10.20.10.159"]
  private_ips        = ["10.20.10.159"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0efd3b150f50d8be2" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.226"
  private_ip_list    = ["10.20.10.226"]
  private_ips        = ["10.20.10.226"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0f0a6371931fabb03" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.181"
  private_ip_list    = ["10.20.10.181"]
  private_ips        = ["10.20.10.181"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0f0e239fe3327c744" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.208"
  private_ip_list    = ["10.20.10.208"]
  private_ips        = ["10.20.10.208"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0f1e21e5490afc41f" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.16"
  private_ip_list    = ["10.20.11.16"]
  private_ips        = ["10.20.11.16"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0f31541705cb94a54" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.107"
  private_ip_list    = ["10.20.11.107"]
  private_ips        = ["10.20.11.107"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0f49341289321de48" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.114"
  private_ip_list    = ["10.20.10.114"]
  private_ips        = ["10.20.10.114"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0f848b91693a9caa4" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/2bf6b0c5-7cde-409e-b316-42441db2c811"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.19"
  private_ip_list    = ["10.20.10.19"]
  private_ips        = ["10.20.10.19"]
  private_ips_count  = "0"
  security_groups    = ["sg-019e4241039743f1e"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0f8704375eced6839" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/d401b39d-fbb3-47c7-a4b6-3f0d2bca19d7"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.5"
  private_ip_list    = ["10.20.10.5"]
  private_ips        = ["10.20.10.5"]
  private_ips_count  = "0"
  security_groups    = ["sg-032d29010900e1c66"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0f8b47d0ab81d0b1b" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.195"
  private_ip_list    = ["10.20.10.195"]
  private_ips        = ["10.20.10.195"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0fa9b616f266a4993" {
  description        = "AWS Lambda VPC ENI: 506d1805-266e-4d6c-9625-4f6d378d6f73"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.73"
  private_ip_list    = ["10.20.10.73"]
  private_ips        = ["10.20.10.73"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0fbbb528bc3482a87" {
  description        = "arn:aws:ecs:us-east-1:799611636099:attachment/71e0e6ce-40d9-43ae-8cad-46ed871ab988"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.156"
  private_ip_list    = ["10.20.10.156"]
  private_ips        = ["10.20.10.156"]
  private_ips_count  = "0"
  security_groups    = ["sg-074e54a972387bb95"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0fcccd9cd23d74f7d" {
  description        = "AWS Lambda VPC ENI-indexer-lambda-255f7de1-fa79-46a6-acfc-3695f45aefc7"
  interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.207"
  private_ip_list    = ["10.20.11.207"]
  private_ips        = ["10.20.11.207"]
  private_ips_count  = "0"
  security_groups    = ["sg-0caf9494a308209a2"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0fd18a0893911f449" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.164"
  private_ip_list    = ["10.20.10.164"]
  private_ips        = ["10.20.10.164"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0fdba3faeee311784" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.204"
  private_ip_list    = ["10.20.11.204"]
  private_ips        = ["10.20.11.204"]
  private_ips_count  = "0"
  security_groups    = ["sg-0c35a4474b18863d5"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0ffa0bcde86e26688" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.253"
  private_ip_list    = ["10.20.11.253"]
  private_ips        = ["10.20.11.253"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0ffaca4358d8b1b91" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.11.172"
  private_ip_list    = ["10.20.11.172"]
  private_ips        = ["10.20.11.172"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-017cb385e5acdbec2"
}

resource "aws_network_interface" "tfer--eni-0ffb941ba0c9670db" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.122"
  private_ip_list    = ["10.20.10.122"]
  private_ips        = ["10.20.10.122"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}

resource "aws_network_interface" "tfer--eni-0ffd196e3a0862e6f" {
  description        = "ES gen2"
  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "10.20.10.189"
  private_ip_list    = ["10.20.10.189"]
  private_ips        = ["10.20.10.189"]
  private_ips_count  = "0"
  security_groups    = ["sg-0f858c3374258edd3"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0f592478c6198fa9e"
}
