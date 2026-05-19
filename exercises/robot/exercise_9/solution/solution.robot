*** Test Cases ***
FOR Loop
    ${names}    Create List    Alice    Bob    Charlie    Diana
    FOR    ${name}    IN    @{names}
        Log To Console    ${name}
    END
