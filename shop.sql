create database shopping
use shopping

create table register(userid int unique,username varchar(25),passwords varchar(25),email varchar(25),mobile varchar(10))

create table product(Productid int,ProductName varchar(25),Price int,StockAvailable int)
insert into product values(1005,'Toys',500,50)

create table cart(userid int not null,productid int not null,productname varchar(25),price int,quantity int,amount int)

create table bill(name varchar(25),addresss varchar(25),city varchar(25),states varchar(25),pincode int,mobile varchar(10))

alter table cart add constraint a1 primary key(userid,productid)

create trigger tr_update on cart
after update
as
begin
declare @id int,@amo int
set @id=(select userid from inserted)
set @amo=(select amount from inserted)
update cart set amount=price*quantity where userid=@id
end

select * from sys.tables
select * from register
select * from product
select * from cart
select * from bill

truncate table bill
