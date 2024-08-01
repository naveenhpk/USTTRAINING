CREATE TABLE Ordercus (
OrderID INT PRIMARY KEY,
CustomerID INT,
OrderDate DATE,
TotalAmount DECIMAL(10, 2),
FOREIGN KEY (CustomerID) REFERENCES Customers1(CustomerID)
);

select * from customers1

INSERT INTO Ordercus(OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(101, 1, '2023-05-01', 250.00),
(102, 2, '2023-05-02', 150.00),
(103, 1, '2023-05-03', 300.00),
(104, 3, '2023-05-04', 200.00),
(105, 4, '2023-05-05', 350.00),
(106, 5, '2023-05-06', 450.00),
(107, 2, '2023-05-07', 220.00),
(108, 3, '2023-05-08', 330.00),
(109, 4, '2023-05-09', 150.00),
(110, 1, '2023-05-10', 400.00),
(111, 2, '2023-05-11', 180.00),
(112, 5, '2023-05-12', 275.00),
(113, 3, '2023-05-13', 320.00),
(114, 4, '2023-05-14', 290.00),
(115, 1, '2023-05-15', 500.00),
(116, 2, '2023-05-16', 120.00),
(117, 3, '2023-05-17', 360.00),
(118, 5, '2023-05-18', 410.00),
(119, 4, '2023-05-19', 380.00),
(120, 1, '2023-05-20', 270.00);

select firstname,lastname,email,o.orderdate,o.totalamount from customers1 c 
inner join Ordercus o on c.CustomerID=o.CustomerID

select * from customers1 order by firstname

select Firstname,lastname,email,o.orderdate,o.totalamount from customers1 c 
inner join Ordercus o on c.CustomerID=o.CustomerID
where month(orderdate)=5 and day(orderdate)=3