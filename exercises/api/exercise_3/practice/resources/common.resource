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
    # TODO: Return the value of ${field_name} from the response JSON
