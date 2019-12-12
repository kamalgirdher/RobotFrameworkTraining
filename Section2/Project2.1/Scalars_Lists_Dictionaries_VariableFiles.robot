*** Settings ***
Variables         config.py

*** Variables ***
${scalar1}        10
${scalar2}        Hello World
@{list1}          Sun    Mon    Tue    Wed    Thu    Fri    Sat
&{dict1}          jan=1    feb=2    mar=3    apr=4    may=5    jun=6

*** Test Cases ***
TC1
    Log    ${list1[1]}
    Log    ${dict1['mar']}
    @{list2}=    Create List    1    2    3    4
    Log    ${list2[2]}

TC2
    &{dict2}=    Create Dictionary    a=1    b=2    c=3    d=4
    Log    ${dict2['c']}

TC3
    Log    ${firstname}${space}${lastname}
