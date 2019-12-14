*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1 - Launch Chrome
    Open Browser    https://www.amazon.com    chrome

TC2 - Launch Firefox
    Open Browser    https://www.amazon.com    firefox

TC3 - Launch Internet Explorer
    Open Browser    https://www.amazon.com    ie