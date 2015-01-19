/*
Some tables have foreign key relationships. Since Microsoft SQL does not allow
creating foreign key relationships in a table unless referenced field already 
exists in the other table, the create table statements were started with simple
tables with no relationships and progressively moved towards tables with more
relationships.

Microsoft SQL does not support creating custom domains. Although it allows a 
CREATE TYPE statement, it only allows specifying data type and whether the field
can be unique, no custom types are defined.

SQL is case insensitive. Therefore, to ensure clarity, all variables and table
names are typed in uppercase while keywords are typed in lowercase to easily
distinguish commands and user defined names.

As first step, a database was created by issuing following command. A separate
schema was not created and default schema was used.
*/

create database APH;

/*
All create table statements were followed with a select * statement to graphically
display table structure in screenshots. Additionally, named constraints were used
instead of default constraints to allow changing constrains easily.
*/
create table DOCTOR_TYPE(CODE char(1) not null, 
						NAME varchar(20) not null, 
						DESCRIPTION varchar(40), 
						constraint DOCTOR_TYPE_PK primary key(CODE),
						constraint DOCTOR_TYPE_CODE check(CODE in ('P','R'))
						);
/*
Currently, only PRACTITIONERS and RESEARCHERS are recognized. So, a domain constraint
is applied.
*/

create table LAB(CODE varchar(8) not null, 
				LOCATION varchar(20) not null, 
				FOCUS varchar(20) not null,
				constraint LAB_PK primary key(CODE),
				constraint LAB_FOCUS check(FOCUS in('Cancer', 'Cardiology', 'Gynaecology')));
select * from LAB;

/*
Research labs can have a specific research area of focus and these are limited to
Cancer, Cardiology, and Gynaecology as given in requirements.
*/

create table POSITION(CODE varchar(3) not null,
					DESIGNATION varchar(15) not null,
					OFFICE_LOCATION varchar(20),
					constraint POSITION_PK primary key(CODE));
select * from POSITION;

/*
Staff such as nurse may not have an office.
*/

create table EMERGENCY_CONTACT(CONTACT_ID int IDENTITY(0,1),
							FIRST_NAME varchar(20) not null,
							LAST_NAME varchar(20),
							ADDRESS	varchar(160),
							PHONE varchar(15),
							constraint EMERGENCY_CONTACT_PK primary key(CONTACT_ID));
select * from EMERGENCY_CONTACT;							

/*
A surrogate key is used to identify each emergency contact uniquely. It is a numeric key of type
int and it increments by 1 starting from 0. It is also assumed that the last name of an emergency
contact or his address may not be available. However, for a contact to be considered an emergency
contact, he/she must possess a name and a valid phone number. Since MS SQL does not fully support
regex, this feature could not be implemented fully.

Next, parent tables with a single dependency but used as a reference in other tables like patient,
doctor and staff tables were implemented.
*/

create table PATIENT(PATIENT_ID char(10) not null,
					FIRST_NAME varchar(20) not null,
					LAST_NAME varchar(20) not null,
					GENDER char(1) not null,
					AGE smallint not null,
					DATE_OF_BIRTH date,
					STREET_ADDRESS_1 varchar(120),
					STREET_ADDRESS_2 varchar(80),
					CITY varchar(20),
					HOME_PHONE varchar(15),
					MOBILE_PHONE varchar(15),
					constraint PATIENT_PK primary key(PATIENT_ID),
					constraint PATIENT_GENDER check(GENDER in ('M','F')),
					constraint PATIENT_AGE check(AGE between 0 AND 200),
					constraint PATIENT_PHONE check (not(HOME_PHONE is null AND MOBILE_PHONE is null)));
select * from PATIENT;			

/*
Patient ID is a natural key generated by hospital staff. It is assumed to have a constant length.
Certain information such as name, gender and age of a patient are considered important and hence
required. A patient is required to provided at least phone number. Emergency contact is not made 
not null since out-patients may not list an emergency contact. However, as an eterprise constraint
all in-patients will be required to list an emergency contact. Since the table for in-patients has
not been created yet. This constraint cannot be added now.
*/

create table DOCTOR(DOCTOR_ID char(10) not null,
					FIRST_NAME varchar(20) not null,
					LAST_NAME varchar(20) not null,
					GENDER char(1) not null,
					AGE smallint,
					DATE_OF_BIRTH date,
					STREET_ADDRESS_1 varchar(120),
					STREET_ADDRESS_2 varchar(80),
					CITY varchar(20),
					HOME_PHONE varchar(15),
					MOBILE_PHONE varchar(15) not null,
					DOCTOR_TYPE char(1) not null,
					constraint DOCTOR_PK primary key(DOCTOR_ID),
					constraint DOCTOR_GENDER check(GENDER in ('M','F')),
					constraint DOCTOR_AGE check(AGE between 0 AND 200),
					constraint DOCTOR_TYPE_FK foreign key(DOCTOR_TYPE) references DOCTOR_TYPE(CODE));
select * from DOCTOR;	

/*
A doctor is required to provide a mobile phone number.
*/

create table STAFF(STAFF_ID char(10) not null,
					FIRST_NAME varchar(20) not null,
					LAST_NAME varchar(20) not null,
					GENDER char(1) not null,
					AGE smallint,
					DATE_OF_BIRTH date,
					STREET_ADDRESS_1 varchar(120),
					STREET_ADDRESS_2 varchar(80),
					CITY varchar(20),
					HOME_PHONE varchar(15),
					MOBILE_PHONE varchar(15) not null,
					POSITION varchar(3) not null,
					constraint STAFF_PK primary key(STAFF_ID),
					constraint STAFF_GENDER check(GENDER in ('M','F')),
					constraint STAFF_AGE check(AGE between 0 AND 200),
					constraint STAFF_TYPE_FK foreign key(POSITION) references POSITION(CODE));
select * from STAFF;	


/*
Next intermdiate tables used to map many-to-many relatioships were generated. A primary key
was not assigned explicitly in these tables hence MS SQL automatically resorting to considering
all columns as a composit primary key which is the desired outcome.
*/