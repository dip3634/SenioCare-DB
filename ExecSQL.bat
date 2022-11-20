@echo off
set /p PGPASSWORD=<Password.txt
set dbName= SenioCare_DB
set /p execPath=<PostgresPath.txt
echo Creating Database %dbname%
%execPath% --no-psqlrc --quiet -h localhost -U postgres -f DropDB.sql
%execPath% --no-psqlrc --quiet -h localhost -U postgres -f CreateDBInitial.sql

echo Creating Table Person...
%execPath% --no-psqlrc --quiet -h localhost -U postgres -d %dbName% -f CreatePersonTable.sql
echo Creating Table Employee...
%execPath% --no-psqlrc --quiet -h localhost -U postgres -d %dbName% -f CreateEmployeeTable.sql
echo Creating Table Client...
%execPath% --no-psqlrc --quiet -h localhost -U postgres -d %dbName% -f CreateClientTable.sql
echo Creating Table Request...
%execPath% --no-psqlrc --quiet -h localhost -U postgres -d %dbName% -f CreateRequestTable.sql
echo Creating Table EmployeePay
%execPath% --no-psqlrc --quiet -h localhost -U postgres -d %dbName% -f CreateEmployeePayTable.sql
echo Creating Table Category...
%execPath% --no-psqlrc --quiet -h localhost -U postgres -d %dbName% -f CreateCategoryTable.sql
echo Creating Table SubCategory...
%execPath% --no-psqlrc --quiet -h localhost -U postgres -d %dbName% -f CreateSubCategoryTable.sql
echo Creating structured data...
javac D:\SQLTest\DataCreationDMQL\src\DataBeautify.java
java -classpath DataCreationDMQL/src DataBeautify
echo Inserting into Person table...
%execPath%  -h localhost -U postgres -d %dbName% -f InsertintoPerson.sql
pause