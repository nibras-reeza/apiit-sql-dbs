select FIRST_NAME,LAST_NAME,HOME_PHONE,MOBILE_PHONE from DOCTOR where 
	DOCTOR_ID in (select DOCTOR_ID from APPOINTMENT where 
		PATIENT_ID=
			(select PATIENT_ID from PATIENT where 
				FIRST_NAME='Julia' and LAST_NAME='Roberts'))