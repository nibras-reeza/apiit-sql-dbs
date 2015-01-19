select HOME_PHONE,MOBILE_PHONE from PATIENT where 
	PATIENT_ID in (select PATIENT_ID from APPOINTMENT where 
		APPOINTMENT_DATE=dateadd(day,1,convert(date,GETDATE()))) 
	AND LAST_NAME like('Cruise') AND FIRST_NAME like('Tom');