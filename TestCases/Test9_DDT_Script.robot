*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Test9_resources.robot
Suite Setup     Open My Browser
Suite Teardown  Close Browsers
Test Template   Invalid Login

*** Test Cases ***          Username        Password
Wrong user wrong pwd        abc           abc
Correct use wrong pwd       Admin         abc

*** Keywords ***
Invalid Login
    [Arguments]     ${username}      ${password}
    Username      ${username}
    Password      ${password}
    Login Button
    Sleep   5
    Verify Unsuccessfull Login
    Close Browsers

