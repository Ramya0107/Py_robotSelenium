*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Test14,15_Locators.py


*** Keywords ***
Open my browser
    [Arguments]     ${url}     ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Enter username
    [Arguments]     ${username}
    Input Text      ${txt_loginUserName}    ${username}

Enter password
    [Arguments]     ${password}
    Input Text      ${txt_LoginPassword}    ${password}

Click SignIn
    Click Button    ${btn_signIN}

Verify Successfull Login
    Title Should Be     Login: Mercury Tours

Close my browser
    Close Browser