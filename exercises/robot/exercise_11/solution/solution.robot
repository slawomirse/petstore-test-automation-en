*** Settings ***
Suite Setup    Setup Suite
Suite Teardown    Teardown Suite

*** Test Cases ***
First Test In Suite
    Log To Console    First test running

Second Test In Suite
    Log To Console    Second test running

*** Keywords ***
Setup Suite
    Log To Console    Suite setup - initializing resources

Teardown Suite
    Log To Console    Suite teardown - cleaning up resources
