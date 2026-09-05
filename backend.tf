terraform {
  cloud {
    organization = "AJITH-SNOWFLAKE"

    workspaces {
      name = "snowflake-dev"
    }
  }
}