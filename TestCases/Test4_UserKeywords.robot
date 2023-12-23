*** settings ***
Library     SeleniumLibrary
Resource    ../Resources/Test4_resources.robot

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/
${browser}  Chrome

*** Test Cases ***
TC1WithoutArguments
    LaunchBrowser1
    Input Text  name:userName   mercury
    Input Text  name:password   mercury
    Click Element   name:submit
    LoginVerify

TC2WithArguments
    LaunchBrowser2   ${url}  ${browser}
    Input Text  name:userName   mercury
    Input Text  name:password   mercury
    Click Element   name:submit
    LoginVerify

TC3WithArgumentsWithReturn
    ${PageTitle}=   LaunchBrowser3   ${url}  ${browser}
    Log To Console  ${PageTitle}
    Input Text  name:userName   mercury
    Input Text  name:password   mercury
    Click Element   name:submit
    LoginVerify