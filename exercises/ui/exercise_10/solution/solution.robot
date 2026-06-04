*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource
Resource    resources/ui/pages/home_page.resource
Resource    resources/ui/pages/login_page.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Test Cases ***
Login With Correct Password
    [Teardown]    Logout If Needed
    Open Home Page
    Verify Home Page Is Loaded
    Login As Default User
    Verify User Is Logged In    ${DEFAULT_ADMIN_USERNAME}
