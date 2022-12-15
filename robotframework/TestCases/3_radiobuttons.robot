*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
RadioButtons

    open browser    ${url}    ${browser}
    set selenium speed    0.50seconds
#    Radio buttons
    select radio button   sex    Female
    select radio button   exp   5

#    Check Box
    select checkbox   Automation Tester
    select checkbox   Selenium Webdriver

    unselect checkbox   Selenium Webdriver

    close browser

*** Keywords ***
