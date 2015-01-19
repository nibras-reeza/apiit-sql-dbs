update PATIENT 
	set STREET_ADDRESS_1 ='30 union place', CITY='Colombo'
	where 
		PATIENT_ID=
			(select PATIENT_ID from PATIENT where FIRST_NAME='James' AND LAST_NAME='Bond');
select STREET_ADDRESS_1,CITY  from PATIENT where FIRST_NAME='James' AND LAST_NAME='Bond';