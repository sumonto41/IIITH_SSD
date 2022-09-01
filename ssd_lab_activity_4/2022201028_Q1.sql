DELIMITER $$
CREATE PROCEDURE `agent`()
BEGIN
DECLARE finished INTEGER DEFAULT 0;
	DEClARE cus
		CURSOR FOR 
			SELECT CUST_NAME,CUST_CITY, CUST_COUNTRY, GRADE, AGENT_CODE FROM employees;
	OPEN cus;

	detail: LOOP
		FETCH cus INTO emailAddress;
		IF finished = 1 THEN 
			LEAVE detail;
		END IF;
		-- build email list
		IF AGENT_CODE like "A00%" THEN
			select CUST_NAME,CUST_CITY, CUST_COUNTRY, GRADE;
		END IF;
	END LOOP detail;
	CLOSE cus;
END$$
DELIMITER ;

call agent();