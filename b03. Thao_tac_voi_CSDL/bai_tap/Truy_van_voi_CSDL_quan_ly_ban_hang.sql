use QuanLyBanHang;

insert into Customer (cID , cName, cAge) 
values (1, 'Minh Quan', 10),
	   (2, 'Ngoc Oanh', 20),
	   (3, 'Hong Ha', 20);

insert into `Order`  (oID , cID, oDate, oTotalPrice) 
values (1, 1, '2006-3-21', Null),
	   (2, 2, '2006-3-23', Null),
	   (3, 1, '2006-3-16', Null);
       
insert into Product (pID, pName, pPrice)
values (1, 'May giat', 3 ),
	   (2, 'Tu lanh' , 5),
       (3, 'Dieu hoa' , 7),
       (4, 'Quat' , 1),
       (5, 'Bep dien' , 2);

insert into OrderDetail (oID, pID, odQTY)
values (1, 1, 3),
	   (1, 3, 7),
       (1, 4, 2),
       (2, 1, 1),
       (3, 1, 8),
       (2, 5, 4),
       (2, 3, 3);
       
select cName, pName from customer c
inner join `Order` o on o.cID = c.cID
inner join OrderDetail od on od.oID = o.oID
inner join Product p on p.pID = od.pID; 
       
select * from Customer
where cName not in (select cName from `Order`); 

select * from customer c
left join `Order` o on o.cID = c.cID
where c.cID is null;

select o.oID, p.pID, sum(p.pPrice * od.odQTY) as total from `order` o
inner join OrderDetail od on od.oId = o.oID
inner join Product p on p.pID = od.pID;