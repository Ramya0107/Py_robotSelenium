#Grouping some cases into sanity, regression

*** Settings ***


*** Test Cases ***
TC1 User RegistrationTest
    [Tags]  regressionTest
    Log To Console  This is user reg test
    Log To Console  User reg test is completed

TC2 LoginTest
    [Tags]  sanity
    Log To Console  This is login test

TC3 Change user settings
    [Tags]  regressionTest
    Log To Console  This is change in settings test

TC4 LogoutTest
    [Tags]  sanityTest
    Log To Console  This is logout test
