*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    https://www.google.com    chrome
    Execute Javascript    alert("Create a simple alert.")
    Sleep    2s
    Handle Alert    ACCEPT
    Sleep    1s
    Execute Javascript    var x= confirm("Confirmation alert.")
    Sleep    2s
    Handle Alert    DISMISS
    Sleep    1s
    Execute Javascript    var y= prompt("Prompt alert.")
    Sleep    2s
    Input Text Into Alert    hello there    ACCEPT