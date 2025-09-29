*** Settings ***
Resource    ../page_objects/example_page.robot
Library     SeleniumLibrary
Library     Screenshot

*** Keywords ***
Open And Check Example Site
    Open Example Page
    Check Example Title

Close Example Site
    Close Example Page

Capture Screenshot On Failure
    [Arguments]    ${name}=screenshot
    Capture Page Screenshot    ${name}.png
