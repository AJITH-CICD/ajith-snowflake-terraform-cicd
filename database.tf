resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database managed by Terraform"
}
resource "snowflake_database" "TEST_DB" {
  name    = "TEST_DB"
  comment = "Database managed by Terraform"
}