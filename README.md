# SA_Crime_Database

> Dashboard: https://datastudio.google.com/reporting/562df32a-9cee-429f-bda5-ddd0abe4f03f/page/XCq4F/edit

## Project Overview
The SA_Crime_Database project is a South African criminal case analytics solution built around a dataset representing criminal investigations from a KZN police station. The project includes SQL schema definitions and a comprehensive set of analytical queries designed to support crime analysis, fraud detection, risk management, and reporting.

## Purpose
This repository is intended to:
- Model a criminal case dataset in SQL Server.
- Support forensic and investigative analysis using SQL query logic.
- Provide a foundation for visualization in tools such as Power BI or Google Looker.
- Enable stakeholders to identify trends in crime type, province, risk level, financial exposure, and justice outcomes.

## Contents
- `Crime_Database.sql` , creates the `KZN_Police_Station` database and table structure.
- `Criminal_Database_SQLv2.sql` - defines the improved `KZN_Police_Station v2` table, adds computed columns, and includes 30 analytical SQL queries.
- `README.md` — project documentation and usage notes.

## Database Schema
The main table models case details for criminal investigations.

Key fields include:
- `RecordID` - unique case record identifier.
- `FirstName`, `LastName`, `FullName` - suspect identity fields.
- `Age`, `Gender`, `Country`, `Province` - demographic attributes.
- `SouthAfricanID`, `CaseNumber` - identity and case tracking keys.
- `CrimeType`, `RiskLevel`, `CaseStatus` - classification and status fields.
- `FinancialScore`, `EstimatedFraudAmount_ZAR` - risk and financial exposure metrics.
- `BankInvolved`, `PreviousOffenses`, `Arrested` - operational and enforcement indicators.
- `CrimeDate`, `CourtDate` - temporal context for incidents and legal processing.
- `InvestigatingOfficer`, `StationCode` - investigative ownership and location metadata.

## Analytical Coverage
The included SQL queries support a wide range of analysis:
- Case counts and distributions by province, crime type, risk level, and bank involvement.
- Fraud case identification and the highest fraud exposure cases.
- Arrest and conviction tracking.
- Age and financial score demographics.
- Time-series trend analysis by crime year.
- Officer workload distribution and operational performance.
- A master query that aggregates multiple dimensions and measures for reporting.

## Usage
1. Open Microsoft SQL Server Management Studio (SSMS).
2. Execute `Crime_Database.sql` to create the `KZN_Police_Station` database and base table.
3. Execute `Criminal_Database_SQLv2.sql` to create the enhanced `KZN_Police_Station v2` table and run analytical queries.
4. Use the query results for visualization, dashboards, or further investigative research.

## Notes
- `Criminal_Database_SQLv2.sql` includes a computed `FullName` column and uses typed numeric fields for better precision.
- The dataset structure is designed for expansion with additional case attributes, such as incident location, case priority, and outcome details.
- Query results are suitable for export and consumption by BI tools.

## Goals
- Improve crime reporting accuracy for the KZN Police Station dataset.
- Enable data-driven decisions across law enforcement and fraud prevention teams.
- Provide a repeatable analytics framework for similar criminal justice datasets.
