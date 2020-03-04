*** Settings ***
Documentation    this is suite level documentation
Test Setup    Log    test setup 1
Test Teardown    Log    test teardown 1


*** Keywords ***
CommonFunction1
    Log    test message 1
    Log    test message 2
    Log    test message 3

CommonFunction2
    [Arguments]    ${msg1}    ${msg2}    ${msg3}
    Log    ${msg1}
    Log    ${msg2}
    Log    ${msg3}



*** Test Cases ***
TC1
    [Documentation]    this is test level documentation
    [Setup]    Log    test setup 2
    [Teardown]    Log    test teardown 2
    Log    test message 1
    Log    test message 2
    Log    test message 3

TC2
    Log    test message 1
    Log    test message 2
    Log    test message 3

TC3
    [Documentation]    Test having User keyword without arguments
    CommonFunction1
    
TC4
    [Documentation]    Test having User keyword with arguments
    CommonFunction2    test message 1    test message 2    test message 3
      
TC5
    [Documentation]    Test to convert celcius to fahrenheit
    ${celcius}=    Set Variable    37
    ${fahrenheit}=    Evaluate    (${celcius}*9/5)+32
    Log    ${fahrenheit}
    
TC6
    [Documentation]    Test to convert List of celcius values to fahrenheit
    @{celcius}=    Create List    10    12    37    22
    FOR    ${temp}    IN    @{celcius}
        ${fahrenheit}=    Evaluate    (${temp}*9/5)+32
        Log    ${fahrenheit}
    END