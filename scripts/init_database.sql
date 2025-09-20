/*
Create the data warehouse database with bronze, silver, and gold schemas.

script Purpose: 
    this script creates a new database named "data_warehouse" after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the new database: "bronze", "silver", and "gold".

Warning: 
    Running this script will drop the entire "data_warehouse" database if it exists.
    All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

use master;
GO

-- drop and recreate the data_warehouse database
IF EXISTS (SELECT 1 FROM sys.databases where name = 'data_warehouse')
BEGIN
    ALTER DATABASE data_warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE data_warehouse;
END;
GO

-- create the data_warehouse database
CREATE DATABASE data_warehouse;
GO

USE data_warehouse;
GO

-- create the bronze, silver, and gold schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
