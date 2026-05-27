*** Settings ***
Resource    common.resource

*** Keywords ***
Login As Default Admin
    # TODO: Create an auth tuple from ${DEFAULT_ADMIN_USERNAME} and ${DEFAULT_ADMIN_PASSWORD}
    # TODO: Send GET to /user/login with auth and expect status 200
    # TODO: Extract the "message" field from the response (this is the token)
    # TODO: Verify the token is not empty
    # TODO: Store the token as a SUITE-scoped variable

Logout
    ${headers}=    Create Json Headers
    # TODO: Build the logout payload containing the current token
    # TODO: Send POST to /user/logout with the payload and headers, expect status 200
