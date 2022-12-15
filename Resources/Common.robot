*** Settings ***
Library      SeleniumLibrary

*** Keywords ***
Open Page chrome browser
    open browser            https://automationplayground.com/crm/       chrome


Settting selenium 
    Set selenium speed      .2s
    Set selenium timeout    10s