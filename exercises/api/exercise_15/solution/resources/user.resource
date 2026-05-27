*** Settings ***
Resource    common.resource
Library     ../libraries/payload_builders.py

*** Variables ***
${test_password}     Test1234
${test_username}     ${EMPTY}

*** Keywords ***
Create Test User
    ${headers}=    Create Json Headers
    ${payload}=    Build User Payload
    ${user_body}=    Serialize To Json    ${payload}
    VAR    ${test_username}    ${payload['username']}    scope=TEST
    Send POST Request    endpoint=/user    payload=${user_body}    headers=${headers}    expected_status_code=200

Login As Test User
    ${auth}=    Evaluate    ($test_username, $test_password)
    ${response}=    Send GET Request    /user/login    auth=${auth}    expected_status_code=200
    ${token}=    Get Json Field    ${response}    message
    Set Suite Variable    ${token}    ${token}

Create Authenticated Test User
    Create Test User
    Login As Test User
