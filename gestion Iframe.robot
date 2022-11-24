*** Settings ***
Library    SeleniumLibrary
Library    XML
*** Variables ***
*** Test Cases ***
test gerer alerte
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    gc
    Maximize Browser Window
    Sleep    2
    Select Frame    //iframe[@title='All Packages']
    Click Link    //a[normalize-space()='org.openqa.selenium']
    Unselect Frame
    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame
    Select Frame    name:classFrame
    Click Link    Help
    Unselect Frame
    Sleep    3
    Close All Browsers