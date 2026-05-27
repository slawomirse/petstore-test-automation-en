*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
${BASE_URL}    http://127.0.0.1:8000

*** Test Cases ***
First GET Request
    ${response}=    GET    ${BASE_URL}/pet/1    expected_status=any
    Should Be Equal As Integers    ${response.status_code}    200
    Log    Response: ${response.json()}
