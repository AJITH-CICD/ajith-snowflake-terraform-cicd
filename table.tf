resource "snowflake_table" "customers" {
  database = snowflake_database.demo_db.name
  schema   = snowflake_schema.sales.name
  name     = "CUSTOMERS"

  column {
    name = "CUSTOMER_ID"
    type = "NUMBER"
  }

  column {
    name = "CUSTOMER_NAME"
    type = "VARCHAR"
  }

  column {
    name = "EMAIL"
    type = "VARCHAR"
  }

  column {
    name = "CREATED_DATE"
    type = "DATE"
  }

  comment = "Customer table managed by Terraform"
}