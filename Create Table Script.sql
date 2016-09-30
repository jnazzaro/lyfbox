CREATE TABLE PRODUCT_INFORMATION
(
  PRODUCT_NUMBER VARCHAR(13) NOT NULL,
  PRODUCT_OWNER  VARCHAR (200),
  Description VARCHAR(400),
  TicketTracking_ID DECIMAL,
  Customer_ID DECIMAL,
  Logging_ID DECIMAL,
  Date_of_Purchase DATE,
  PRIMARY KEY (PRODUCT_NUMBER),
  Foreign Key (Customer_ID) References Customer_Information(Customer_ID),
  FOREIGN KEY (TicketTracking_ID) REFERENCES Logging_System(TicketTracking_ID)

);
  /* Foreign Keys are Logging ID, Customer ID, Ticket_CST_ID */

Create Table Customer_Information
(
  Customer_ID INT NOT NULL,
  Fname VARCHAR(300),
  Lname VARCHAR(300),
  Address VARCHAR(300),
  City VARCHAR(50),
  State VARCHAR(50),
  ZipCode Int,

  PRIMARY KEY (Customer_ID)


);
/* There are no foreign keys for the Customer Table */

CREATE TABLE Logging_System
(
  Ticket_ID DECIMAL NOT NULL,
  Logging_ID Decimal NOT NULL,
  Product_Number VARCHAR(13),
  Customer_ID INT,
  DescOfIssue VARCHAR(999),
  Steps_Of_Solution VARCHAR(999),
  Status VARCHAR(40),
  Date DATE,
   TicketTracking_ID DECIMAL,

  Primary Key(Ticket_ID),
  Foreign Key (Product_Number) REFERENCES PRODUCT_INFORMATION(Product_Number),
  FOREIGN KEY (Customer_ID) REFERENCES Customer_Information(Customer_ID),
  FOREIGN KEY(TicketTracking_ID) REFERENCES PRODUCT_INFORMATION(TicketTracking_ID)
);
/* The Foreign Keys are Product Id, Customer ID, Ticket Tracking ID */


CREATE TABLE Product_Logging
(
  Log_Line_ID BIGINT NOT NULL,
  Product_Number VARCHAR(13),
  Customer_ID INT,
  Plants_In_Box INt,
  Desc_Of_Plants VARCHAR(999),
  Temperature INt,
  Water_Level Int,
  pH_level DECIMAL,

  PRIMARY KEY (Log_Line_ID)

);
/* The Foreign Keys are Product_Number, Customer_ID */

/*CREATE TABLE 'Plant_Information'
(
  Plant_Id Int,

  PRIMARY KEY (Plant_Id)


) */
