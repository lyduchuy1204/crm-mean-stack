*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        http://127.0.0.1:4200/
${LOGIN_PAGE}    /html/body/app-root/app-login/div[2]/div/h3

*** Test Cases ***
Login Test Using Edge Browser
    Open Browser    ${URL}    Edge    headless=False
   
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=${LOGIN_PAGE}    timeout=10s
    
    # Close Browser at the end of the test
    Close Browser
