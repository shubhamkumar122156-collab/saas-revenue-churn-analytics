use database ECOM_DEV_WH;
-- ============================================================
-- Database Setup
-- ============================================================
CREATE OR REPLACE DATABASE SAAS_REVENUE_DB;
-- ============================================================
-- Schema Setup (Layered Architecture)
-- ============================================================
CREATE OR REPLACE SCHEMA RAW_schema;
CREATE OR REPLACE SCHEMA STG_schema;
CREATE OR REPLACE SCHEMA GOLD_schema;
CREATE OR REPLACE SCHEMA ANALYTICS_schema;
-- ============================================================
-- Stage Setup (for file ingestion)
-- ============================================================
CREATE OR REPLACE STAGE RAW_SCHEMA.SAAS_RAW_DATA
-- ============================================================