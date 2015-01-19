create function IS_RESEARCH_DOCTOR(@ID char(10)) returns bit as
	begin
		if (@ID in (select DOCTOR_ID from DOCTOR where DOCTOR_TYPE='R'))
			return 1;
		return 0;
	end