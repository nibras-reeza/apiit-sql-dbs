update IN_PATIENT
	set NURSE='ST00000002' where 
	NURSE=(select STAFF_ID from STAFF where FIRST_NAME like('Miley') and LAST_NAME like('Cyrus'));

update WARD
	set HEAD_NURSE='ST00000002' where 
	HEAD_NURSE=(select STAFF_ID from STAFF where FIRST_NAME like('Miley') and LAST_NAME like('Cyrus'));

delete from NURSE where 
	NURSE_ID=(select STAFF_ID from STAFF where FIRST_NAME like('Miley') and LAST_NAME like('Cyrus'));
delete from STAFF where FIRST_NAME like('Miley') and LAST_NAME like('Cyrus');

select * from STAFF where FIRST_NAME like('Miley') and LAST_NAME like('Cyrus');