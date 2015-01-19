create table NURSE(NURSE_ID char(10) not null,
					WARD int not null,
					constraint NURSE_PK primary key(NURSE_ID),
					constraint NURSE_STAFF_FK
						foreign key(NURSE_ID) references STAFF(STAFF_ID),
					constraint NURSE_WARD_FK
						foreign key(WARD) references WARD(WARD_NUMBER),
					constraint NURSE_STAFF_ONLY
						check (dbo.IS_NURSE(NURSE_ID)=1));


create table IN_PATIENT(PATIENT_ID char(10) not null,
						ROOM int not null,
						NURSE char(10) not null,
						constraint PATIENT_FK 
							foreign key(PATIENT_ID) references PATIENT(PATIENT_ID),
						constraint PATIENT_WARD
							foreign key(NURSE) references NURSE(NURSE_ID));
select * from IN_PATIENT;

