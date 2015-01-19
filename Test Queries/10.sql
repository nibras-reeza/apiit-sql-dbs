select FIRST_NAME, LAST_NAME from PATIENT where 
	PATIENT_ID in 
		(select distinct PATIENT_ID from APPOINTMENT where 
			APPOINTMENT_ID in 
				(select DIAGNOSED_ON from DIAGNOSIS where 
					DIAGNOSIS like('Cancer'))) 
order by PATIENT_ID asc;