terraform {
  required_version = "~> 1.16.0"

  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "2.20.0"
    }
  }

}

provider "snowflake" {
  organization_name = var.snowflake_organization
  account_name      = var.snowflake_account

  user     = var.snowflake_user
  password = var.snowflake_password

  role                     = "ACCOUNTADMIN"
  preview_features_enabled = ["snowflake_table_resource"]
}