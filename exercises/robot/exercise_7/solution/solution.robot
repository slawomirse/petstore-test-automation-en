*** Test Cases ***
Text Validation
    ${value}    Set Variable    abc
    Should Be Equal    ${value}    abc

    ${text}    Set Variable    The quick brown fox jumps over the lazy dog
    Should Contain    ${text}    quick
