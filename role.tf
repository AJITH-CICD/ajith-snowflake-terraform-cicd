resource "snowflake_account_role" "sales_analyst" {
  name    = "SALES_ANALYST"
  comment = "Sales analyst role managed by Terraform"
}
resource "snowflake_account_role" "test_analyst" {
  name    = "TEST_ANALYST"
  comment = "Test analyst role managed by Terraform"
}
resource "snowflake_account_role" "Terraform_cicd_role" {
  name    = "TERRAFORM_CICD_ROLE"
  comment = "Terraform CICD role managed by Terraform"
}