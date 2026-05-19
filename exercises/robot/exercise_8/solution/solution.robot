*** Test Cases ***
Example Try Except Finally
    TRY
        Log To Console    In TRY block
        Fail    This is an error
    EXCEPT
        Log To Console    Error caught in EXCEPT block
    FINALLY
        Log To Console    Final cleanup in FINALLY block
    END
