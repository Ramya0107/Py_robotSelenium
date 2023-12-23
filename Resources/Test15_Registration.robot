*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Test14,15_Locators.py

*** Keywords ***
Open my browser
    [Arguments]     ${url}     ${browser}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Click register link
    Click Link      ${link_Reg}

Enter FirstName
    [Arguments]     ${firstName}
    Input Text      ${txt_firstName}    ${firstName}

Enter LastName
    [Arguments]     ${lastName}
    Input Text      ${txt_lastName}    ${lastName}

Enter Phone
    [Arguments]     ${Phone}
    Input Text      ${txt_phoneNo}      ${Phone}

Enter Email
    [Arguments]     ${email}
    Input Text      ${txt_email}      ${email}

Enter Address
    [Arguments]     ${address}
    Input Text      ${txt_address}   ${address}

Enter City
    [Arguments]     ${city}
    Input Text      ${txt_city}   ${city}

Enter State
    [Arguments]     ${state}
    Input Text      ${txt_state}   ${state}

Enter PostalCode
    [Arguments]     ${zip}
    Input Text      ${txt_zipCode}   ${zip}

Select Country
    [Arguments]     ${country}
    Select From List By Value     ${drp_country}   ${country}

Enter UserName
    [Arguments]     ${user}
    Input Text      ${txt_userName}   ${user}

Enter Password
    [Arguments]     ${pwd}
    Input Text      ${txt_password}   ${pwd}

Enter ConfirmPassword
    [Arguments]     ${confirmpwd}
    Input Text      ${txt_confirmPassword}   ${confirmpwd}

Click submit
    Click Button    ${btn_submit}

Verify Sucucessfull login
    Title Should Be     Register: Mercury Tours