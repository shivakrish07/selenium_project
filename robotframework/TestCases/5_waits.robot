*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
wait
    open browser    http://demowebshop.tricentis.com/register   chrome
    ${speed}=  get selenium speed
    log to console    ${speed}
    maximize browser window
    set selenium speed    2 seconds
    wait until page contains    Register
    select radio button    Gender   M
    input text    name:FirstName    shiva
    input text    name:LastName     krishna
    input text    name:Email    shivakrishna@gmail.com
    input text    name:Password     shiva
    close browser
