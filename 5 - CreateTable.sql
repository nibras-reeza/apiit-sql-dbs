create table PAYMENT(PAYMENT_ID int identity(0,1) not null,
					PAYMENT_DATE date not null,
					PAYMENT_TIME time not null,
					AMOUNT money not null,
					PAYMENT_MODE varchar(20) not null,
					CASHIER char(10) not null,
					constraint PAYMENT_PK primary key(PAYMENT_ID),
					constraint PAYMENT_STAFF_FK
						foreign key(CASHIER) references STAFF(STAFF_ID),
					constraint PAYMENT_CASHIER check(dbo.IS_CASHIER(CASHIER)=1),
					constraint PAYMENT_MODE
						check(PAYMENT_MODE in('CHEQUE','CASH','CREDITCARD')));
select * from PAYMENT;

/*
Only a staff member in position as a cashier may receive/record payment.
Payments can be made by only of the three pre-determined methods.
*/
