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
    [Teardown]    Logout If Needed
    Generate New User Data
    Open Home Page
    Verify Home Page Is Loaded
    Open Register Form
    Fill Register Form    ${NEW_USER_USERNAME}    ${NEW_USER_EMAIL}    ${NEW_USER_FIRST_NAME}    ${NEW_USER_LAST_NAME}    ${NEW_USER_PASSWORD}    ${NEW_USER_PHONE}
    Submit Register Form
    Verify Registration Success
    Submit Login Form With Credentials    ${NEW_USER_USERNAME}    ${NEW_USER_PASSWORD}
    Verify Login Success Is Displayed
    Verify User Is Logged In    ${NEW_USER_USERNAME}
