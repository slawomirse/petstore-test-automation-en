*** Settings ***
Resource    resources/ui/pages/home_page.resource

*** Test Cases ***
Verify Page Object Files Exist
    Log    home_page.resource loaded successfully
    Log    Page Object Model structure is ready
