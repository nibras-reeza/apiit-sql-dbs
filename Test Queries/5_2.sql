insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('14','1-16-2014','19:34:00','PT00000025','DT00000001','16','ST00000001');

select * from APPOINTMENT where PATIENT_ID='PT00000025';