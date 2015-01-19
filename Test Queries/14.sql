select count(*) as MALE_PATIENTS from PATIENT where 
	GENDER='M' 
and 
	PATIENT_ID in 
		(select PATIENT_ID from IN_PATIENT)