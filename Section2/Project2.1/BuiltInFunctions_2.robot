*** Test Cases ***
TC13 - Info Logs
    Set Log Level    INFO
    Log    this is Info Log    INFO
    Log    <h1>this is HTML Log</h1>    HTML
    Log    this is WARN Log    WARN
    Log    this is ERROR Log    ERROR
    Log    this is DEBUG Log    DEBUG

TC14 - Debug and Trace Logs
    Set Log Level    DEBUG
    ${a}=    Set Variable    100
