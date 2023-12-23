*** settings ***
Library     SeleniumLibrary
Library     WebDriverManager

*** Variables ***
${BROWSER} =    Chrome
#${URL} =    https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407

*** Test Cases ***
TestingCheckboxRadioDropDown
    Open Browser   https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407      ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Volunteer Sign Up
    Sleep   3
    Input Text  xpath://input[@id='RESULT_TextField-1']     Tester
    Input Text  xpath://input[@id='RESULT_TextField-2']     Tester
    Click Element   xpath://input[@id='RESULT_RadioButton-7_0']
#    Select Radio Button     Gender   Radio-0
    Sleep   3
