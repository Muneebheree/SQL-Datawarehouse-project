/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

===============================================================================
*/
CREATE OR ALTER PROCEDURE Bronze.load_bronze AS
BEGIN


	TRUNCATE TABLE Bronze.crm_cust_info
	BULK INSERT Bronze.crm_cust_info
	FROM 'C:\My Data\DE-Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);


	TRUNCATE TABLE Bronze.crm_prd_info
	BULK INSERT Bronze.crm_prd_info
	FROM 'C:\My Data\DE-Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE Bronze.crm_sales_details
	BULK INSERT Bronze.crm_sales_details
	FROM 'C:\My Data\DE-Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE Bronze.erp_cust_az12
	BULK INSERT Bronze.erp_cust_az12
	FROM 'C:\My Data\DE-Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE Bronze.erp_loc_a101
	BULK INSERT Bronze.erp_loc_a101
	FROM 'C:\My Data\DE-Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE Bronze.erp_px_cat_g1v2
	BULK INSERT Bronze.erp_px_cat_g1v2
	FROM 'C:\My Data\DE-Project\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	); 
END
