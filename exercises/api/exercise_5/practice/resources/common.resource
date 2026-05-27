*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Resource   variables.resource

*** Keywords ***
Send GET Request
    [Arguments]    ${endpoint}    ${auth}=@{EMPTY}    ${expected_status_code}=200
    ${response}=    GET    ${BASE_URL}${endpoint}    auth=${auth}    expected_status=any
    Should Be Equal As Integers    ${response.status_code}    ${expected_status_code}
    RETURN    ${response}

Send POST Request
    [Arguments]    ${endpoint}    ${payload}    ${headers}=&{EMPTY}    ${expected_status_code}=200
    ${response}=    POST    ${BASE_URL}${endpoint}    data=${payload}    headers=${headers}    expected_status=any
    Should Be Equal As Integers    ${response.status_code}    ${expected_status_code}
    RETURN    ${response}

Get Json Field
    [Arguments]    ${response}    ${field_name}
    RETURN    ${response.json()['${field_name}']}

Create Json Headers
    &{headers}=    Create Dictionary    Content-Type=application/json
    RETURN    ${headers}
