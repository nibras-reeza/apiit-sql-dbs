select AMOUNT, PAYMENT_MODE from PAYMENT where AMOUNT=(select max(AMOUNT) from PAYMENT)