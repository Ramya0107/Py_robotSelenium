*** Settings ***
Suite Setup     Log To Console  Opening Browser
Suite Teardown      Log To Console  Closing Browser

Test Setup  Log To Console  Login to application
Test Teardown   Log To Console  Logout from application

*** Test Cases ***
TC1
    Log To Console  This is prepaid rc test
TC2
    Log To Console  This is postpaid rc test
TC3
    Log To Console  This is search test
TC4
    Log To Console  This is advanced search test