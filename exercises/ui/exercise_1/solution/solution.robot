*** Settings ***
Resource    resources/variables.resource

*** Test Cases ***
Verify Variables Are Loaded
    Log    Backend URL: ${BASE_BACKEND_URL}
    Log    Frontend URL: ${BASE_FRONTEND_URL}
    Log    Default Admin: ${DEFAULT_ADMIN_USERNAME}
    Should Not Be Empty    ${BASE_BACKEND_URL}
    Should Not Be Empty    ${BASE_FRONTEND_URL}
