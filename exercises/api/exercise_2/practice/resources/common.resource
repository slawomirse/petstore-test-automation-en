*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Resource   variables.resource

*** Keywords ***
Send GET Request
    [Arguments]    ${endpoint}    ${expected_status_code}=200
    # TODO: Send a GET request to ${BASE_URL}${endpoint}
    # TODO: Verify the status code equals ${expected_status_code}
    # TODO: Return the response
