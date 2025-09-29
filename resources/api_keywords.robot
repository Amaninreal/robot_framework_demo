*** Settings ***
Library    OperatingSystem
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    ${BASE_URL}   # OS environment variable

*** Keywords ***
GET Users
    [Arguments]    ${page}=1
    ${response}=    GET    ${BASE_URL}/api/users?page=${page}
    Should Be Equal As Integers    ${response.status_code}    200
    [Return]    ${response.json()}

Create User
    [Arguments]    ${name}    ${job}
    ${response}=    POST    ${BASE_URL}/api/users    json={"name":"${name}", "job":"${job}"}
    Should Be Equal As Integers    ${response.status_code}    201
    [Return]    ${response.json()}
