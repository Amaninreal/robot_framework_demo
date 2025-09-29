*** Settings ***
Resource    ../../resources/api_keywords.robot

*** Test Cases ***
GET Users List - Page 2
    ${result}=    GET Users    2
    Log    ${result}

Create New User - Aman
    ${result}=    Create User    Aman    Tester
    Log    ${result}
