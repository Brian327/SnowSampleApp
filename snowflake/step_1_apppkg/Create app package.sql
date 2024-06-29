
USE ROLE ACCOUNTADMIN;

DROP APPLICATION PACKAGE SnowSampleAppPkg;

CREATE APPLICATION PACKAGE SnowSampleAppPkg;
CREATE SCHEMA SnowSampleAppPkg.CORE;    -- this schema holds the code before deploy.  no rights given to consumer.
CREATE OR REPLACE STAGE SnowSampleAppPkg.CORE.CODE_STAGE;


USE DATABASE SnowSampleAppPkg;
USE SCHEMA SnowSampleAppPkg.CORE;


-- do not compress yml or setup script
-- manifest files but be in stage root

-- replace the path with the path to your files
-- replace V1.00 with current version

-- @CODE_STAGE comes from line 8 above

-- copy the files from your local file sytem to the snowflake database/schema

PUT file:///Programming/SnowSampleApp/snowflake/step_1_apppkg/src/LICENSE @CODE_STAGE overwrite=true auto_compress=false;
PUT file:///Programming/SnowSampleApp/snowflake/step_1_apppkg/src/README.md @CODE_STAGE overwrite=true auto_compress=false;
PUT file:///Programming/SnowSampleApp/snowflake/step_1_apppkg/src/V1.00/manifest.yml @CODE_STAGE overwrite=true auto_compress=false;
PUT file:///Programming/SnowSampleApp/snowflake/step_1_apppkg/src/V1.00/scripts/setup_script.sql @CODE_STAGE/scripts overwrite=true auto_compress=false;
PUT file:///Programming/SnowSampleApp/snowflake/step_1_apppkg/src/V1.00/code/myapp.py @CODE_STAGE/code/ overwrite=true auto_compress=false;
PUT file:///Programming/SnowSampleApp/snowflake/step_1_apppkg/src/V1.00/code/lib/__init__.py @CODE_STAGE/code/lib overwrite=true auto_compress=false;
PUT file:///Programming/SnowSampleApp/snowflake/step_1_apppkg/src/V1.00/code/lib/speciallib.py @CODE_STAGE/code/lib overwrite=true auto_compress=false;
PUT file:///Programming/SnowSampleApp/snowflake/step_1_apppkg/src/V1.00/code/lib/pretty/__init__.py @CODE_STAGE/code/lib/pretty overwrite=true auto_compress=false;
PUT file:///Programming/SnowSampleApp/snowflake/step_1_apppkg/src/V1.00/code/lib/pretty/morefunctions.py @CODE_STAGE/code/lib/pretty overwrite=true auto_compress=false;


-- this will list out all the files you just PUT
LIST @CODE_STAGE;


-- don't do this unless you are cleaning up the app package
REMOVE @CODE_STAGE/;

