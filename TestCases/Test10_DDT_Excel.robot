*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Test9_resources.robot
Library     DataDriver    ../TestData/Test9_InvalidLoginData.xlsx

Suite Setup     Open My Browser
Suite Teardown  Close Browsers
Test Template   Invalid Login

*** Test Cases ***
LoginTestByUsingExcel

*** Keywords ***
Invalid Login
    [Arguments]     ${username}      ${password}
    Username      ${username}
    Password      ${password}
    Login Button
    Sleep   5
    Verify Unsuccessfull Login

