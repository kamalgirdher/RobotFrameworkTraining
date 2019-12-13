*** Settings ***
Resource          resource1.robot

*** Test Cases ***
TC1 - Set Variable If
    #If condition returns true
    ${cond}=    Set Variable    True
    ${a}=    Set Variable If    ${cond}==True    10
    Log    ${a}
    #If condition returns false
    ${a}=    Set Variable If    ${cond}==False    10    0
    Log    ${a}
    
TC2 - Run Keyword If
    ${cond}=    Set Variable    True
    Run Keyword If    ${cond}==True    UserKeyword1    ELSE    UserKeyword2        
    
TC3 - Run Keyword Unless
    FOR    ${i}    IN RANGE    1    10
        Log    ------
        Run Keyword Unless    ${i}>5    Log    Iteration=${i}
    END
    
TC4 - Continue For Loop If
    FOR    ${i}    IN RANGE    1    10
        Log    Starting ${i}
        Continue For Loop If    ${i}>5
        Log    Ending ${i}
    END
    
TC5 - Exit For Loop If
    FOR    ${i}    IN RANGE    1    10
        Log    Starting ${i}
        Exit For Loop If    ${i}>5
        Log    Ending ${i}
    END
    
TC6 - Pass Execution If
    ${i}=    Set Variable    10
    Pass Execution If    ${i}>5    Passing the execution    
    Fail    Forcefully failing the test
    
TC7 - Return From Keyword If
    ${b}=    Userkeyword3

#TC8 - Run Keyword And Return If
    #we will see the usage later

*** Keywords ***
Userkeyword3
    ${a}=    Set Variable    10    
    Return From Keyword If    ${a}<5    Hello
    Return From Keyword If    ${a}>5    Hi
    
