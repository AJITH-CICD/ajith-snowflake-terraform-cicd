resource "snowflake_execute" "ajith_customers_sample_data" {
  execute = <<-SQL
    MERGE INTO "${snowflake_database.AJITH_TERRAFORM_DB.name}"."${snowflake_schema.ajith_customer.name}"."${snowflake_table.ajith_customers.name}" AS target
    USING (
      SELECT 900001 AS CUSTOMER_ID, 'Ajith Kumar' AS CUSTOMER_NAME
      UNION ALL
      SELECT 900002 AS CUSTOMER_ID, 'Snowflake Demo' AS CUSTOMER_NAME
    ) AS source
    ON target.CUSTOMER_ID = source.CUSTOMER_ID
    WHEN NOT MATCHED THEN INSERT (CUSTOMER_ID, CUSTOMER_NAME)
      VALUES (source.CUSTOMER_ID, source.CUSTOMER_NAME)
  SQL

  revert = <<-SQL
    DELETE FROM "${snowflake_database.AJITH_TERRAFORM_DB.name}"."${snowflake_schema.ajith_customer.name}"."${snowflake_table.ajith_customers.name}"
    WHERE CUSTOMER_ID IN (900001, 900002)
  SQL

  depends_on = [snowflake_table.ajith_customers]
}
