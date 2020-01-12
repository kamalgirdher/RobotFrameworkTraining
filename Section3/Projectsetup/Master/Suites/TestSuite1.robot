*** Settings ***
Resource    ../FunctionLibrary/Common/CommonFunctions1.robot
Suite Setup    PerformImport

*** Test Cases ***
TC1- This should pass
    Log    ${data1}

TC2- This should pass
    Log    ${config1}

TC3- This should fail at step3
    Log    ${welcomeMsg}
    SpecificFunction1
    SpecificFunction2