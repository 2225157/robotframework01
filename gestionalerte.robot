*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
test gerer alerte
    Open Browser    http://omayo.blogspot.com/    gc
    Maximize Browser Window
    Sleep    2
    Click Element    alert1
    Sleep    2
    #Alert Should Be Present    Hello
    ${message}    Handle Alert
    Log To Console    ${message}
    Should Be Equal    ${message}    Hello
    ${url}    Get Location
    Log To Console    ${url}
    Close All Browsers
*** Keywords ***