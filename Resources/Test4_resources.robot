*** settings ***
Library     SeleniumLibrary

*** Keywords ***
LaunchBrowser1
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

LaunchBrowser2
    [Arguments]  ${appurl}  ${appbrowser}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

LaunchBrowser3
    [Arguments]  ${appurl}  ${appbrowser}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${title}=   get title
    [Return]   ${title}

LoginVerify
    Wait Until Page Contains    Login Successfully
    Capture Page Screenshot
