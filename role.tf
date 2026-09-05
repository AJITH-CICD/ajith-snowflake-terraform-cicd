resource "snowflake_account_role" "sales_analyst" {
  name    = "SALES_ANALYST"
  comment = "Sales analyst role managed by Terraform"
}