*** Settings ***
Resource    resources/user.resource

*** Test Cases ***
Bearer Headers Should Be Created After Login
    Login As Default Admin
    # TODO: Call Create Bearer Headers and save to ${headers}
    # TODO: Log the headers to verify they contain the Authorization key
    # TODO: Should Not Be Empty    ${headers['Authorization']}
    Logout
