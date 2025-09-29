*** Settings ***
Resource    ../../resources/web_keywords.robot
Library     SeleniumLibrary
Library     OperatingSystem



*** Test Cases ***
Verify Example Page Title
    [Documentation]    Open the page, check title, capture screenshot on failure
    Open And Check Example Site
    Close Example Site
