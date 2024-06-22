use sql_joins;
show tables;
CREATE TABLE TableA (
    A INT
);
INSERT INTO TableA (A) VALUES (1), (1), (1), (0), (0);

CREATE TABLE TableB (
    B INT
);
INSERT INTO TableB (B) VALUES (1), (0), (1);
select * from tablea;
select * from tableb;

Select * from tablea left join tableb on tablea.A = tableb.B;
Select * from tablea right join tableb on tablea.A = tableb.B;
Select * from tablea inner join tableb on tablea.A = tableb.B;

select * from tablea union select * from tableb;

select * from tablea
group by A;
#1,0

select * from tablea
where tablea.A=tablea.A
group by A;
#1,0

select * from tablea
group by A
order by A ASC;
#0,1

select * from tablea
where tablea.A=tablea.A
group by A
order by A ASC;
#0,1

select * from tablea
order by A ASC; 
#0,0,1,1,1

select * from tablea
where tablea.A=tablea.A
group by A
having tablea.A !=0
order by A ASC;
#1

select * from tablea
group by A
having tablea.A !=0;
#1

select * from tablea
group by A
having tablea.A !=1;
#0

select * from tablea
where exists
(select A from tablea where tablea.A =2);
#zero rows

select * from tablea
where exists
(select A from tablea where tablea.A =0);
#1,1,1,0,0

select count(*) from tablea;
#5

select count(*) from tablea
where tablea.A =1;
#3

select sum(A) from tablea
where tablea.A =1;
#3

select * from tablea limit 0;
#zero rows
select * from tablea limit 1;
#1
select * from tablea limit 5;
#1,1,1,0,0
select A from tablea limit 3 offset 2;
#1,0,0
select A from tablea limit 2 offset 3;
#0,0
select A from tablea limit 1 offset 2;
#1

















