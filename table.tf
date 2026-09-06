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

resource "snowflake_table" "ajith_customers" {
  database = snowflake_database.AJITH_TERRAFORM_DB.name
  schema   = snowflake_schema.ajith_customer.name
  name     = "AJITH_CUSTOMERS"

  column {
    name = "CUSTOMER_ID"
    type = "NUMBER"
  }

  column {
    name = "CUSTOMER_NAME"
    type = "VARCHAR"
  }

  comment = "Customer table managed by Terraform"
}