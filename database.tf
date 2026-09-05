resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database managed by Terraform"
}