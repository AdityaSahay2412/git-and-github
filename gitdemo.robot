*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Open the webpage
    open browser    https://saucedemo.com/    chrome
    Title Should Be    Swag Labs
    [Teardown]    Close Browser
