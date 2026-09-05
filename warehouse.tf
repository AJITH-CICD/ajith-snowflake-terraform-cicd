resource "snowflake_warehouse" "demo_wh" {
  name           = "DEMO_WH"
  warehouse_size = "XSMALL"

  auto_suspend = 60
  auto_resume  = true

  comment = "Warehouse managed by Terraform"
}