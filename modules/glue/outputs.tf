output "aws_glue_catalog_database_tfer--circlek-prod-warehouse-metastore_id" {
  value = "${aws_glue_catalog_database.tfer--circlek-prod-warehouse-metastore.id}"
}

output "aws_glue_catalog_table_tfer--circlek-prod-warehouse-metastore-003A-warehouse_public_bi_report_ad_id" {
  value = "${aws_glue_catalog_table.tfer--circlek-prod-warehouse-metastore-003A-warehouse_public_bi_report_ad.id}"
}

output "aws_glue_catalog_table_tfer--circlek-prod-warehouse-metastore-003A-warehouse_public_bi_report_cashier_id" {
  value = "${aws_glue_catalog_table.tfer--circlek-prod-warehouse-metastore-003A-warehouse_public_bi_report_cashier.id}"
}

output "aws_glue_crawler_tfer--Circle-0020-K-0020-Redshift-0020-Warehouse-0020-Crawler_id" {
  value = "${aws_glue_crawler.tfer--Circle-0020-K-0020-Redshift-0020-Warehouse-0020-Crawler.id}"
}
