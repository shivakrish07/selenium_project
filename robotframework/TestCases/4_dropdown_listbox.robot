*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
DropDown and ListBox
    open browser    ${url}  ${browser}

    select from list by label    continents     Europe
    sleep    3
    select from list by index    continents     5

    select from list by label    selenium_commands      Navigation Commands
    select from list by index    selenium_commands      4

    unselect from list by label    selenium_commands    Navigation Commands
    sleep    4

    close browser
*** Keywords ***
