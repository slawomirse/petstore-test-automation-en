*** Settings ***
Resource    resources/user.resource

*** Test Cases ***
Default Admin User Should Exist
    # TODO: Send GET to /user/${DEFAULT_ADMIN_USERNAME}, expect status 200
    # TODO: Extract the "username" field from the response
    # TODO: Verify the username equals ${DEFAULT_ADMIN_USERNAME}
