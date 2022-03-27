create view customer_view as
select customerNumber, customerName, contatFirstName, contatLastName, phone
from customers
where city = 'Nantes';

drop view customer_views;