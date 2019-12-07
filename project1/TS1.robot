*** Test Cases ***

TestCase1 - Celcius to Farenheit
    ${celcius}=    Set Variable    37
    ${Farehneit}=    Evaluate    (${celcius}*9/5)+32
    Log    ${Farehneit}
    
TestCase2 - Celcius to Farenheit in Bulk
    @{celcius}=    Create List    10    12    37    22
    FOR    ${temp}    IN    @{celcius}
        ${Farehneit}=    Evaluate    (${temp}*9/5)+32
        Log    ${Farehneit}
    END
    