CREATE OR REPLACE FUNCTION customer_information(
  input_customer_id IN  HRS_OURDATABASE.CUSTOMER.CUSTOMER_ID%TYPE
) RETURN HRS_OURDATABASE.CUSTOMER%ROWTYPE
AS
 customer_row_record HRS_OURDATABASE.CUSTOMER_ID%ROWTYPE;
BEGIN
  SELECT *
  INTO   customer_row_record
  FROM   HRS_OURDATABASE.CUSTOMER
  WHERE  CUSTOMER_ID=input_customer_id

  RETURN customer_row_record;
END;
/
/*
DECLARE
    
BEGIN
   
END;
/
 */