CREATE APPLICATION ROLE IF NOT EXISTS app_role;    -- will created in the client internal to the app
CREATE OR ALTER VERSIONED SCHEMA app;     -- created in the app when deployed

GRANT USAGE ON SCHEMA app TO APPLICATION ROLE app_role;

CREATE OR REPLACE PROCEDURE app.myapp_working()
RETURNS STRING
LANGUAGE PYTHON
RUNTIME_VERSION = '3.11'
PACKAGES = ('snowflake-snowpark-python')
IMPORTS = ('/code/myapp.py','/code/speciallib.py','/code/morefunctions.py')
HANDLER = 'myapp.main';

GRANT USAGE ON PROCEDURE app.myapp_working() TO APPLICATION ROLE app_role;
