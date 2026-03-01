CREATE TABLE [KZN_Police_Station v2] (
    RecordID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    FullName AS (FirstName + ' ' + LastName), -- computed column
    Age INT,
    Gender VARCHAR(20),
    Country VARCHAR(100),
    Province VARCHAR(100),
    SouthAfricanID VARCHAR(20),
    CaseNumber VARCHAR(50),
    CrimeType VARCHAR(100),
    FinancialScore DECIMAL(5,2),
    EstimatedFraudAmount_ZAR DECIMAL(18,2),
    RiskLevel VARCHAR(50),
    CaseStatus VARCHAR(50),
    BankInvolved VARCHAR(100),
    PreviousOffenses INT,
    Arrested BIT,
    CrimeDate DATE,
    CourtDate DATE,
    InvestigatingOfficer VARCHAR(100),
    StationCode VARCHAR(20)
);

--South Africa Criminal Database - 30 SQL Questions (Questions Only)---

--1. Display all records from the CriminalCases table.--

SELECT * FROM [dbo].[KZN_Police_Station v2];


--2. Count the total number of cases in the table.---

SELECT COUNT(*) AS TotalCases FROM [dbo].[KZN_Police_Station v2];



--3. Count the number of cases in each province.

SELECT Province, COUNT(*) AS CasesPerProvince
FROM [dbo].[KZN_Police_Station v2]
GROUP BY Province
ORDER BY CasesPerProvince DESC;

--4. Retrieve all cases where the crime type is Fraud.---

SELECT *
FROM [dbo].[KZN_Police_Station v2]
WHERE CrimeType = 'Fraud';

--5. Count the number of cases for each crime type.--

SELECT CrimeType, COUNT(*) AS CasesPerCrimeType
FROM [dbo].[KZN_Police_Station v2]
GROUP BY CrimeType
ORDER BY CasesPerCrimeType DESC;

--6. Display all cases classified as High or Critical risk.---

SELECT *
FROM [dbo].[KZN_Police_Station v2]
WHERE RiskLevel IN ('High', 'Critical');

 
--7. Calculate the average Financial Score of all suspects.---

SELECT AVG(FinancialScore) AS AverageFinancialScore
FROM [dbo].[KZN_Police_Station v2];

--8. Find the highest Estimated Fraud Amount recorded.---

SELECT MAX(EstimatedFraudAmount_ZAR) AS HighestEstimatedFraudAmount
FROM [dbo].[KZN_Police_Station v2];



--9. Retrieve the top 10 cases with the highest Estimated Fraud Amount.--

SELECT TOP 10 *
FROM [dbo].[KZN_Police_Station v2]
ORDER BY EstimatedFraudAmount_ZAR DESC;


--10. Display all cases where the suspect was arrested.--

SELECT *
FROM [dbo].[KZN_Police_Station v2]
WHERE Arrested = 1;

--11. Count how many suspects were arrested versus not arrested.---

SELECT 
    CASE WHEN Arrested = 1 THEN 'Arrested' ELSE 'Not Arrested' END AS ArrestStatus,
    COUNT(*) AS Count
    FROM [dbo].[KZN_Police_Station v2]
    GROUP BY ArrestStatus;


--12. Count the number of cases associated with each bank.---

SELECT BankInvolved, COUNT(*) AS CasesPerBank
FROM [dbo].[KZN_Police_Station v2]
GROUP BY BankInvolved
ORDER BY CasesPerBank DESC;


--13. Calculate the total Estimated Fraud Amount per province.---

SELECT Province, SUM(EstimatedFraudAmount_ZAR) AS TotalEstimatedFraudAmount
FROM [dbo].[KZN_Police_Station v2]
GROUP BY Province
ORDER BY TotalEstimatedFraudAmount DESC;

--14. Retrieve all suspects older than 50 years.---

SELECT *
FROM [dbo].[KZN_Police_Station v2]
WHERE Age > 50;

--15. Calculate the average age of suspects per province.---

SELECT Province, AVG(Age) AS AverageAge
FROM [dbo].[KZN_Police_Station v2]
GROUP BY Province
ORDER BY AverageAge DESC;


--16. Display all cases recorded from 2020 onwards.---

SELECT *
FROM [dbo].[KZN_Police_Station v2]
WHERE CrimeDate >= '2020-01-01'
ORDER BY CrimeDate DESC;


--17. Count how many cases resulted in a Convicted status.---

SELECT COUNT(*) AS ConvictedCases
FROM [dbo].[KZN_Police_Station v2]
WHERE CaseStatus = 'Convicted';

--18. Retrieve all suspects with more than three previous offenses.---

SELECT *
FROM [dbo].[KZN_Police_Station v2]
WHERE PreviousOffenses > 3
ORDER BY PreviousOffenses DESC;

--19. Show the distribution of cases by Risk Level.---

SELECT RiskLevel, COUNT(*) AS CasesPerRiskLevel
FROM [dbo].[KZN_Police_Station v2]
GROUP BY RiskLevel
ORDER BY CasesPerRiskLevel DESC;


--20. Calculate the total Estimated Fraud Amount across all cases.---

SELECT SUM(EstimatedFraudAmount_ZAR) AS TotalEstimatedFraudAmount
FROM [dbo].[KZN_Police_Station v2];


--21. Identify the province with the highest number of cases.--

SELECT TOP 1 Province, COUNT(*) AS CasesPerProvince
FROM [dbo].[KZN_Police_Station v2]
GROUP BY Province
ORDER BY CasesPerProvince DESC;


--22. Retrieve the youngest suspect in the dataset.---
 
SELECT TOP 1 *
FROM [dbo].[KZN_Police_Station v2]
ORDER BY Age ASC;


--23. Retrieve the oldest suspect in the dataset.---

SELECT TOP 3 *
FROM [dbo].[KZN_Police_Station v2]
ORDER BY Age DESC;

--24. Count the number of cases handled by each investigating officer.---

SELECT InvestigatingOfficer, COUNT(*) AS CasesHandled
FROM [dbo].[KZN_Police_Station v2]
GROUP BY InvestigatingOfficer
ORDER BY CasesHandled DESC;

--25. Calculate the average Estimated Fraud Amount per crime type.---

SELECT CrimeType, AVG(EstimatedFraudAmount_ZAR) AS AverageEstimatedFraudAmount
FROM [dbo].[KZN_Police_Station v2]
GROUP BY CrimeType
ORDER BY AverageEstimatedFraudAmount DESC;

--26. Display all cases occurring in Gauteng province.---

SELECT *
FROM [dbo].[KZN_Police_Station v2]
WHERE Province = 'Gauteng'
ORDER BY CrimeDate DESC;


--27. Retrieve all Fraud cases classified as High risk.---

SELECT *
FROM [dbo].[KZN_Police_Station v2]
WHERE CrimeType = 'Fraud' AND RiskLevel = 'High'
ORDER BY EstimatedFraudAmount_ZAR DESC;


--28. Count the number of cases per year based on CrimeDate.---

SELECT YEAR(CrimeDate) AS CrimeYear, COUNT(*) AS CasesPerYear
FROM [dbo].[KZN_Police_Station v2]
GROUP BY YEAR(CrimeDate)
ORDER BY CrimeYear DESC;

--29. Display all suspects with a Financial Score below 500.---

SELECT *
FROM [dbo].[KZN_Police_Station v2]
WHERE FinancialScore < 500
ORDER BY FinancialScore ASC;


--30. Identify the most common crime type in the dataset.---

SELECT TOP 1 CrimeType, COUNT(*) AS CasesPerCrimeType
FROM [dbo].[KZN_Police_Station v2]
GROUP BY CrimeType
ORDER BY CasesPerCrimeType DESC;

----master query that produces a dataset with multiple dimensions and measures---

SELECT 
    Province,
    CrimeType,
    RiskLevel,
    BankInvolved,
    InvestigatingOfficer,
    YEAR(CrimeDate) AS CrimeYear,

    COUNT(*) AS TotalCases,
    COUNT(DISTINCT CaseNumber) AS UniqueCases,

    -- Arrested vs Not Arrested counts (text-based)
    SUM(CASE WHEN Arrested = 'Yes' THEN 1 ELSE 0 END) AS ArrestedCount,
    SUM(CASE WHEN Arrested = 'No' THEN 1 ELSE 0 END) AS NotArrestedCount,

    -- Convicted cases
    SUM(CASE WHEN CaseStatus = 'Convicted' THEN 1 ELSE 0 END) AS ConvictedCount,

    -- Averages and totals
    AVG(FinancialScore) AS AvgFinancialScore,
    AVG(Age) AS AvgAge,
    SUM(EstimatedFraudAmount_ZAR) AS TotalFraudAmount,
    MAX(EstimatedFraudAmount_ZAR) AS MaxFraudAmount,
    AVG(EstimatedFraudAmount_ZAR) AS AvgFraudAmount

FROM [dbo].[KZN_Police_Station v2]
GROUP BY 
    Province,
    CrimeType,
    RiskLevel,
    BankInvolved,
    InvestigatingOfficer,
    YEAR(CrimeDate)
ORDER BY 
    TotalCases DESC;

    ----END---
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------