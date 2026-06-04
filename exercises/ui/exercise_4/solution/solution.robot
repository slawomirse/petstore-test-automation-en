*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource
Resource    resources/ui/pages/home_page.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Test Cases ***
Verify Guest Mode
    Open Home Page
    Verify Home Page Is Loaded
    Verify User Is Logged In As Guest
