*** Settings ***
Resource    common.resource
Library     ../libraries/payload_builders.py

*** Variables ***
${test_password}     Test1234
${test_username}     ${EMPTY}

*** Keywords ***
Create Test User
    ${headers}=    Create Json Headers
    # TODO: Call Build User Payload to generate a random user payload dict
    # TODO: Serialize the payload to a JSON string
    # TODO: Save the generated username to ${test_username} with TEST scope
    # TODO: Send POST to /user with json headers and the user body, expect 200

Login As Test User
    # TODO: Build auth tuple with (test_username, test_password)
    # TODO: Send GET to /user/login with the auth tuple, expect 200
    # TODO: Extract the token from the response "message" field
    # TODO: Set ${token} as a Suite variable

Create Authenticated Test User
    Create Test User
    # TODO: Call Login As Test User
