*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource
Resource    resources/ui/pages/home_page.resource
Resource    resources/ui/pages/login_page.resource
Resource    resources/ui/pages/register_page.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Variables ***
${NEW_USER_USERNAME}      ${EMPTY}
${NEW_USER_EMAIL}         ${EMPTY}
${NEW_USER_FIRST_NAME}    ${EMPTY}
${NEW_USER_LAST_NAME}     ${EMPTY}
${NEW_USER_PHONE}         ${EMPTY}
${NEW_USER_PASSWORD}      ${EMPTY}

*** Test Cases ***
Register New Account And Login
    # TODO: Add [Teardown] to call Logout If Needed
    # TODO: Generate new random user data
    # TODO: Open the home page and verify it loaded
    # TODO: Open the registration form
    # TODO: Fill in the registration form with the generated user data
    # TODO: Submit the registration form
    # TODO: Verify registration succeeded
    # TODO: Submit the login form with the new username and password
    # TODO: Verify login success message
    # TODO: Verify the user is logged in with the new username
