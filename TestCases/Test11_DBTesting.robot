*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPwd}    ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database

*** Variables ***
${DBName}       mydb
${DBUser}       root
${DBPwd}        root
${DBHost}       <ip>
${DBPort}       3306

*** Test Cases ***
Create person table
    ${QueryResult}=     Execute SQL String  Create  table   person(id integer,first_name varchar(20),last_name varchar(20));
    Log To Console  ${QueryResult}
    Should Be Equal as Strings  ${QueryResult}  None

Insert Data in person table
#ForSingleRecord
    ${QueryResult}=     Execute SQL String  Insert into person values(1,"Bruno","King");
    Log To Console  ${QueryResult}
    Should Be Equal as Strings  ${QueryResult}  None

#ForMultipleRecord
    ${QueryResult}=     Execute SQL String  ../TestData/tableinsert.sql
    Log To Console  ${QueryResult}
    Should Be Equal as Strings  ${QueryResult}  None

Check Aaa record present in person table
    check if exists in database     Select id from mydb.person where first_name='Aaa';

Check Zzz record not present in person table
    check if not exists in database     Select id from mydb.person where first_name='Zzz';

Check person table exists in mydb
    Table Must Exist    person

Check row count is zero
    Row Count Is 0      Select id from mydb.person where first_name='Zzz';

Check row count is equal to some value
    Row Count Is Equal To X     Select id from mydb.person where first_name='Aaa';      1

Check row count is greater than some value
    Row Count Is Greater Than X     Select id from mydb.person where first_name='Aaa';      0

Check row count is lesser than some value
    Row Count Is Less Than X      Select id from mydb.person where first_name='Aaa';      5

Update record in person table
    ${QueryResult}=     Execute SQL String      Update mydb.person set first_name='Bruno' where id=1;
    Log To Console  ${QueryResult}
    Should Be Equal As Strings    ${QueryResult}    None

Retrieve records from person table
    @{QueryResult}=     query   Select * from mydb.person;
    Log To Console      many     @{QueryResult}

Delete Records from person table
    ${QueryResult}=     Execute SQL String      Delect from mydb.person;
    Should Be Equal As Strings      ${QueryResult}  None
