*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Test Cases ***
Verify Guest Mode
    Open Home Page
    Verify Home Page Is Loaded
    Verify User Is Logged In As Guest

Verify Default Pet On Home Page
    # TODO: Open the application at ${BASE_FRONTEND_URL}
    # TODO: Verify that the home page loaded correctly
    # TODO: Verify that the default pet element is visible and has the expected name
