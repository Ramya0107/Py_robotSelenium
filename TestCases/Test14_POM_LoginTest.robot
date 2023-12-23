*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Test14_LoginKeywords.robot


*** Variables ***
${url}    https://demo.guru99.com/test/newtours/index.php
#${browser}  firefox
${browser}  headlessfirefox
#${user}     mercury
#${pwd}     mercury

*** Test Cases ***
LoginTest
    Open my browser     ${url}  ${browser}
    Enter username      mercury
    Enter password      mercury
    Click SignIn
    Verify Successfull Login
    Close my browser