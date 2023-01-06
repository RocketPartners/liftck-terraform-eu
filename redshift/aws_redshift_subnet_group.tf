resource "aws_redshift_subnet_group" "redshiftdev-cluster-1" {
  name       = "redshiftdev-public-subnet-group"
  subnet_ids = [var.pub_sub_1_id, var.pub_sub_2_id]
}