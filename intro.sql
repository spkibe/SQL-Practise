--Drop Table dbo.EmployeeDemographics ;
--CREATE TABLE EmployeeDemographics (
--    EmployeeID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--    FirstName VARCHAR(50) NOT NULL,
--    LastName VARCHAR(50) NOT NULL,
--    Age INT NOT NULL,
--    Gender VARCHAR(7) NOT NULL,
--    Email VARCHAR(150)
--);

INSERT INTO EmployeeDemographics (FirstName, LastName, Age, Gender, Email)
VALUES
    ('David', 'Miller', 32, 'Male', 'david.miller@example.com'),
    ('Emily', 'Clark', 29, 'Female', 'emily.clark@example.com'),
    ('Daniel', 'Anderson', 34, 'Male', 'daniel.anderson@example.com'),
    ('Sophia', 'Thomas', 27, 'Female', 'sophia.thomas@example.com'),
    ('Matthew', 'White', 31, 'Male', 'matthew.white@example.com'),
    ('Olivia', 'Davis', 26, 'Female', 'olivia.davis@example.com'),
    ('Christopher', 'Martinez', 33, 'Male', 'christopher.martinez@example.com'),
    ('Ava', 'Taylor', 28, 'Female', 'ava.taylor@example.com'),
    ('Andrew', 'Moore', 30, 'Male', 'andrew.moore@example.com'),
    ('Emma', 'Wilson', 25, 'Female', 'emma.wilson@example.com'),
    ('Ethan', 'Brown', 35, 'Male', 'ethan.brown@example.com'),
    ('Mia', 'Jones', 29, 'Female', 'mia.jones@example.com'),
    ('Liam', 'Harris', 32, 'Male', 'liam.harris@example.com'),
    ('Isabella', 'Jackson', 26, 'Female', 'isabella.jackson@example.com'),
    ('James', 'Robinson', 31, 'Male', 'james.robinson@example.com'),
    ('Sophie', 'Wright', 27, 'Female', 'sophie.wright@example.com'),
    ('Logan', 'Young', 33, 'Male', 'logan.young@example.com');


-- displaying from the table
SELECT *
FROM EmployeeDemographics

-- displaying one column
SELECT FirstName
FROM EmployeeDemographics

-- Using the distinct keyword
SELECT DISTINCT Gender
FROM EmployeeDemographics

-- Using aggregate function `COUNT'
SELECT COUNT(Gender)
FROM 

-- Using aggregate function `COUNT' and `GROUP BY` to count Distinct values
SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

-- Using `MAX` and `MIN`
SELECT MAX(Age)
FROM EmployeeDemographics

SELECT MIN(Age)
FROM EmployeeDemographics

-- SUM THE AGE COLUMN
SELECT SUM(Age)
FROM EmployeeDemographics


-- Using the Where Clause
SELECT *
FROM EmployeeDemographics
WHERE Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE Age > 33

SELECT *
FROM EmployeeDemographics
WHERE Age > 28 AND Gender = 'Female'

-- Using LIke wildcard
-- where last name starts with `M`
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'M%'

-- Where `s` appears anywhere in the firstname
SELECT *
FROM EmployeeDemographics
WHERE FirstName LIKE '%s%'

-- where FirstName ends with `a`
SELECT *
FROM EmployeeDemographics
WHERE FirstName LIKE '%a'


-- Using Order BY Clause
SELECT *
FROM EmployeeDemographics
ORDER BY Age

SELECT *
FROM EmployeeDemographics
WHERE Gender = 'Female'
ORDER BY Age

-- Using DESC Keyword
SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC
