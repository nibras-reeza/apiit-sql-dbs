select DOCTOR_ID,FIRST_NAME, LAST_NAME from DOCTOR where 
	DOCTOR_ID in 
		(select distinct DOCTOR_ID from APPOINTMENT where 
			APPOINTMENT_ID in 
				(select DIAGNOSED_ON from DIAGNOSIS where 
					DIAGNOSIS like('Cancer'))) 
