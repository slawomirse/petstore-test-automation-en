*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource
Resource    resources/ui/pages/home_page.resource
Resource    resources/ui/pages/login_page.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Test Cases ***
Login With Wrong Password
    [Tags]    known_bug
    [Documentation]    Known bug: this scenario demonstrates a known application bug.
    Open Home Page
    Verify Home Page Is Loaded
    Open Login Form
    Submit Login Form With Credentials    ${DEFAULT_ADMIN_USERNAME}    wrong-password
    Verify Login Error Is Displayed
    Verify User Is Logged In As Guest

Login With Correct Password
    # TODO: Add [Teardown] to call Logout If Needed
    # TODO: Open the home page
    # TODO: Verify the home page loaded correctly
    # TODO: Open the login form
    # TODO: Submit the form with the default admin username and password
    # TODO: Verify the login success message is displayed
    # TODO: Verify the user is logged in as ${DEFAULT_ADMIN_USERNAME}
