/*
Sample data obtained from 
	http://www.fakenamegenerator.com
	
Full credits and license information given at the end of this document.
*/
insert into DOCTOR_TYPE(CODE, NAME, DESCRIPTION) values('P','Practitioner', 'Medical Practitioners');
insert into DOCTOR_TYPE(CODE, NAME, DESCRIPTION) values('R','Researcher', 'Medical Researchers');
	
select * from DOCTOR_TYPE;


insert into LAB(CODE, LOCATION, FOCUS) values('lb000c7','North Wing','Cancer');
insert into LAB(CODE, LOCATION, FOCUS) values('lb000h5','South Wing','Cardiology');
insert into LAB(CODE, LOCATION, FOCUS) values('lb000c3','5th Floor','Cancer');
insert into LAB(CODE, LOCATION, FOCUS) values('lb000h1','8th Floor','Cardiology');
insert into LAB(CODE, LOCATION, FOCUS) values('lb000g9','7th Floor','Gynaecology');
insert into LAB(CODE, LOCATION, FOCUS) values('lb000c0','East Wing','Cancer');
				
select * from LAB;





insert into EMERGENCY_CONTACT(FIRST_NAME, LAST_NAME, ADDRESS, PHONE) values ('Mikayla','Pelders','Rua Condes Torre 40','21 245 137 3844');
insert into EMERGENCY_CONTACT(FIRST_NAME, LAST_NAME, ADDRESS, PHONE) values ('Alpatu','Ibragimov','Hauwaart 341','0482 12 44 51');
insert into EMERGENCY_CONTACT(FIRST_NAME, LAST_NAME, ADDRESS, PHONE) values ('Zlata','Šimic','1995 Redbud Drive','347-724-0210');
insert into EMERGENCY_CONTACT(FIRST_NAME, LAST_NAME, ADDRESS, PHONE) values ('Robel','Asfaha','92 Walden Road','077 1178 1175');
insert into EMERGENCY_CONTACT(FIRST_NAME, LAST_NAME, ADDRESS, PHONE) values ('Gira','Valaxar','R Combatentes G Guerra 23','21 239 821 4125');
insert into EMERGENCY_CONTACT(FIRST_NAME, LAST_NAME, ADDRESS, PHONE) values ('Vada','Rejac','Democracia 83','9662 6179');
insert into EMERGENCY_CONTACT(FIRST_NAME, LAST_NAME, ADDRESS, PHONE) values ('Pamela','Mills','Via Rocca de Baldi 94','0357 8735224');

select * from EMERGENCY_CONTACT;							

/*
A surrogate key is used to identify each emergency contact uniquely. It is a numeric key of type
int and it increments by 1 starting from 0. It is also assumed that the last name of an emergency
contact or his address may not be available. However, for a contact to be considered an emergency
contact, he/she must possess a name and a valid phone number. Since MS SQL does not fully support
regex, this feature could not be implemented fully.
*/

insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000001','Fleurette','Lematre','F','86','6-28-1928','3230 Stanley Avenue','','Colombo','052 291 52 63','516-452-3323');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000002','Anka','Aksnes','F','73','3-2-1941','ul. Nasienna 132','','Nugegoda','0497 46 57 02','66 573 02 25');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000003','Shouko','Yoshihara','F','29','5-7-1985','Fa?s???? 145','','Nawala','03.27.75.99.11','2249422');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000004','Abdulvakhid','Ryzaev','M','44','11-5-1970','Victor Hugo u. 23.','','Dehiwela','9695 3388','(95) 433-577');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000005','Edina','De Silva','F','71','12-24-1943','R Engenheiro Duarte Pacheco 27','','Rajagiriya','53 210 17 39','21 272 460 4539');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000006','Nate','Mercer','M','25','5-9-1989','132 Rue Wanes Chbil','','Gampaha','68 30 91','78 554 232');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000007','Almaz','Nebay','F','18','7-10-1996','K�lm�n Imre u. 73.','','Galle','394 4410','(92) 392-393');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000008','Julia','Roberts','F','18','3-7-1996','Generaal Hakewill Smithlaan 148','','Kandy','21 272 235 9970','06-67099918');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000009','Andreas','Frandsen','M','25','2-5-1989','36 Rue du Niger','','Galle','0384 6973605','72 598 372');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000010','Elbek','Eldarkhanov','M','21','10-22-1993','Democracia 18','','Kandy','72 412 95 77','9845 4065');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000011','Ai','Cheng','F','80','1-13-1934','Plaza Maior 91','','Rajagiriya','082 160 0094','923 335 822');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000012','Ellal','Unarrh','F','52','6-21-1962','Piazza Indipendenza 125','','Gampaha','082 499 7479','032 479 82 74');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000013','Chirimorinkaari','','M','64','3-1-1950','64 Ronald Crescent','','Galle','051-000-254','(07) 4983 4100');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000014','Nadia','Hansen','F','5','1-4-2009','751 Montreal Road','','Colombo','470 3965','613-740-4635');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000015','Sophie','Hofmann','F','22','8-7-1992','Bygg�avegur 47','','Nugegoda','66 847 73 07','457 4520');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000016','Timmie','Sandberg','M','38','2-7-1976','Nyborgveien 232','','Nawala','21 214 292 7563','478 74 439');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000017','Kinji','Horikawa','M','39','1-21-1971','Bygget 17','','Dehiwela','21 234 712 0687','0372-6751784');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000018','Tom','Cruise','M','40','6/22/1979','Fügnerova 1397','','Rajagiriya','736 845 443','72 598 372');
	
insert into PATIENT
	(PATIENT_ID, FIRST_NAME, LAST_NAME, GENDER, AGE, DATE_OF_BIRTH, STREET_ADDRESS_1, STREET_ADDRESS_2, CITY,
					HOME_PHONE, MOBILE_PHONE)
	values('PT00000019','James','Bond','M','41','3/13/1987','Dalmatinova 54','','Gampaha','031-687-554','9845 4065');
					
select * from PATIENT;			


insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000001','Nyék','Orbán','M','75','5/19/1939','Oijärventie 95','Dehiwela','0342 2625064','0680 677 04 45','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000002','Júlia','Sousa','F','70','2/20/1944','Via del Piave 142','Rajagiriya','061 356 11 97','0488 59 01 20','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000003','Jarþrúður','Valtýsdóttir','F','31','3/26/1983','Neubertbogen 9','Gampaha','06-28825642','01.32.42.58.98','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000004','Winta','Kiros','F','70','2/27/1944','Griftdijk Zuid 127','Galle','21 218 464 1601','01.97.96.05.61','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000005','Reynir','Klemenzson','M','6','3/12/2008','Avenida Paris 112','Kandy','01.65.73.15.80','21 289 493 9913','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000006','Odo','Underhill','M','35','4/22/1979','81 rue des Lacs','Galle','9683 5009','07133 19 12 38','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000007','Eleonora','Lucciano','F','50','9/18/1964','Colón 16','Kandy','60 168 75 64','383 1185','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000008','Kristian','Lundblad','M','52','12/4/1962','ul. Cieszkowskiego Augusta 100','Rajagiriya','9792 8795','514-961-4384','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000009','Li Rong','Tsou','F','3','8/15/2011','Hugo Reta 68','Gampaha','0411-7106775','05533 94 01 81','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000010','Marina','Oliveira','F','28','2/10/1986','Anders Sadelmakares Gränd 70','Galle','01.54.98.21.24','972 900 240','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000011','Medardo','Arce','M','9','5/22/2005','14 rue Cazade','Colombo','702-555-0427','0479 53 60 36','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000012','Kornelia','Šuput','F','28','6/15/1986','558 Hall Street','Nugegoda','031-682-804','0483 68 20 72','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000013','Hu','Tsui','M','64','6/23/1950','Turjaška 118','Nawala','0913-2426895','607 466 877','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000014','萌','津志田','F','69','1/12/1945','Bursiljum 36','Dehiwela','046 251 1111','070 0826 8720','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000015','Lucyna','Silva','F','81','7/16/1933','Kluuvikatu 4','Rajagiriya','772 343 258','2822755','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000016','Vincent','Campbell','M','34','5/13/1980','Ke hřišti 969','Gampaha','046 602 1131','046 372 1268','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000017','Leigha','Ritchie','F','80','6/28/1934','Tuulimyllyntie 61','Colombo','050 583 4112','07444 98 46 11','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000018','Alvar','Strömberg','M','41','8/1/1973','Kangasmoisionkatu 18','Nugegoda','083 224 4427','31 73 71','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000019','Cupido','Jaramillo','M','37','5/18/1977','431 Telford Ave','Nawala','031-7601281','0478-3377493','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000020','Lina','Napolitani','F','85','3/21/1929','Mållångsbo 78','Dehiwela','01.32.08.76.59','0492 84 64 67','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000021','Largo','Brownlock','M','68','6/10/1946','19 rue des Dunes','Rajagiriya','(36) 165-581','463 741 801','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000022','Anthony','Haszler','M','59','9/9/1955','Erzsébet tér 9.','Gampaha','(08) 9090 4400','01.92.21.81.02','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000023','Alexander','Indrák','M','77','12/20/1937','60 Porana Place','Galle','(08) 8225 7730','(08) 8729 2882','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000024','Ivanna','Wollan','F','9','2/12/2005','96 Henley Beach Road','Kandy','9432 4379','0664 652 95 02','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000025','Raina','Lajeunesse','F','70','10/29/1944','Ibirapita 85','Galle','21 228 118 4664','082 373 1452','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000026','John','Silva','M','86','9/17/1928','R Rampa Alta 75','Kandy','0354 2791995','461 3286','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000027','Debra','Pfeiffer','F','28','6/19/1986','Viale delle Province 14','Rajagiriya','(029) 0083-722','0676 530 04 43','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000028','L Vixis','Trothir','F','51','7/2/1963','77 Airport Road','Gampaha','21 271 724 1574','0647-3264385','P');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000029','Taisa','Ibragimov','F','32','11/9/1982','R Principal 3','Galle','9976 9275','(028) 7817-576','R');
	
insert into DOCTOR(DOCTOR_ID,FIRST_NAME,LAST_NAME,GENDER,AGE,DATE_OF_BIRTH,STREET_ADDRESS_1,CITY,
					HOME_PHONE,MOBILE_PHONE,DOCTOR_TYPE)
	values('DT00000030','Božena','Měsíčková','F','83','7/27/1931','Sarandí 27','Colombo','0699 666 66 66','7735460','P');

select * from DOCTOR;	




insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000003','lb000c0');
insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000005','lb000c3');
insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000009','lb000c7');
insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000011','lb000g9');
insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000015','lb000h1');
insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000017','lb000h5');
insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000021','lb000c7');
insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000023','lb000c0');
insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000027','lb000c3');
insert into RESEARCHER(DOCTOR_ID,LAB_CODE) values('DT00000029','lb000h5');

select * from RESEARCHER;


insert into EMERGENCY_CONTACT_PATIENT values('PT00000005',0);
insert into EMERGENCY_CONTACT_PATIENT values('PT00000007',2);
insert into EMERGENCY_CONTACT_PATIENT values('PT00000009',3);
insert into EMERGENCY_CONTACT_PATIENT values('PT00000011',4);
insert into EMERGENCY_CONTACT_PATIENT values('PT00000013',5);
insert into EMERGENCY_CONTACT_PATIENT values('PT00000015',6);
insert into EMERGENCY_CONTACT_PATIENT values('PT00000017',1);

select * from EMERGENCY_CONTACT_PATIENT;										


insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('12-18-2012','12:9:1','25740','CASH','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('3-25-2012','14:16:53','47165','CHEQUE','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('9-8-2010','23:2:26','1869','CREDITCARD','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('1-12-2011','14:32:8','29499','CASH','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('3-18-2010','0:25:58','7842','CHEQUE','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('4-11-2012','17:34:11','41551','CREDITCARD','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('6-21-2010','20:3:49','15044','CASH','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('5-14-2011','12:45:50','13481','CHEQUE','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('6-6-2010','21:55:26','41304','CREDITCARD','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('9-25-2012','22:48:7','3148','CASH','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('9-25-2012','13:43:16','48325','CHEQUE','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('8-14-2010','7:2:26','35768','CREDITCARD','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('3-8-2010','13:10:36','15663','CASH','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('4-24-2011','20:48:55','18152','CHEQUE','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('12-23-2012','14:23:22','13683','CREDITCARD','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('3-27-2012','3:53:19','40028','CASH','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('1-21-2010','7:59:23','3431','CHEQUE','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('11-28-2010','1:38:27','44229','CREDITCARD','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('7-16-2011','15:54:51','19225','CASH','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('6-8-2010','9:17:33','18941','CHEQUE','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('11-16-2011','19:42:40','48417','CREDITCARD','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('2-21-2012','3:35:55','37513','CASH','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('9-1-2011','7:27:9','26726','CHEQUE','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('7-27-2012','9:43:7','5028','CREDITCARD','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('2-6-2010','6:10:18','38531','CASH','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('8-2-2010','14:3:41','15497','CHEQUE','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('10-16-2010','6:34:31','35875','CREDITCARD','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('12-6-2012','12:20:13','4469','CASH','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('11-20-2012','16:21:11','35112','CHEQUE','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('10-1-2010','2:50:28','32180','CREDITCARD','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('2-19-2011','13:6:31','21238','CASH','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('6-27-2012','6:46:18','16968','CHEQUE','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('8-16-2012','6:45:44','1417','CREDITCARD','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('6-11-2012','18:26:22','34995','CASH','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('10-19-2010','11:42:27','40258','CHEQUE','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('3-28-2011','22:22:39','47911','CREDITCARD','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('4-10-2010','3:51:16','12635','CASH','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('12-22-2010','13:36:45','9015','CHEQUE','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('5-1-2011','1:55:41','27130','CREDITCARD','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('3-19-2012','12:42:18','21405','CASH','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('9-8-2011','10:51:13','32319','CHEQUE','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('4-17-2011','6:16:53','33242','CREDITCARD','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('7-13-2012','15:32:0','17122','CASH','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('1-5-2010','12:42:51','26417','CHEQUE','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('3-10-2011','2:28:9','35564','CREDITCARD','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('10-14-2011','2:41:18','34002','CASH','ST00000013');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('7-10-2012','21:0:9','17586','CHEQUE','ST00000008');

insert into PAYMENT(PAYMENT_DATE,PAYMENT_TIME,AMOUNT,PAYMENT_MODE,CASHIER)
	values('1-14-2011','7:44:29','20243','CREDITCARD','ST00000013');

select * from PAYMENT;

	
insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('29','1-27-2014','20:44:00','PT00000003','DT00000001',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('50','1-26-2014','19:21:00','PT00000006','DT00000002','33','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('20','1-9-2014','12:21:00','PT00000002','DT00000004',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('36','1-27-2014','12:12:00','PT00000002','DT00000006',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('38','1-18-2014','18:12:00','PT00000001','DT00000007',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('34','1-12-2014','11:8:00','PT00000004','DT00000008',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('41','1-27-2014','18:51:00','PT00000002','DT00000010','23','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('45','1-16-2014','16:36:00','PT00000004','DT00000012',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('17','1-6-2014','9:7:00','PT00000005','DT00000013','55','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('46','1-28-2014','8:55:00','PT00000003','DT00000014','24','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('21','1-5-2014','16:42:00','PT00000008','DT00000016','14','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('32','1-28-2014','17:51:00','PT00000008','DT00000018',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('7','1-24-2014','9:24:00','PT00000007','DT00000019','24','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('39','1-23-2014','15:29:00','PT00000009','DT00000020','39','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('45','1-20-2014','20:59:00','PT00000002','DT00000022','45','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('11','1-16-2014','10:52:00','PT00000005','DT00000024',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('36','1-7-2014','10:42:00','PT00000006','DT00000025','51','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('27','1-16-2014','15:58:00','PT00000001','DT00000026','45','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('32','1-8-2014','12:11:00','PT00000009','DT00000028','32','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('28','1-27-2014','8:45:00','PT00000002','DT00000030','54','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('27','1-26-2014','14:39:00','PT00000007','DT00000001',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('33','1-4-2014','13:34:00','PT00000009','DT00000002','47','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('17','1-10-2014','15:30:00','PT00000001','DT00000004',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('23','1-1-2014','11:9:00','PT00000019','DT00000006',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('26','1-12-2014','17:48:00','PT00000018','DT00000007',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('20','1-14-2014','15:31:00','PT00000016','DT00000008','27','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('43','1-3-2014','15:33:00','PT00000014','DT00000010',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('12','1-11-2014','14:9:00','PT00000011','DT00000012','11','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('47','1-8-2014','17:31:00','PT00000019','DT00000013','23','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('43','1-29-2014','21:21:00','PT00000018','DT00000014',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('14','1-22-2014','16:34:00','PT00000010','DT00000016','16','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('5','1-2-2014','16:48:00','PT00000015','DT00000018',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('10','1-6-2014','9:22:00','PT00000014','DT00000019',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('5','1-1-2014','13:16:00','PT00000016','DT00000020',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('37','1-19-2014','12:28:00','PT00000012','DT00000022',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('32','1-12-2014','8:10:00','PT00000016','DT00000024','36','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('29','1-18-2014','11:50:00','PT00000013','DT00000025',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('13','1-1-2014','13:57:00','PT00000017','DT00000026',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('16','1-14-2014','18:42:00','PT00000017','DT00000028','52','ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('27','1-14-2014','15:30:00','PT00000010','DT00000030',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('33','1-2-2014','8:58:00','PT00000011','DT00000001',null,'ST00000001');

insert into APPOINTMENT(APPOINTMENT_NUMBER,APPOINTMENT_DATE,APPOINTMENT_TIME,PATIENT_ID,DOCTOR_ID,PAYMENT,SECRETARY)
	values('14','1-28-2014','17:28:00','PT00000015','DT00000002','45','ST00000001');
					
select * from APPOINTMENT;


insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('Cancer','3','3','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('Viral Flu','23','23','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('Dengue','41','41','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('Malaria','2','2','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('CHD','4','4','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('Cancer','39','39','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('Viral Flu','22','22','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('Dengue','37','37','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('Malaria','27','27','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('CHD','17','17','Take these pills');

insert into DIAGNOSIS(DIAGNOSIS,DIAGNOSED_ON,LAST_APPOINTMENT,FOLLOW_UP)
	values('Dengue','33','33','Take these pills');
	
select * from 	DIAGNOSIS;			


insert into IN_PATIENT(PATIENT_ID,ROOM,NURSE) values('PT00000002','6','ST00000007');
insert into IN_PATIENT(PATIENT_ID,ROOM,NURSE) values('PT00000003','5','ST00000009');
insert into IN_PATIENT(PATIENT_ID,ROOM,NURSE) values('PT00000004','1','ST00000010');
insert into IN_PATIENT(PATIENT_ID,ROOM,NURSE) values('PT00000005','9','ST00000011');
insert into IN_PATIENT(PATIENT_ID,ROOM,NURSE) values('PT00000006','11','ST00000012');
insert into IN_PATIENT(PATIENT_ID,ROOM,NURSE) values('PT00000007','5','ST00000014');

select * from IN_PATIENT;

		
/*

COPYRIGHT AND DISTRIBUTION

Fake Name Generator identities are copyright 2012 Corban Works, LLC.

Fake Name Generator identities are dual-licensed under the GPLv3 and Creative
Commons Attribution-Share Alike 3.0 United States licenses. You may choose
either license, but are bound to the terms of the license you choose. You may
not use the Fake Name Generator identities without choosing a license.

For full license details, please visit:
http://www.fakenamegenerator.com/license.php

-------------------------------------------------------------------------------
*/