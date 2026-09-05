variable "snowflake_organization" {
  description = "Snowflake organization name"
  type        = string
  sensitive   = false
}

variable "snowflake_account" {
  description = "Snowflake account name"
  type        = string
  sensitive   = false
}

variable "snowflake_user" {
  description = "Snowflake Terraform service user"
  type        = string
  sensitive   = false
}

variable "snowflake_password" {
  description = "Snowflake user password"
  type        = string
  sensitive   = true
}

