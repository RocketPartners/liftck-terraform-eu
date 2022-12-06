resource "aws_glue_crawler" "tfer--Circle-0020-K-0020-Redshift-0020-Warehouse-0020-Crawler" {
  database_name = "circlek-prod-warehouse-metastore"

  jdbc_target {
    connection_name = "Circle K Redshift Warehouse"
    path            = "warehouse/public/bi_report_%"
  }

  lineage_configuration {
    crawler_lineage_settings = "DISABLE"
  }

  name = "Circle K Redshift Warehouse Crawler"

  recrawl_policy {
    recrawl_behavior = "CRAWL_EVERYTHING"
  }

  role = "circlek-prod-glue-role"

  schema_change_policy {
    delete_behavior = "DEPRECATE_IN_DATABASE"
    update_behavior = "UPDATE_IN_DATABASE"
  }
}
