*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
WebTable
    Open Browser    http://seleniumpractise.blogspot.com/2021/08/webtable-in-html.html   Chrome
    ${rowsCount}=     Get Element Count    xpath=//table[@id='customers']/tbody/tr
    Log To Console    ${rowsCount}
    ${columnCount}=       Get Element Count    xpath=//table[@id='customers']/tbody/tr[1]/th
    Log To Console    ${columnCount}
    ${selectingText}=    Get Text    xpath=//table[@id='customers']/tbody/tr[3]/td[2]
    Log To Console  ${selectingText}
    Click Element    xpath://*[@id="customers"]/tbody/tr[3]/td[1]/input
    Sleep   3
    Capture Page Screenshot
    Close Browser


