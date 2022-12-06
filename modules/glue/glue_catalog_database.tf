resource "aws_glue_catalog_database" "tfer--circlek-prod-warehouse-metastore" {
  catalog_id = "799611636099"

  create_table_default_permission {
    permissions = ["ALL"]

    principal {
      data_lake_principal_identifier = "IAM_ALLOWED_PRINCIPALS"
    }
  }

  name = "circlek-prod-warehouse-metastore"
}
