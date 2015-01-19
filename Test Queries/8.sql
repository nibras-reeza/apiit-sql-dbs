select count(APPOINTMENT_ID) as APPOINTMENTS_TOMORROW
	from APPOINTMENT where 
		APPOINTMENT_DATE=dateadd(day,1,convert(date,getdate()))