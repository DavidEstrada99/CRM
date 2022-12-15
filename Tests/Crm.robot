*** Settings ***
Documentation       This is some basic info about the whole suite
Resource            ../Resources/Common.robot
Resource            ../Resources/PO/LogInPage.robot
Resource            ../Resources/PO/CustomerPage.robot

#Run the script:
#robot -d results tests/crm.robot

*** Variables ***
${EMAIL}   admin@frameworktutorial.com
${PASSWORD}   qwe  

*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test
    [Tags]                  1006    Smoke   Contacts
    #Initialize Selenium
    Settting selenium 
    #open the browser
    Open Page chrome browser
    #Starting Test Case
    Login    ${EMAIL}    ${PASSWORD}
    Add a new Customer
    sleep               3s
    close browser
