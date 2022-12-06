resource "aws_docdb_cluster_instance" "tfer--cirk-prod" {
  auto_minor_version_upgrade   = "true"
  availability_zone            = "us-east-1b"
  ca_cert_identifier           = "rds-ca-2019"
  cluster_identifier           = "cirk-prod"
  engine                       = "aurora-mysql"
  identifier                   = "cirk-prod"
  instance_class               = "db.r5.4xlarge"
  preferred_maintenance_window = "sun:11:05-sun:11:35"
  promotion_tier               = "0"

  tags = {
    workload-type = "other"
  }

  tags_all = {
    workload-type = "other"
  }
}

resource "aws_docdb_cluster_instance" "tfer--cirk-prod-us-east-1a" {
  auto_minor_version_upgrade   = "true"
  availability_zone            = "us-east-1a"
  ca_cert_identifier           = "rds-ca-2019"
  cluster_identifier           = "cirk-prod"
  engine                       = "aurora-mysql"
  identifier                   = "cirk-prod-us-east-1a"
  instance_class               = "db.r5.4xlarge"
  preferred_maintenance_window = "sun:11:05-sun:11:35"
  promotion_tier               = "0"
}

resource "aws_docdb_cluster_instance" "tfer--cirk-services" {
  auto_minor_version_upgrade   = "true"
  availability_zone            = "us-east-1b"
  ca_cert_identifier           = "rds-ca-2019"
  cluster_identifier           = "cirk-services"
  engine                       = "aurora-mysql"
  identifier                   = "cirk-services"
  instance_class               = "db.r5.xlarge"
  preferred_maintenance_window = "mon:09:52-mon:10:22"
  promotion_tier               = "1"
}

resource "aws_docdb_cluster_instance" "tfer--cirk-services-us-east-1a" {
  auto_minor_version_upgrade   = "true"
  availability_zone            = "us-east-1a"
  ca_cert_identifier           = "rds-ca-2019"
  cluster_identifier           = "cirk-services"
  engine                       = "aurora-mysql"
  identifier                   = "cirk-services-us-east-1a"
  instance_class               = "db.r5.xlarge"
  preferred_maintenance_window = "thu:07:43-thu:08:13"
  promotion_tier               = "1"
}
