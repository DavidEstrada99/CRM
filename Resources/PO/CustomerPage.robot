*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Add a new Customer
    Click Link            id=new-customer
    Page Should Contain    Add Customer
    Input Text             id=EmailAddress         janedoe@gmail.com
    Input Text             id=FirstName            jane
    Input Text             id=LastName             Doe
    Input Text             id=City                 Dallas
    Select From List By Value    id=StateOrRegion  TX 
    Select Radio Button    gender    female
    Select Checkbox    name=promos-name
    Click Button    Submit
    Wait Until Page Contains    Success! New customer added