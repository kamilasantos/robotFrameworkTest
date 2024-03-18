*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Open Browser To Site
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window

Close Browser
    Close Browser