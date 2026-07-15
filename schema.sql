
use ecommerce;
drop table if exists Order_Items;
drop table if exists Orders;
drop table if exists Products;
drop table if exists Customers;

create table Customers(
    customer_id int primary key,
    customer_name varchar(100) not null,
    email varchar(100) unique,
    phone varchar(15),
    city varchar(50),
    state varchar(50),
    created_at date
);
create table Products(
    product_id int primary key,
    product_name varchar(100) not null,
    category varchar(50),
    price decimal(10,2),
    stock_quantity int,
    brand varchar(50)
);
create table Orders(
    order_id int primary key,
    customer_id int,
    order_date date,
    payment_method varchar(50),
    order_status varchar(30),
    total_amount decimal(10,2),

    foreign key (customer_id) references Customers(customer_id)
);

create table Order_Items(
    order_item_id int primary key,
    order_id int,
    product_id int,
    quantity int,
    price decimal(10,2),

    foreign key (order_id) references Orders(order_id),

    foreign key (product_id) references Products(product_id)

);
