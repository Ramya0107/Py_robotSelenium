*** Settings ***
Library     SeleniumLibrary
Library     WebDriverManager

*** Test Cases ***
ScrollingTestTillSpecifiedPixel
    Open Browser    https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_area    Chrome
    Maximize Browser Window
    Execute JavaScript  window.scrollTo(0,1500)
    Sleep   3

ScrollingTillFindingElement
    Scroll Element Into View    xpath=//*[@id='See_also']
    Sleep   3

SrollingEndOfPage
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
    Sleep   5

ScrollingStartOfPage
    Execute JavaScript  window.scrollTo(0, -document.body.scrollHeight)
    Sleep   5