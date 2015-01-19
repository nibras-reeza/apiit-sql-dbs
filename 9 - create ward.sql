/*
	Ward and nurse have cyclic relationships. Hence, they cannot be created and edited at once
	with all constraints. Therefore, first WARD table was created without a foreign key relation
	with NURSE.
*/
create table WARD(WARD_NUMBER int not null,
				LOCATION varchar(20) not null,
				HEAD_NURSE char(10),
				constraint WARD_PK primary key(WARD_NUMBER));
select * from WARD;				
/*
Then, the WARD table was populated.
*/

