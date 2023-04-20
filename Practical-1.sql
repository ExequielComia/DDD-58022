#1. Create a database named ABC_Computer
CREATE DATABASE ABC_Computer;



#2. Write an SQL script to create the table named Computer and insert the data for the ABC_Computer database
USE ABC_Computer;
CREATE TABLE Computer (
	SerialNumber INT PRIMARY KEY,
    Make VARCHAR (12),
    Model VARCHAR (24),
    ProcessorType VARCHAR (24),
    ProcessorSpeed DECIMAL(10, 2),
    MainMemory VARCHAR (15),
    DiskSize VARCHAR (15)
);



#3. Write an SQL script to execute the script to populate the Computer table
INSERT INTO Computer (SerialNumber, Make, Model, ProcessorType, ProcessorSpeed, MainMemory, DiskSize)
VALUES 
(9871234, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871245, 'HP', 'Pavilion 500-210qe', 'Intel i5-4531', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871256, 'HP', 'Pavilion 500-210qe', 'Intel i5-4532', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871267, 'HP', 'Pavilion 500-210qe', 'Intel i5-4533', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871278, 'HP',	'Pavilion 500-210qe', 'Intel i5-4534', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871289, 'HP',	'Pavilion 500-210qe', 'Intel i5-4535', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(6541001, 'DELL', 'OptiPlex 9020', 'Intel i7-4770', 3.00, '8.0 Gbytes', '1.0 Tbytes'),
(6541002, 'DELL', 'OptiPlex 9021', 'Intel i7-4771', 3.00, '8.0 Gbytes', '1.0 Tbytes'),
(6541003, 'DELL', 'OptiPlex 9022', 'Intel i7-4772', 3.00, '8.0 Gbytes', '1.0 Tbytes'),
(6541004, 'DELL', 'OptiPlex 9023', 'Intel i7-4773', 3.00, '8.0 Gbytes', '1.0 Tbytes'),
(6541005, 'DELL', 'OptiPlex 9024', 'Intel i7-4774', 3.00, '8.0 Gbytes', '1.0 Tbytes'),
(6541006, 'DELL', 'OptiPlex 9025', 'Intel i7-4775', 3.00, '8.0 Gbytes', '1.0 Tbytes');



#4. Write an SQL script that separately shows the two different models of computer
USE ABC_Computer;
SELECT * FROM Computer WHERE make = 'HP';
SELECT * FROM Computer WHERE make = 'DELL';



#5. Write an SQL script that adds another column named Graphics
USE ABC_Computer;
ALTER TABLE Computer ADD COLUMN Graphics TEXT(40) NOT NULL COMMENT 'Integrated Intel HD Graphics 4600';



#6. Write an SQL script that removes the column ProcessorSpeed
USE ABC_Computer;
ALTER TABLE Computer DROP COLUMN ProcessorSpeed;



#Final Output
USE ABC_Computer;
SELECT * FROM Computer;


