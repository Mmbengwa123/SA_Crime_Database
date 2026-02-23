CREATE DATABASE KZN_Police_Station;

GO

CREATE TABLE KZN_Police_Station (
    RecordID int,
    FirstName varchar(255),
    LastName varchar(255),
    Full_Name varchar(255),
    Age int,
    gender varchar(255),
    country varchar(255),
    province varchar(255),
    south_African_id int,
    case_number varchar(255),
    crime_type varchar(255),
    financial_score int,
    Estimated_Fraud_Amount_ZAR int,
    risk_level varchar(255),
    case_status varchar(255),
    bank_involved varchar(255),
    previous_offence int,
    arrested varchar(255),
    crime_date datetime,
    court_date datetime,
    investigationg_officer varchar(255),
    station_code varchar(255)  
);
