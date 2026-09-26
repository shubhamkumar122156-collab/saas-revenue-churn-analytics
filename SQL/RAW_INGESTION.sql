use WAREHOUSE ECOM_DEV_WH;
USE DATABASE SAAS_REVENUE_DB;
-- ============================================================
-- Table: RAW_CUSTOMERS
-- Purpose: Store raw customer data for e-commerce development
-- Note: No constraints applied (fully flexible raw layer)
-- ============================================================
    CREATE OR REPLACE TABLE RAW_schema.SUBSCRIBERS_RAW

    (SUBSCRIBER_ID int ,        -- Customer identifier (no PK enforced)
    COMPANY_NAME VARCHAR ,           -- name of the customer
    LAST_NAME VARCHAR,          -- last name of the customer
    EMAIL VARCHAR,          -- Contact email address
    REGION VARCHAR,        -- AREA
    SIGNUP_DATE DATE ,        -- Account creation date
    ACCOUNT_STATUS VARCHAR )       -- ACCOUNT STATUS IS IT ACTIVE OR NOT 
     ;
     CREATE OR REPLACE TABLE RAW_schema.SUBSCRIPTIONS_RAW

    (SUBSCRIPTION_ID INT  ,  
    SUBSCRIBER_ID INT ,      
    SUBSCRIPTION_TIER VARCHAR ,           
    MRR_VALUE DECIMAL(10,2),     
    BILLING_CYCLE VARCHAR,          
    SUBSCRIPTION_START_DATE DATE,     
    CANCELLATION_DATE  DATE )        -- Account creation date
    
     ;
    CREATE OR REPLACE TABLE RAW_SCHEMA.SUPPORT_TICKETS_RAW
(
    TICKET_ID INT,                  -- Ticket identifier (no PK enforced)
    SUBSCRIBER_ID INT,              -- Subscriber identifier
    ISSUE_CATEGORY VARCHAR,         -- Type of issue (Integration Failure, Billing Error, etc.)
    SEVERITY VARCHAR,               -- Severity level (Low, Medium, High, Critical)
    RESOLUTION_TIME_HOURS DECIMAL(10,2), -- Resolution time in hours (supports decimals)
    TICKET_DATE DATE                -- Date when ticket was created
);
