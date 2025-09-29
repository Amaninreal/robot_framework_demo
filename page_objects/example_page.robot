*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${WEB_URL}      ${WEB_URL}      
${BROWSER}  ${BROWSER}     

*** Keywords ***
Open Example Page
    Open Browser    ${WEB_URL}    ${BROWSER}
    Maximize Browser Window

Check Example Title
    Title Should Be    Example Domain
    Run Keyword If Test Failed    Capture Page Screenshot

Close Example Page
    Close All Browsers
