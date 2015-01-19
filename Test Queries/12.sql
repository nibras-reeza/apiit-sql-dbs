select FIRST_NAME, LAST_NAME from STAFF where 
	STAFF_ID in 
		(select NURSE from IN_PATIENT) 
	and 
	STAFF_ID in 
		(select NURSE_ID from NURSE where WARD=1)