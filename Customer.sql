-- create blank database 
CREATE DATABASE Customer;

-- create a table inside the database
USE Customer;
CREATE TABLE  tblCustomer (
	CustomerID INT NOT NULL,
	CustomerName TEXT (40),
	Municipality TEXT (40),
	City TEXT (40),
	SalaryInPeso INT,
    PRIMARY KEY (CustomerID)
);

-- insert data into the table
INSERT INTO tblCustomer (CustomerID, CustomerName, Municipality, City, SalaryInPeso)
VALUES (1, 'Gina De Leon', 'Apalit', 'Pampanga', 5000),
	   (2, 'Amara Luna', 'Mexico', 'Pampanga', 6000),
       (3, 'Lucila Maulon', 'Angat', 'Bulacan', 1000),
       (4, 'Rafael Santas', 'Lumban', 'Laguna', 4500),
       (5, 'Maricel Moran', 'Calumpit', 'Bulacan', 12000),
       (6, 'Antonio Moreno', 'Santa Maria', 'Bulacan', 8500),
       (7, 'Hanna  Moos', 'Alaminos', 'Laguna', 6000),
       (8, 'Fred Gregorio', 'Lumban', 'Laguna', 5000),
       (9, 'Maria Andres', 'Porac', 'Pampanga', 1800),
       (10, 'Liza Ramos', 'Alaminos', 'Laguna', 14000);

SELECT * FROM tblCustomer;

-- show lowest and highest salary value
SELECT MIN(SalaryInPeso), MAX(SalaryInPeso)
FROM tblCustomer;

-- show specific municipality (Porac Pampanga)
SELECT * FROM tblCustomer WHERE Municipality = 'Porac' AND City = 'Pampanga';

-- show specific municipality (Apalit or Angat)
SELECT * FROM tblCustomer WHERE Municipality = 'Apalit' OR Municipality = 'Angat';

-- show all municipality except (Pampanga)
SELECT * FROM tblCustomer WHERE NOT Municipality = 'Pampanga';

-- sort data inside the table
SELECT * FROM tblCUstomer
ORDER BY City DESC, CustomerName ASC