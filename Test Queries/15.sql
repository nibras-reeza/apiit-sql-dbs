select STAFF.FIRST_NAME, STAFF.LAST_NAME, NURSE.WARD from STAFF 
	inner join NURSE on 
		NURSE.NURSE_ID=STAFF.STAFF_ID 
	where 
		STAFF_ID not in 
			(select NURSE from IN_PATIENT)
	