create function IS_NURSE(@ID char(10)) returns bit as
	begin
		if(@ID in (select STAFF_ID from STAFF where POSITION='NRS'))
			return 1;
		return 0;
	end
	