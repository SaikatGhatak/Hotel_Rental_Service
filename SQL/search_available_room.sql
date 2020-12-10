
CREATE OR REPLACE FUNCTION search_available_room(
  input_room_type IN  HRS_OURDATABASE.RESERVATION.RESERVATION_ID%TYPE
	input_checkin_date IN  HRS_OURDATABASE.RESERVATION.CHECK_IN%TYPE
	input_checkout_date IN  HRS_OURDATABASE.RESERVATION.CHECK_OUT%TYPE
) RETURN HRS_OURDATABASE.ROOM%ROWTYPE
AS
 room_row_record HRS_OURDATABASE.ROOM%ROWTYPE;
 room_row_record HRS_OURDATABASE.ROOM%ROWTYPE;
 room_row_record HRS_OURDATABASE.ROOM%ROWTYPE;
BEGIN
  SELECT CUSTOMER_ID
  INTO   CID
  FROM   HRS_OURDATABASE.RESERVATION
  WHERE  RESERVATION_ID=reservation_id

  SELECT *
  INTO   customer_row_record
  FROM   HRS_OURDATABASE.CUSTOMER
  WHERE  CUSTOMER_ID=CID
	
	SELECT RM.ROOM_TYPE,NVL(RN.ROOM_ID,-1),RN.BOOKING_DATE,NVL(RN.CHECK_IN,-1),(RN.CHECK_OUT,-1)
	FROM ROOM RM LEFT OUTER JOIN RESERVATION RN

	ON (RM.ROOM_ID = RN.ROOM_ID)

	WHERE (ROOM_TYPE=input_room_type) AND (input_checkout <= RN.CHECK_IN OR input_checkin >= RN.CHECK_OUT)
	ORDER BY RN.BOOKING_DATE ASC;
  RETURN customer_row_record;
END;