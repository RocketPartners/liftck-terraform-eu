resource "aws_ssm_parameter" "tfer---002F-rocket-etl-002F-datasource-002F-g1_lift" {
  arn       = "arn:aws:ssm:us-east-1:799611636099:parameter/rocket-etl/datasource/g1_lift"
  data_type = "text"
  name      = "/rocket-etl/datasource/g1_lift"
  tier      = "Standard"
  type      = "String"
  value     = "{\n      \"driver\": \"com.mysql.jdbc.Driver\",\n      \"url\": \"jdbc:mysql://liftprod.cwf1nqwkubwc.us-east-1.rds.amazonaws.com:3306/server8\",\n      \"username\": \"liftAdmin\",\n      \"password\": \"MzQN2e!x$F\"\n    }"
}

resource "aws_ssm_parameter" "tfer---002F-rocket-etl-002F-datasource-002F-lift" {
  arn       = "arn:aws:ssm:us-east-1:799611636099:parameter/rocket-etl/datasource/lift"
  data_type = "text"
  name      = "/rocket-etl/datasource/lift"
  tier      = "Standard"
  type      = "String"
  value     = "{\n      \"driver\": \"com.mysql.jdbc.Driver\",\n      \"url\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\",\n      \"username\": \"cirkadmin\",\n      \"password\": \"QJrz8dQ7aifpYThpyYfxCFfC2\"\n    }"
}

resource "aws_ssm_parameter" "tfer---002F-rocket-etl-002F-datasource-002F-mssql_warehouse" {
  arn       = "arn:aws:ssm:us-east-1:799611636099:parameter/rocket-etl/datasource/mssql_warehouse"
  data_type = "text"
  name      = "/rocket-etl/datasource/mssql_warehouse"
  tier      = "Standard"
  type      = "String"
  value     = "{\n      \"driver\": \"com.microsoft.sqlserver.jdbc.SQLServerDriver\",\n      \"url\": \"jdbc:sqlserver://ck-bi-db-2.cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:1433;database=ck_bi;useBulkCopyForBatchInsert=true;disableStatementPooling=false; statementPoolingCacheSize=10;\",\n      \"username\": \"ck_bi_master\",\n      \"password\": \"UGyx0ASabDvVh8miMWA0\"\n    }"
}

resource "aws_ssm_parameter" "tfer---002F-rocket-etl-002F-datasource-002F-warehouse" {
  arn       = "arn:aws:ssm:us-east-1:799611636099:parameter/rocket-etl/datasource/warehouse"
  data_type = "text"
  name      = "/rocket-etl/datasource/warehouse"
  tier      = "Standard"
  type      = "String"
  value     = "{\n      \"driver\": \"com.amazon.redshift.jdbc42.Driver\",\n      \"url\": \"jdbc:redshift://redshift.circleklift.com:5439/warehouse?ssl=false;BlockingRowsMode=1000;\",\n      \"username\": \"liftadmin\",\n      \"password\": \"mdYu3829GTfx91qPr2wc7\"\n    }"
}
