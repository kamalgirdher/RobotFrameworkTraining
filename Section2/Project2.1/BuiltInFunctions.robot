*** Test Cases ***
TC1
	${a}=    Set Variable    50

TC2
	${a}=    Set Variable If    True==True    50    100
	Log    ${a}
TC3
	${a}=    Set Variable If    True==False    50    100
	Log    ${a}

TC4 - Set Global Variable
	${a}=    Set Variable    50
	Set Global Variable    ${a}

TC5 - Convert To Binary
	${a}=    Set Variable    99
	${b}=    Convert To Binary    ${a}
	Log    ${b}

TC6 - Convert To Boolean
    ${a}=    Set Variable    tRuE
    ${b}=    Convert To Boolean    ${a}
    Log    ${b}

TC7 - Convert To Bytes
    ${b}=    Convert To Bytes    75 65 77 65 76     int
    Log    ${b}

TC8 - Convert To Hex
    ${b}=    Convert To Hex    100    10
    ${b}=    Convert To Hex    100    8

TC9 - Convert To Integer
    ${b}=    Convert To Integer    FF    16

TC10 - Convert To Number
    ${b}=    Convert To Number    41.111    1
    
TC11 - Convert To Octal
    ${b}=    Convert To Octal    111    2
    
TC12 - Convert To String
    ${b}=    Convert To String    100