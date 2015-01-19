create function IS_CASHIER(@ID char(10)) returns bit as
	begin
		if(@ID in (select STAFF_ID from STAFF where POSITION='CSH'))
			return 1;
		return 0;
	end
	