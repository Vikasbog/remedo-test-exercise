MySql Questions

Consider we have three tables: users table, transactions table and user_extra_info table

Table and their columns are listed below

Table	Columns
users	user_id, name, address
transactions	user_id, total_invoice_amount, invoice_amount_paid, remedo_commission

transactions.user_id is a FK referencing users.user_id
user_extra_info	user_id, whatsapp_disabled 

Where user_extra_info.user_id is a FK referencing users.user_id


For users for whom we don't want to send whatsapp messages, we add a row in user_extra_info. Which means this table will not have a row for every user.


Based on above information please write sql queries answering following questions:

Q1. For a given user id u1 write a query to list out all transactions.
Output should have following columns:
user_id, address,  total_invoice_amount, invoice_amount_paid, remedo_commission

Ans. SELECT users.user_id, users.address,  transactions.total_invoice_amount
, transactions.invoice_amount_paid, transactions.remedo_commission FROM users
INNER JOIN transactions ON users.user_id = transactions.user_id;

Q2. For a given user id u1 write a query to calculate remedo's total commission.

Ans.  SELECT SUM(remedo_commission) AS "Total Remedo Commission "
FROM  transactions;

Q3. List down all users whom we can send whatsapp messages

Ans. SELECT u1.name  u1.address  from users u1  where u1.user_id  = user_extra_info.user_id  where  NOT  whatsapp_disabled ;  

Q4. List down all users for whom we can not send whatsapp messages

Q5. List down all users who have made at least one transactions and for whom we can send whatsapp message





