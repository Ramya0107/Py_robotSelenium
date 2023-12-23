*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
CountExtractLinks
    Open Browser    https://demo.guru99.com/test/newtours/  Chrome
    Maximize Browser Window
    Sleep   3
    ${AllLinksCount}=   Get Element count   xpath=//a
    Log To Console  ${AllLinksCount}

    @{LinkItems}    Create List
    FOR     ${i}    IN RANGE    1   ${AllLinksCount}
        ${LinkText}=    Get Text   xpath=(//a)[${i}]
        Log To Console  ${LinkText}
    END