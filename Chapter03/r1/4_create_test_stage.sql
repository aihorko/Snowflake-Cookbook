USER ROLE ACCOUNTADMIN;

GRANT USAGE ON INTEGRATION S3_INTEGRATION TO ROLE SYSADMIN;

USE ROLE SYSADMIN;
CREATE STAGE S3_RESTRICTED_STAGE
  STORAGE_INTEGRATION = S3_INTEGRATION
  URL = 's3://<bucket>';


LIST @S3_RESTRICTED_STAGE;