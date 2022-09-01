DELIMITER $$
CREATE PROCEDURE `Bangcst`(IN `name` nvarchar(20))
BEGIN
	select CUST_NAME from customer where WORKING_AREA=name;
END$$
DELIMITER ;
call Bangcst("Bangalore");
