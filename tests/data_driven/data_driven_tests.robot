*** Settings ***
Resource    ../../resources/api_keywords.robot
Library     DataDriver    file=../../data/users.csv    encoding=UTF-8

*** Test Cases ***
Create Users From CSV
    [Documentation]   
    [Template]    Create User
    ${name}    ${job}
