*** Settings ***
Suite Setup       suite_setup
Suite Teardown    suite_teardown
Test Setup        test_setup
Test Teardown     test_teardown

*** Test Cases ***
TC1
    [Tags]    critical
    Log    1

TC2
    [Tags]    non-critical
    Log    2
    Fail

TC3
    [Tags]    critical
    Log    3

*** Keywords ***
suite_setup
    Log    SuiteStarts

suite_teardown
    Run Keyword If All Critical Tests Passed    UserKeyword4
    LOG    SUITE ENDS

test_setup
    LOG    TEST START

test_teardown
    Log    TEST ENDS

UserKeyword4
    Log    All critical tests passed
