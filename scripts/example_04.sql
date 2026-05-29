-- select * from employee;
--select emp_name,birthday,sal from employee;
--select emp_name,birthday,sal*12 from employee;
--select emp_name,birthday,sal*12 AS ”Nû from employee;
--select emp_name as ]‹Æˆõ,birthday as ¶”NŒ“ú,sal as ‹‹—^,sal*12 AS ”Nû from employee;
--select emp_name as ]‹Æˆõ,birthday as ¶”NŒ“ú,sal as ‹‹—^, cast(sal*12 as int) as ”Nû from employee;
--select emp_name as ]‹Æˆõ,birthday as ¶”NŒ“ú,sal as ‹‹—^, (sal*12 )::int as ”Nû from employee;
--select (cust_id)::double precision as ID from customer; 
--select '’S“–Ò '||emp_name||' ‚Ì’a¶“ú‚Í '||birthday||' ‚Å‚·B' as ’a¶“ú from employee;
--select emp_name, to_char(birthday,'Day,Month DD,YYYY') from employee; 
--select emp_name,to_char(sal,'9G999G999D99') from employee;
--select * from employee;
--select emp_name,sal,comm,sal+comm from employee;
--seLecT * from employee;
-- select emp_name,
--     case
--         when gender = 1 then '’j'
--                         else '—'
--     end                
-- from employee;

-- select emp_name,
--     case gender
--         when 1 then '’j'
--                else '—'
--     end                
-- from employee;

-- select emp_name,birthday,sal,comm,sal+
--     case 
--         when comm Is null then 0 else comm
--     end as Œû           
-- from employee;

-- select *
-- from employee
-- order by birthday desc;

-- select *
-- from employee
-- order by sal desc;

-- select *
-- from employee
-- order by gender,sal;

-- select *
-- from employee
-- order by gender desc ,sal;

-- select emp_name,birthday,sal,comm,sal+
-- case when comm is null then 0 else comm end as Œû  
-- from employee
-- order by 2 desc;

-- select sal+comm as Œû
-- from employee
-- order by Œû;

-- select *
-- from employee
-- order by sal 
-- limit 3;

-- select *
-- from employee
-- order by sal desc 
-- limit 3 OFFSET 1;

-- select *
-- from product;

-- select prod_name,cost,discount
-- from product;

-- select prod_name,cost,discount,cost*discount as Š„ˆø‰¿Ši
-- from product;

-- select prod_name,cost,discount,cost*
-- case when discount is null  then 1 else discount end as Š„ˆø‰¿Ši
-- from product;

-- select prod_name,cost,discount,to_char(cost*
-- case when discount is null  then 1 else discount end,'99G999D99') as Š„ˆø‰¿Ši
-- from product;

-- select prod_name,cost,discount,to_char(cost*
-- case when discount is null  then 1 else discount end,'99G999D99') as Š„ˆø‰¿Ši
-- from product
-- order by Š„ˆø‰¿Ši desc;

-- select prod_name,cost,discount,to_char(cost*
-- case when discount is null  then 1 else discount end,'99G999D99') as Š„ˆø‰¿Ši
-- from product
-- order by 4 desc;

-- select prod_name,cost,discount,to_char(cost*
-- case when discount is null  then 1 else discount end,'99G999D99') as Š„ˆø‰¿Ši
-- from product
-- order by Š„ˆø‰¿Ši desc --order by 4 desc
-- limit 3;

-- select emp_name,sal
-- from employee
-- where sal>=2000;

-- select emp_name,sal--,gender
-- from employee
-- where gender=2;

-- select emp_name,sal
-- from employee
-- where emp_name='ˆÀ•” O]';

-- select emp_name,sal,birthday
-- from employee
-- where birthday>='1980-01-01';

-- select emp_name,sal
-- from employee
-- where sal >=2000 or sal<=3000;
--where sal >=2000 and sal<=3000;
--where sal between 2000 and 3000;

-- select emp_name,sal,emp_id
-- from employee
-- where emp_id = 2 or emp_id=4 or emp_id=7; 

-- select emp_name,sal,emp_id
-- from employee
-- where emp_id in (2,4,7);

-- select emp_name,sal
-- from employee
-- where (sal>=2000 and sal<=3000) or gender=2;

-- select emp_name,sal
-- from employee
-- where not((sal>=2000 and sal<=3000) or gender=2);

-- select emp_name,sal
-- from employee
-- --where sal between 2000 and 3000;
-- where sal not between 2000 and 3000;

-- select * from customer
--  where address like '%‘åãs%';

--select * from customer
--where address not  like '%‘åãs%';

-- select*
-- from customer
-- where cust_name
-- Like '_“c%q';

-- select *
-- from employee
-- where comm Is  null;

-- select prod_id,prod_name,model_no,cost,discount
-- from product
-- where cost>=20000;

-- select cust_id,cust_name
-- from customer
-- where fax is null;

-- select sales_no,psales_no,prod_id,price
-- from sales
-- where psales_no between 110 and 119
-- order by price desc;

-- select prod_id,prod_name,cost*discount as ŒÀŠEŠ„ˆø’P‰¿
-- from product
-- where prod_id IN(102,104,106)
-- order by ŒÀŠEŠ„ˆø’P‰¿ desc;
-- select cust_id,cust_address,delivery_date
-- from packedsales
-- where cust_address like '%a’J‹æ%'and delivery_date between '1996-01-01' and '1996-12-31';

-- select cust_id,cust_name,tel
-- from customer
-- where tel not Like '03%'and tel not like'06%';

-- select count(*),sum(sal),avg(sal),min(sal),max(sal)
-- from employee;

-- select count(*),sum(sal),avg(sal),min(sal),max(sal)
-- from employee
-- where dept_id=30;

-- select count(*)-count(comm)
-- from employee;
-- where comm is null;

-- select count(distinct dept_id)
-- from employee;

-- select dept_id,count(*),sum(sal),avg(sal),min(sal),max(sal)
-- from employee
-- group by dept_id
-- order by dept_id;

-- select dept_id,gender,count(*),to_char(avg(sal),'9G999D99')
-- from employee
-- group by dept_id,gender
-- order by gender,dept_id;

select dept_id,sum(sal),avg(sal),min(sal),max(sal)
from employee
group by dept_id
Having sum(sal)<=5000
order by dept_id;

