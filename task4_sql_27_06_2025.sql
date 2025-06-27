create database sales ;
use sales;
create table sale (
id int primary key auto_increment ,
employee_name varchar(20),
department varchar(20),
sale_amount int );

insert into sale(id , employee_name, department,sale_amount) value(1,'Rohit Pandey', 'Electronic',1000 );
insert into sale( employee_name, department,sale_amount) value('Any Pandit','IT',2000);
insert into sale(employee_name, department,sale_amount) value('kashish','Clothing',3000);
insert into sale(employee_name,department,sale_amount)value('Ayush upadhaya','IT',70000);
insert into sale(employee_name,department,sale_amount)value('Abhishke Yadav','Clothing',1500);
insert into sale(employee_name,department,sale_amount)value('Puja Tiwari','Grocery',3000);
insert into sale(employee_name,department,sale_amount)value('Disha sahu','Marketing',2000);

select*from sale;
SELECT department, SUM(sale_amount) AS total_sale
FROM sale
GROUP BY department;

SELECT employee_name, COUNT(*) AS number_of_sale
FROM sale
GROUP BY employee_name;

SELECT department, AVG(sale_amount) AS average_sale
FROM sale
GROUP BY department;

SELECT department,
       COUNT(*) AS sale_count,
       SUM(sale_amount) AS total_sale,
       AVG(sale_amount) AS average_sale
FROM sale
GROUP BY department;

