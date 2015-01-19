select sum(AMOUNT) as TOTAL from PAYMENT where 
	PAYMENT_ID in 
		(select PAYMENT from APPOINTMENT where PATIENT_ID=
			(select PATIENT_ID from PATIENT where 
				FIRST_NAME='James' AND LAST_NAME='Bond'))