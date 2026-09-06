resource "snowflake_schema" "sales" {
  database = snowflake_database.demo_db.name
  name     = "SALES"

  comment = "Sales schema managed by Terraform"
}
resource "snowflake_schema" "customer" {
  database = snowflake_database.demo_db.name
  name     = "CUSTOMER"

  comment = "Customer schema managed by Terraform"
}
resource "snowflake_schema" "ajith_customer" {
  database = snowflake_database.AJITH_TERRAFORM_DB.name
  name     = "AJITH_CUSTOMER"

  comment = "Customer schema managed by Terraform"
}