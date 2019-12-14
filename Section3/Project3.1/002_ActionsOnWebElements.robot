*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1 - Clicking a link
    Open Browser    https://www.amazon.in    chrome
    #Click Element function is used to perform click operation on web elements
    Click Element    //a[contains(text(),'Try Prime')]

TC2 - Writing in a textbox
     Open Browser    https://www.google.in    chrome
     #Writing in search text box
     Input Text    //input[@class='gLFyf gsfi']    Kamal Girdher
     #Click on Google Search button
     Click Element    //*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]

TC3 - Selecting a radio button
    Open Browser    https://www.dyn-web.com/tutorials/forms/examples/pizza.php    chrome
    Click Element    //*[@id="pizzaForm"]/fieldset/p[1]/label[3]/input
    
TC4 - Selecting a checkbox
    Open Browser    https://www.dyn-web.com/tutorials/forms/examples/pizza.php    chrome
    Click Element    //*[@id="pizzaForm"]/fieldset/p[1]/label[3]/input
    
TC5 - Selecting from a dropdown
    Open Browser    http://khanabook.weebly.com/store/c1/Featured_Products.html    chrome
    Select From List By Label    //select[@id='input-263590537572862908']    10 - 18 yrs    
    