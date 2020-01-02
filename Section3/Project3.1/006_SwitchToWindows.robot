*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***   
TC1 - Handling browser windows
        ${a}=    Open Browser    https://www.google.com    chrome
        ${b}=    Open Browser    https://www.google.co.in    chrome
        Switch Browser    ${a}
        Maximize Browser Window
        Input Text    //input[@class='gLFyf gsfi']    Kamal Girdher    
        Switch Browser    ${b}
        Maximize Browser Window
        Input Text    //input[@class='gLFyf gsfi']    xtremeExcel
     
TC2 - Handling popups
    ${a}=    Open Browser    http://demo.guru99.com/popup.php    chrome
    Click Element    //*[text()='Click Here']
    Select Window    NEW
    Input text    //input[@name='emailid']    kamal@kamal.com
    Sleep    2s
    Close Window
    Select Window    MAIN
    Sleep    2s
    Close Window    