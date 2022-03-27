create schema product;
use product;

create table product(
	id int not null primary key auto_increment,
    productCode varchar(50),
    productName nvarchar(50),
    productPrice double,
    productAmount int,
    productDescription nvarchar(100),
    productStatus tinyint
);

insert into product (productCode, productName, productPrice, productAmount, productDescription, productStatus) values
('Sp01', 'SmartPhone', 5000000, 1, 'new', 0), 
('Sp02', 'Keyboard', 500000, 1, 'new', 0), 
('Sp03', 'Book', 10000, 1, 'new', 0), 
('Sp04', 'Washing machine', 30000000, 1, 'new', 0), 
('Sp05', 'Air conditioner', 20000000, 1, 'new', 0);

explain select * from product where productCode = 'Sp01';
create index index_productCode on product(productCode);

explain select * from product where productName = 'SmartPhone' and productPrice = '5000000';
create index index_produt1 on product(productName, productPrice);

create view product_view as
select productCode, productName, productPrice, productStatus from product;
select * from product_view;

update product_view
set productName = 'Notebook' where productCode = 'SP03';

drop view product_view;

delimiter //
drop procedure if exists getAll //
create procedure getAll()
begin
	select * from product;
end //
delimiter ;
call getAll(); 
-- loi 
delimiter //
drop procedure if exists add_product //
create procedure add_product (pCode varchar(50), pName nvarchar(50), pPrice double, pAmount int, pDescription nvarchar(50), pStatus tinyint)
begin
	insert into product (productCode, productName, productPrice, productAmount, productDescription, productStatus) values (pCode, pName, pPrice, pAmount, pDescription, pStatus);
end //
delimiter ;
call add_product ('Sp06', 'Pen', 4000, 1, 'new', 0);
-- loi 
delimiter //
drop procedure if exists update_product //
create procedure update_product (pCode varchar(50), pName nvarchar(50), pPrice double, pAmount int, pDescription nvarchar(50), pStatus tinyint)
begin
	update product 
    set productCode = pCode, productaName = pName, productPrice = pPrice, productAmount = pAmount, productDescription = pDescription, productStatus = pStatus
    where productId = pId;
end //
delimiter ;
call update_product (1, 'Sp01', 'Laptop', 30000000, 1, 'new', 0);
-- loi
delimiter //
drop procedure if exists  delete_product //
create procedure delete_product (pId int)
begin
	delete from product where productId = pid;
end //
delimiter ;
call delete_product;