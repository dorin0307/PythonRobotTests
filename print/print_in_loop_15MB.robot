*** Settings ***
Documentation     prints random string in range of 1800, report size will be 15MB
Library           String

*** Test Cases ***
For-Loop-In-Range
    FOR    ${INDEX}    IN RANGE    1    1800
        Log To Console    ${INDEX}
        ${RANDOM_STRING}=    Generate Random String    ${INDEX}
        Log To Console    ${RANDOM_STRING}
    END