*** Settings ***
Library     SeleniumLibrary
Library     WebDriverManager

*** Test Cases ***
ForloopWithRange
    FOR   ${i}  IN RANGE   1   10
    Log To Console  ${i}
    END

ForloopWithoutRange
    FOR    ${i}  IN     1 2 3 4 5 6 7
    Log To Console  ${i}
    END

ForloopWithList
    @{nums}    create list  1 2 3 4
    FOR     ${i}    IN  @{nums}
    Log To Console  ${i}
    END

ForloopWithExit
    @{nums}    Create List  1  2  3  4  5
    FOR     ${i}    IN  @{nums}
        Log To Console  ${i}
        Exit For Loop If    ${i} == 3
    END
