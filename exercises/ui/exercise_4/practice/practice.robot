*** Settings ***
Resource    resources/ui/setup.resource
Resource    resources/ui/teardown.resource

Suite Setup       Setup Browser
Suite Teardown    Teardown Browser Session

*** Test Cases ***
Verify Guest Mode
    # TODO: Call Open Home Page keyword
    # TODO: Call Verify Home Page Is Loaded keyword
    # TODO: Call Verify User Is Logged In As Guest keyword
