select * from Customers;
select * from Products;
select * from Orders;
select * from Order_Items;
select count(*) as total_customers from Customers;
select count(*) as total_products from Products;
select count(*) as total_orders from Orders;
select product_name, price from Products order by price desc limit 1;
select customer_name, city from Customers where state='Tamil Nadu';
select product_name, price from Products where price > 5000;

select 
Customers.customer_name,
Orders.order_id,
Orders.order_date,
Orders.total_amount
from Customers
inner join Orders 
on Customers.customer_id = Orders.customer_id;

select 
Orders.order_id,
Products.product_name,
Order_Items.quantity,
Order_Items.price
from Order_Items
inner join Products 
on Order_Items.product_id = Products.product_id
inner join Orders 
on Order_Items.order_id = Orders.order_id;

select 
Products.product_name,
sum(Order_Items.quantity) as total_quantity_sold
from Products
inner join Order_Items
on Products.product_id = Order_Items.product_id
group by Products.product_name
order by total_quantity_sold desc;

select 
Products.category,
sum(Order_Items.quantity * Order_Items.price) as revenue from products
inner join Order_Items
on Products.product_id = Order_Items.product_id
group by Products.category;

select 
Customers.customer_name,
sum(Orders.total_amount) as total_spent
from Customers
inner join Orders 
on Customers.customer_id = Orders.customer_id
group by Customers.customer_name
order by total_spent desc
limit 1;

select 
Customers.customer_name,
count(Orders.order_id) as total_orders
from Customers
left join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_name;
