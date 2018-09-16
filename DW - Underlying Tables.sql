IF OBJECT_ID('Jas.tbl_Jobs','U') 		        				  IS NOT NULL DROP TABLE Jas.tbl_Jobs;
IF OBJECT_ID('Jas.tbl_JobsTypes','U')      				  IS NOT NULL DROP TABLE Jas.tbl_JobsTypes;
IF OBJECT_ID('Jas.tbl_SubJobTypes','U') 				  IS NOT NULL DROP TABLE Jas.tbl_SubJobTypes;
IF OBJECT_ID('Jas.tbl_JobStatuses','U')   				  IS NOT NULL DROP TABLE Jas.tbl_JobStatuses;
IF OBJECT_ID('Jas.tbl_Activities','U') 	   				  IS NOT NULL DROP TABLE Jas.tbl_Activities;
IF OBJECT_ID('Jas.tbl_ActivityStatuses','U') 		  IS NOT NULL DROP TABLE Jas.tbl_ActivityStatuses;
IF OBJECT_ID('Jas.tbl_Types','U') 							  IS NOT NULL DROP TABLE Jas.tbl_Types;
IF OBJECT_ID('DeeSet.tbl_CaptainsLogJobs','U')  IS NOT NULL DROP TABLE DeeSet.tbl_CaptainsLogJobs;
IF OBJECT_ID('DeeSet.tbl_Employees','U')  		  IS NOT NULL DROP TABLE DeeSet.tbl_Employees;
IF OBJECT_ID('DeeSet.tbl_NavUser','U') 	    			  IS  NOT NULL DROP TABLE DeeSet.tbl_NavUser;
IF OBJECT_ID('Retail.tbl_Customers','U')  		      IS NOT NULL DROP TABLE Retail.tbl_Customers;
IF OBJECT_ID('Retail.tbl_CustomerStores','U')     IS NOT NULL DROP TABLE Retail.tbl_CustomerStores;
IF OBJECT_ID('Location.tbl_Regions','U') 			  IS NOT NULL DROP TABLE Location.tbl_Regions;
IF OBJECT_ID('Location.tbl_Areas','U') 			      IS NOT NULL DROP TABLE Location.tbl_Areas;


CREATE TABLE Jas.tbl_JobTypes
	(
			 JobTypeID					TINYINT			IDENTITY(1,1)		NOT NULL
		   ,JasJobType					TINYINT											NOT NULL
		   ,JobTypeDescription VARCHAR(20)								NOT NULL
	);
ALTER TABLE Jas.tbl_JobTypes ADD CONSTRAINT PK_Jas_tbl_JobTypes_JobTypeID  PRIMARY KEY CLUSTERED (JobTypeID);
ALTER TABLE Jas.tbl_JobTypes ADD CONSTRAINT UNQ_Jas_tbl_JobTypes_JasJobType_JobType UNIQUE (JasJobType,JobType);

CREATE TABLE Jas.tbl_SubJobTypes
	(
			 SubJobTypeID				TINYINT		 	IDENTITY(1,1)		NOT NULL
			,SubJobType					VARCHAR(20)								NOT NULL
	);
ALTER TABLE Jas.tbl_SubJobTypes ADD CONSTRAINT PK_Jas_tbl_SubJobTypes_SubJobTypeID	PRIMARY KEY CLUSTERED (SubJobTypeID);
ALTER TABLE Jas.tbl_SubJobTypes ADD CONSTRAINT UNQ_Jas_tbl_SubJobTypes_SubJobType  UNIQUE (SubJobType);

CREATE TABLE Jas.tbl_JobStatuses
	(
			 JobStatusID					 TINYINT			   IDENTITY(1,1)		 NOT NULL
		    ,JobStatusDescription	  VARCHAR(20)								 NOT NULL
	);
ALTER TABLE Jas.tbl_JobStatuses ADD CONSTRAINT PK_Jas_tbl_JobStatuses_JobStatusID PRIMARY KEY CLUSTERED (JobStatusID);
ALTER TABLE Jas.tbl_JobStatuses ADD CONSTRAINT UNQ_Jas_tbl_JobStatuses_JobStatusDescription UNIQUE (JobStatusDescription);

CREATE TABLE Retail.tbl_Customers
	(
			 CustomerID						SMALLINT			IDENTITY(1,1)	NOT NULL
			,CustomerName				VARCHAR(50)								NOT NULL
			,CustomerCode					VARCHAR(15)								NOT NULL
			,isActive								BIT													NOT NULL DEFAULT 0
	);
ALTER TABLE Retail.tbl_Customers ADD CONSTRAINT PK_Retail_tbl_Customers_CustomerID		PRIMARY KEY CLUSTERED (CustomerID);
ALTER TABLE Retail.tbl_Customers ADD CONSTRAINT UNQ_Retail_tbl_Customers_CustomerName_CustomerCode_isActive		UNIQUE (CustomerName,CustomerCode,isActive);

CREATE TABLE Retail.tbl_CustomerStores
	(
			 CustomerStoreID					SMALLINT			IDENTITY(1,1)	NOT NULL
			,CustomerID							SMALLINT										NOT NULL
			,isActive								BIT														NOT NULL DEFAULT 0
	)
ALTER TABLE Retail.tbl_CustomerStores ADD CONSTRAINT PK_Retail_tbl_CustomerStores_CustomerStoreID  PRIMARY KEY CLUSTERED (CustomerStoreID);
ALTER TABLE Retail.tbl_CustomerStores ADD CONSTRAINT UNQ_Retail_tbl_CustomerStores_CustomerID_isActive UNIQUE (CustomerID,isActive);
ALTER TABLE Retail.tbl_CustomerStores ADD CONSTRAINT FK_Retail_tbl_CustomerStores_CustomerID_Retail_Customers FOREIGN KEY (CustomerID) REFERENCES Retail.Customers (CustomerID);

CREATE TABLE Jas.tbl_JasActivities
	(
				JasActivitI
O	);