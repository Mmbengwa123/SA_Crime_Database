# SA_Crime_Database

![SQL Server](https://img.shields.io/badge/SQL%20Server-0078D4?style=flat-square&logo=microsoft-sql-server)
![Google Looker Studio](https://img.shields.io/badge/Google%20Looker%20Studio-F8B400?style=flat-square&logo=google-drive)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat-square&logo=microsoft-power-bi)
![SSMS](https://img.shields.io/badge/SSMS-0078D4?style=flat-square&logo=microsoft-sql-server)

> **Dashboard:** https://datastudio.google.com/reporting/562df32a-9cee-429f-bda5-ddd0abe4f03f/page/XCq4F/edit

## Project Overview
SA_Crime_Database is a South African criminal case analytics repository built on a KZN police station dataset. It delivers a reusable SQL Server schema, advanced T-SQL analysis, and a streamlined path to visual reporting in Google Looker Studio or Power BI.

## Repository Structure
- `Crime_Database.sql` — builds the `KZN_Police_Station` database and initial table schema.
- `Criminal_Database_SQLv2.sql` — builds `KZN_Police_Station v2`, includes computed columns, and contains 30 analytical queries.
- `README.md` — explains project goals, tools, usage, and schema details.

## Tools & Technologies
- Microsoft SQL Server Management Studio (SSMS)
- Transact-SQL (T-SQL)
- Google Looker Studio
- Microsoft Power BI

## Data Model Snapshot
The primary table stores criminal investigation records with the following focus areas:
- `RecordID`, `CaseNumber`, `SouthAfricanID`
- `FirstName`, `LastName`, `FullName`
- `Age`, `Gender`, `Country`, `Province`
- `CrimeType`, `RiskLevel`, `CaseStatus`
- `FinancialScore`, `EstimatedFraudAmount_ZAR`
- `BankInvolved`, `PreviousOffenses`, `Arrested`
- `CrimeDate`, `CourtDate`
- `InvestigatingOfficer`, `StationCode`

## Key Analytical Capabilities
This project supports analysis of:
- Crime distribution by province, type, and risk level
- Fraud exposure and high-value fraud cases
- Arrest and conviction outcomes
- Suspect demographics and financial risk scores
- Yearly crime trends and investigator caseloads
- Bank involvement and institutional risk patterns

## Getting Started
1. Open SSMS and connect to your SQL Server instance.
2. Run `Crime_Database.sql` to create the base database and table.
3. Run `Criminal_Database_SQLv2.sql` to create the enhanced schema and query set.
4. Load query outputs into Google Looker Studio or Power BI for dashboard creation.

## Recommended Workflow
1. Populate the table with case data.
2. Execute analytical queries in `Criminal_Database_SQLv2.sql`.
3. Export results as CSV or connect directly to the database.
4. Build visual reports in Google Looker Studio or Power BI.

## Contributing
We welcome improvements to the data model, query logic, and visualization workflow.
- Fork the repository and create a feature branch for changes.
- Keep SQL queries and comments clear and consistent.
- Add new sample queries or schema updates with descriptive explanations.
- Open a GitHub pull request with a summary of your changes.

## Notes
- `Criminal_Database_SQLv2.sql` includes a computed `FullName` column and numeric precision improvements.
- The schema is designed for extension with incident location, case priority, or legal outcome fields.
- Use this repository as a foundation for expanding criminal analytics and visualization assets.

## Goals
- Deliver clean, query-ready criminal data for the KZN police station dataset.
- Support data-driven investigations and fraud prevention.
- Provide a strong base for reporting in Looker Studio and Power BI.
