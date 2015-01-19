update WARD
	set HEAD_NURSE='ST00000002' where WARD_NUMBER=1;

update WARD
	set HEAD_NURSE='ST00000003' where WARD_NUMBER=2;
	
update WARD
	set HEAD_NURSE='ST00000004' where WARD_NUMBER=3;
	
update WARD
	set HEAD_NURSE='ST00000006' where WARD_NUMBER=4;
	
update WARD
	set HEAD_NURSE='ST00000009' where WARD_NUMBER=5;

alter table WARD
	add 
		constraint WARD_NURSE_FK foreign key(HEAD_NURSE) references NURSE(NURSE_ID),
		constraint HEAD_REQ check(HEAD_NURSE is not null);