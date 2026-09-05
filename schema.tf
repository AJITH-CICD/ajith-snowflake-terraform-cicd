resource "snowflake_schema" "sales" {
  database = snowflake_database.demo_db.name
  name     = "SALES"

  comment = "Sales schema managed by Terraform"
}