	
create table APPOINTMENT(APPOINTMENT_ID int identity(0,1) not null,
						APPOINTMENT_NUMBER smallint not null,
						APPOINTMENT_DATE date not null,
						APPOINTMENT_TIME time,
						PATIENT_ID char(10) not null,
						DOCTOR_ID char(10) not null,
						PAYMENT int,
						SECRETARY char(10) not null,
						constraint APPOINTMENT_PK primary key(APPOINTMENT_ID),
						constraint APPOINTMENT_PATIENT_FK
							foreign key(PATIENT_ID) references PATIENT(PATIENT_ID),
						constraint APPOINTMENT_DOCTOR_FK
							foreign key(DOCTOR_ID) references DOCTOR(DOCTOR_ID),
						constraint APPOINTMENT_PAYMENT_FK
							foreign key(PAYMENT) references PAYMENT(PAYMENT_ID),
						constraint APPOINTMENT_STAFF_FK
							foreign key(SECRETARY) references STAFF(STAFF_ID),
						constraint APPOINTMENT_PRACTITIONERS_ONLY
							check(dbo.IS_PRACTICE_DOCTOR(DOCTOR_ID)=1),
						constraint APPOINTMENT_SECRATARY_ONLY
							check(dbo.IS_SECRATARY(SECRETARY)=1));
select * from APPOINTMENT;

create table DIAGNOSIS(DIAGNOSIS_ID int identity(0,1) not null,
						DIAGNOSIS varchar(120) not null,
						DIAGNOSED_ON int not null,
						LAST_APPOINTMENT int not null,
						FOLLOW_UP text,
						constraint DIAGNOSIS_PK primary key(DIAGNOSIS_ID),
						constraint DIAGNOSIS_APP 
							foreign key(DIAGNOSED_ON) references APPOINTMENT(APPOINTMENT_ID),
						constraint DIAGNOSIS_LAST_APP 
							foreign key(LAST_APPOINTMENT) references APPOINTMENT(APPOINTMENT_ID),
						constraint APPOINTMENT_ORDER
							check (LAST_APPOINTMENT>=DIAGNOSED_ON));
select * from 	DIAGNOSIS;			

