resource "aws_glue_catalog_table" "tfer--circlek-prod-warehouse-metastore-003A-warehouse_public_bi_report_ad" {
  catalog_id    = "799611636099"
  database_name = "circlek-prod-warehouse-metastore"
  name          = "warehouse_public_bi_report_ad"
  owner         = "owner"

  parameters = {
    CrawlerSchemaDeserializerVersion = "1.0"
    CrawlerSchemaSerializerVersion   = "1.0"
    UPDATED_BY_CRAWLER               = "Circle K Redshift Warehouse Crawler"
    classification                   = "redshift"
    compressionType                  = "none"
    connectionName                   = "Circle K Redshift Warehouse"
    typeOfData                       = "table"
  }

  retention = "0"

  storage_descriptor {
    columns {
      name = "adcategory"
      type = "string"
    }

    columns {
      name = "adid"
      type = "int"
    }

    columns {
      name = "adname"
      type = "string"
    }

    columns {
      name = "adsource"
      type = "string"
    }

    columns {
      name = "adsubcategory"
      type = "string"
    }

    columns {
      name = "adtype"
      type = "string"
    }

    columns {
      name = "cashiercode"
      type = "string"
    }

    columns {
      name = "cashierid"
      type = "bigint"
    }

    columns {
      name = "division"
      type = "string"
    }

    columns {
      name = "market"
      type = "string"
    }

    columns {
      name = "offers"
      type = "bigint"
    }

    columns {
      name = "points"
      type = "bigint"
    }

    columns {
      name = "region"
      type = "decimal(4,0)"
    }

    columns {
      name = "storenumber"
      type = "int"
    }

    columns {
      name = "upsellcount"
      type = "bigint"
    }

    columns {
      name = "weekending"
      type = "string"
    }

    compressed        = "false"
    location          = "warehouse.public.bi_report_ad"
    number_of_buckets = "-1"

    parameters = {
      CrawlerSchemaDeserializerVersion = "1.0"
      CrawlerSchemaSerializerVersion   = "1.0"
      UPDATED_BY_CRAWLER               = "Circle K Redshift Warehouse Crawler"
      classification                   = "redshift"
      compressionType                  = "none"
      connectionName                   = "Circle K Redshift Warehouse"
      typeOfData                       = "table"
    }

    stored_as_sub_directories = "false"
  }

  table_type = "EXTERNAL_TABLE"
}

resource "aws_glue_catalog_table" "tfer--circlek-prod-warehouse-metastore-003A-warehouse_public_bi_report_cashier" {
  catalog_id    = "799611636099"
  database_name = "circlek-prod-warehouse-metastore"
  name          = "warehouse_public_bi_report_cashier"
  owner         = "owner"

  parameters = {
    CrawlerSchemaDeserializerVersion = "1.0"
    CrawlerSchemaSerializerVersion   = "1.0"
    UPDATED_BY_CRAWLER               = "Circle K Redshift Warehouse Crawler"
    classification                   = "redshift"
    compressionType                  = "none"
    connectionName                   = "Circle K Redshift Warehouse"
    typeOfData                       = "table"
  }

  retention = "0"

  storage_descriptor {
    columns {
      name = "baskets"
      type = "bigint"
    }

    columns {
      name = "cashiercode"
      type = "string"
    }

    columns {
      name = "cashiername"
      type = "string"
    }

    columns {
      name = "division"
      type = "string"
    }

    columns {
      name = "market"
      type = "string"
    }

    columns {
      name = "offers"
      type = "bigint"
    }

    columns {
      name = "points"
      type = "bigint"
    }

    columns {
      name = "rated1"
      type = "bigint"
    }

    columns {
      name = "rated2"
      type = "bigint"
    }

    columns {
      name = "rated3"
      type = "bigint"
    }

    columns {
      name = "rated4"
      type = "bigint"
    }

    columns {
      name = "rated5"
      type = "bigint"
    }

    columns {
      name = "region"
      type = "decimal(4,0)"
    }

    columns {
      name = "storenumber"
      type = "int"
    }

    columns {
      name = "upsells"
      type = "bigint"
    }

    columns {
      name = "weekending"
      type = "string"
    }

    compressed        = "false"
    location          = "warehouse.public.bi_report_cashier"
    number_of_buckets = "-1"

    parameters = {
      CrawlerSchemaDeserializerVersion = "1.0"
      CrawlerSchemaSerializerVersion   = "1.0"
      UPDATED_BY_CRAWLER               = "Circle K Redshift Warehouse Crawler"
      classification                   = "redshift"
      compressionType                  = "none"
      connectionName                   = "Circle K Redshift Warehouse"
      typeOfData                       = "table"
    }

    stored_as_sub_directories = "false"
  }

  table_type = "EXTERNAL_TABLE"
}
