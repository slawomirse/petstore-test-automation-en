*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource
Resource    resources/ui/pages/home_page.resource
Resource    resources/ui/pages/login_page.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Test Cases ***
Login With Wrong Password
    # TODO: Open the home page
    # TODO: Verify the home page loaded correctly
    # TODO: Open the login form
    # TODO: Submit the login form with a valid username and wrong password
    # TODO: Verify that a login error message is displayed
    # TODO: Verify that the user is still logged in as Guest
