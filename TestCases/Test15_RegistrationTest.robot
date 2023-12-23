*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Test15_Registration.robot

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/index.php
#${browser}      Chrome
${browser}      headlessChrome

*** Test Cases ***
RegisterTest
    Open my browser     ${url}      ${browser}
    Click register link
    Enter FirstName     Bruno
    Enter LastName      Bruno
    Enter Phone     912345678
    Enter Email     test@gmail.com
    Enter Address   Canada
    Enter City      Toronto
    Enter State     Brampton
    Enter PostalCode    32003
    Sleep   3
    Select Country      CANADA
    Enter UserName      Bruno
    Enter Password      Bruno@123
    Enter ConfirmPassword   Bruno@123
    Click submit
    Sleep   3
    Verify Sucucessfull login