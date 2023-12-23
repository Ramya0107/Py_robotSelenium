*** settings ***
Library     SeleniumLibrary
Library    WebDriverManager

*** Variables ***
${BROWSER}    Chrome

*** Test Cases ***
Login & test dropdown box
    Open Browser    https://www.saucedemo.com/  ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Swag Labs
    Input Text  xpath=//input[@id='user-name']  standard_user
    Input text  xpath=//input[@id='password']   secret_sauce
    Click Element   xpath=//input[@id='login-button']
    Sleep   1
    Click Element   xpath=//select[@class='product_sort_container']
    Select From List By Value   xpath=//select[@class='product_sort_container']   za
    Click Element    //div[@class='inventory_item'][1]/div
    Click Element   //button[@class='btn btn_primary btn_small btn_inventory']
    Sleep   3
    Capture Page Screenshot     /Users/balakumaar/PycharmProjects/pythonProject1/Test2_Screen1.png
    Click Link  xpath=//*[@id="shopping_cart_container"]/a
    Click Element   xpath=//*[@id='checkout']
    Wait Until Page Contains    Checkout: Your Information
    Input Text  xpath=//input[@id='first-name']     standard
    Input Text  xpath=//input[@id='last-name']     user
    Input Text  xpath=//input[@id='postal-code']    32003
    Capture Page Screenshot     /Users/balakumaar/PycharmProjects/pythonProject1/Test2_Screen2.png
    Click Button    xpath=//*[@id='continue']
    Sleep   3
    Wait Until Page contains    Checkout: Overview
    ${FinalAmountPaid}  Get Text   xpath=//*[@id="checkout_summary_container"]/div/div[2]/div[8]
    Log To Console  ${FinalAmountPaid}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Capture Page Screenshot     /Users/balakumaar/PycharmProjects/pythonProject1/Test2_Screen3.png
    Click Element    xpath=//*[@id='finish']
    Close Browser
