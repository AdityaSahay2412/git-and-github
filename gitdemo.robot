*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Open the webpage
    open browser    https://saucedemo.com/    chrome
    Title Should Be    Swag Labs
    [Teardown]    Close Browser


Login with valid credentials
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Button    id:login-button
    Page Should Contain Element    xpath://div[@class='inventory_list']
    [Teardown]    Close Browser


Login with invalid credentials
    Input Text    id:user-name    invalid_user
    Input Text    id:password    wrong_password