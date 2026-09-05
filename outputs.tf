output "database_name" {
  value = snowflake_database.demo_db.name
}

output "schema_name" {
  value = snowflake_schema.sales.name
}

output "warehouse_name" {
  value = snowflake_warehouse.demo_wh.name
}

output "role_name" {
  value = snowflake_account_role.sales_analyst.name
}

output "table_name" {
  value = snowflake_table.customers.name
}