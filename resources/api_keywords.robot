*** Settings ***
Library    RequestsLibrary
Library    load_env_keyword.py 


*** Keywords ***
GET Users
    ${BASE_URL}=    Get Env Variable    BASE_URL
    [Arguments]    ${page}=1
    ${response}=    GET    url=${BASE_URL}/api/users?page=${page}
    Should Be Equal As Integers    ${response.status_code}    200
    RETURN    ${response.json()}

Create User
    [Arguments]    ${name}    ${job}
    ${BASE_URL}=    Get Env Variable    BASE_URL
    ${response}=    POST    url=${BASE_URL}/api/users    json={"name":"${name}", "job":"${job}"}
    Should Be Equal As Integers    ${response.status_code}    201
    RETURN    ${response.json()}
