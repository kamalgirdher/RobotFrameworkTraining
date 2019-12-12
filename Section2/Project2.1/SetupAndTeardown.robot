*** Settings ***
Suite Setup       suite_setup
Suite Teardown    suite_teardown
Test Setup        test_setup
Test Teardown     test_teardown

*** Test Cases ***
TC1
    Log    1

TC2
    Log    2

TC3
    Log    3

*** Keywords ***
suite_setup
    Log    SETUP SUITE

suite_teardown
    LOG    SUITE ENDS

test_setup
    LOG    TEST START

test_teardown
    Log    TEST ENDS
