resource "aws_instance" "tfer--i-01365104f8da67717_DynamoDB-0020---0020-Medium-0020---0020-2020-10" {
  ami                         = "ami-0947d2ba12ee1ff75"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "2"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "ec2-ddb-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.medium"
  ipv6_address_count                   = "0"
  key_name                             = "ddb-ec2"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.20.11.233"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}"

  tags = {
    Info = "Utility server for running dynamo bulk change scripts faster than running locally"
    Name = "DynamoDB - Medium - 2020-10"
  }

  tags_all = {
    Info = "Utility server for running dynamo bulk change scripts faster than running locally"
    Name = "DynamoDB - Medium - 2020-10"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-029389812c7380b2c"]
}

resource "aws_instance" "tfer--i-03eaa4cd160d46f0d_ec2-indexer-multiple" {
  ami                         = "ami-09d3b3274b6c5d4aa"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count          = "2"
  cpu_threads_per_core    = "2"
  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "Indexer_EC2_role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m6a.xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "ec2-indexer-multiple-prod"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "10.20.11.98"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "16"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}"

  tags = {
    Name = "ec2-indexer-multiple"
  }

  tags_all = {
    Name = "ec2-indexer-multiple"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0114d31cc820cd8af"]
}

resource "aws_instance" "tfer--i-0615cb98daca715b3_mock_loyalty" {
  ami                         = "ami-0d5eff06f840b45e9"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1d"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "4"
  cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.2xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "mock-loyalty"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "172.31.29.32"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  security_groups   = ["launch-wizard-11"]
  source_dest_check = "true"
  subnet_id         = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-ac1429e6_id}"

  tags = {
    Name = "mock_loyalty"
  }

  tags_all = {
    Name = "mock_loyalty"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0498f10ab53b4e33e"]
}
