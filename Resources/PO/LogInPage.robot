*** Settings ***
Library        SeleniumLibrary

             
*** Keywords ***
Login
    [Arguments]    ${email}    ${password}
    Wait Until Page Contains    Customers Are Priority One
    Click Link             Sign In
    Page Should Contain    Login
    
    Input Text             id=email-id    ${email}
    Input Text             id=password         ${password}
    Click Button           Submit
    Wait Until Page Contains   Our Happy Customers
