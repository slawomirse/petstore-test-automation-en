*** Settings ***
Library    custom_module.py

*** Test Cases ***
Test Python Library
    ${result}    Add Two Numbers    5    3
    Should Be Equal    ${result}    ${8}
    Log To Console    Result: ${result}
