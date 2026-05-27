*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Resource   variables.resource

*** Keywords ***
Send GET Request
    [Arguments]    ${endpoint}    ${expected_status_code}=200
    ${response}=    GET    ${BASE_URL}${endpoint}    expected_status=any
    Should Be Equal As Integers    ${response.status_code}    ${expected_status_code}
    RETURN    ${response}

Get Json Field
    [Arguments]    ${response}    ${field_name}
    RETURN    ${response.json()['${field_name}']}

Send POST Request
    [Arguments]    ${endpoint}    ${payload}    ${headers}=&{EMPTY}    ${expected_status_code}=200
    # TODO: Send a POST request to ${BASE_URL}${endpoint} with data=${payload} and headers=${headers}
    # TODO: Verify the status code equals ${expected_status_code}
    # TODO: Return the response

Create Json Headers
    # TODO: Create and return a dictionary with Content-Type=application/json
