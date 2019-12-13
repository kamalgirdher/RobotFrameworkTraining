*** Test Cases ***
TC1 - For loop using range
    :FOR    ${i}    IN RANGE    1    10
    \    Log    ${i}

TC2 - For loop using range - with correct upper bound
    :FOR    ${i}    IN RANGE    1    11
    \    Log    ${i}

TC3 - For loop using a list
    @{a}=    Create List    1    2    3    4    5
    :FOR    ${i}    IN    @{a}
    \    Log    ${i}

TC4 - Exit for loop in between
    @{a}=    Create List    1    2    3    4    5
    :FOR    ${i}    IN    @{a}
    \    Log    ${i}
    \    Exit For Loop

TC5 - Conditional Exit from For Loop
    @{a}=    Create List    1    2    3    4    5
    :FOR    ${i}    IN    @{a}
    \    Exit For Loop If    ${i}>3
    \    Log    ${i}

TC6 - New FOR END loop Syntax from robotframework v > 3.2
    FOR    ${i}    IN RANGE    1    11
        Log    ${i}
    END
    