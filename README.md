# SnowSampleApp

The goal of this project is to take a sample python app and turn it into a Snowflake Native Application that is called by a Snowflake function.

There are 2 versions of this application.  One working and one not working.   The only difference is the folder structure of the python application.   Both work fine when calling directly from python but one fails to create an app in Snowflake.

Each python app can be found in the python folder.

The snowflake app is two steps.  Step 1 creates the snowflake application package.  Step 2 creates the application from the previous app package.