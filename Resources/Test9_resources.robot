*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${LoginURL}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}      Chrome


*** Keywords ***
Open My Browser
    Open Browser    ${LoginURL}     ${Browser}
    Maximize Browser Window

Close Browsers
    Close All Browsers

Open Login Page
    Go To ${LoginURL}

Username
    [Arguments]  ${username}
    Input Text      xpath://input[@name='username']     ${username}

Password
    [Arguments]  ${password}
    Input Text      xpath://input[@name='password']     ${password}

Login Button
    Click Element   //button[@type='submit']

Verify Successfull Login
    Page Should Contain     Dashboard

Verify Unsuccessfull Login
    Page Should Contain     Invalid credentials
