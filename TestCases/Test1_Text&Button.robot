*** Settings ***
Library     SeleniumLibrary
Library    WebDriverManager

*** Variables ***
${BROWSER}    Chrome

*** Test Cases ***
Login Using TextBox & Button
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Login
    sleep   3
    Input Text  xpath://input[@placeholder='Username']   Admin
    Input Text  xpath://input[@placeholder='Password']   admin123
    Click Button    xpath://button[@type='submit']

    Wait Until Page Contains    Dashboard
    Click Link  xpath://*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a
    sleep   3
    Capture Page Screenshot
    Close Browser
