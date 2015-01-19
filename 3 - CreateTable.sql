

/*
Only research doctors can work in a lab. (stackoverflow, 2013) 
Therefore, a function was created to check this since MS SQL does not allow subqueries in check.
(stackoverflow, 2013) 
 stackoverflow. 2013. sql - Sub queries in check constraint - Stack Overflow. [online] 
 Available at: http://stackoverflow.com/questions/13000698/sub-queries-in-check-constraint [Accessed: 19 Jan 2014].
*/




create table RESEARCHER(DOCTOR_ID char(10) not null,
						LAB_CODE varchar(8) not null,
						constraint RESEARCH_DOCTOR_FK foreign key(DOCTOR_ID) references DOCTOR(DOCTOR_ID),
						constraint RESEARCH_LAB_FK foreign key(LAB_CODE) references LAB(CODE),
						constraint RESEARCH_DOCTORS 
							check(dbo.IS_RESEARCH_DOCTOR(DOCTOR_ID)=1));
select * from RESEARCHER;


create table EMERGENCY_CONTACT_PATIENT
	(PATIENT_ID char(10) not null,
	EMERGENCY_CONTACT int not null,
	constraint ECP_PATIENT_FK foreign key(PATIENT_ID) references PATIENT(PATIENT_ID),
	constraint ECP_CONTACT_FK 
		foreign key(EMERGENCY_CONTACT) references EMERGENCY_CONTACT(CONTACT_ID));
select * from EMERGENCY_CONTACT_PATIENT;										

