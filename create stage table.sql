CREATE EXTERNAL DATA SOURCE bakery_ds WITH (
    LOCATION = 'DIRECCION_AL_DATA_LAKE',
    CREDENTIAL = [TU_CREDENCIAL]
);
GO

CREATE EXTERNAL FILE FORMAT csv_file
WITH (  
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS ( FIELD_TERMINATOR = ',',  FIRST_ROW = 2,  USE_TYPE_DEFAULT = True   )
);
GO

USE [bakery_dw];
GO
CREATE EXTERNAL TABLE bakery_stage
(
        [transaction_id][int] null,
        [customer_name] [varchar](50) NULL,
	    [purchase_date] [date] NULL,
	    [product_name] [varchar](50) NULL,
	    [product_category] [varchar](50) NULL,
	    [quantity] [int] NULL,
	    [unit_price] [decimal](10,2) NULL,
	    [discount] [decimal](10,2) NULL,
	    [total_price] [decimal](10,2) NULL,
	    [payment_method] [varchar](50) NULL,
	    [delivery_address] [varchar](50) NULL,
	    [city] [varchar](50) NULL,
	    [state] [varchar](50) NULL,
	    [country] [varchar](50) NULL,
	    [postal_code] [varchar](50) NULL
)
WITH (
    LOCATION = 'TU_RUTA_ACCESO/*.csv',
    DATA_SOURCE = bakery_ds,
    FILE_FORMAT = csv_file
);