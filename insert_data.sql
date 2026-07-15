use ecommerce;
insert into Customers
(customer_id,customer_name, email, phone, city, state, created_at)
values
(1,'Poornima','poornima@gmail.com','9876543210','Chennai','Tamil Nadu','2026-07-01'),
(2,'rahul','rahul@gmail.com','9876543211','Bangalore','Karnataka','2026-07-02'),
(3,'Ananya','ananya@gmail.com','9876543212','Coimbatore','Tamil Nadu','2026-07-03'),
(4,'Arun','arun@gmail.com','9876543213','Hyderabad','Telangana','2026-07-04'),
(5,'Sneha','sneha@gmail.com','9876543214','Mumbai','Maharashtra','2026-07-05');

insert into Products values
(101,'iPhone 16','Electronics',79999.00,20,'Apple'),
(102,'Galaxy S25','Electronics',74999.00,15,'Samsung'),
(103,'Boat Airdopes','Electronics',1499.00,100,'Boat'),
(104,'HP Laptop','Electronics',59999.00,10,'HP'),
(105,'Sony Headphones','Electronics',2999.00,50,'Sony'),
(106,'Nike Running Shoes','Footwear',4999.00,30,'Nike'),
(107,'Adidas Sneakers','Footwear',3999.00,25,'Adidas');

insert into Orders values
(1001,1,'2026-07-10','Credit Card','Shipped',79999.00),
(1002,2,'2026-07-11','PayPal','Processing',74999.00),
(1003,3,'2026-07-12','Debit Card','Delivered',1499.00),
(1004,4,'2026-07-13','Credit Card','Cancelled',59999.00),
(1005,5,'2026-07-14','PayPal','Shipped',2999.00);

insert into Order_Items values
(1,1001,101,1,79999.00),
(2,1002,102,1,74999.00),
(3,1003,103,1,1499.00),
(4,1004,104,1,59999.00),
(5,1005,105,1,2999.00);
