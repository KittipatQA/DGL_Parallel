*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Input User 
    [Arguments]     ${username}              
    Input Text      id:input-email     ${username}
    
Input Password
    [Arguments]     ${password}
    Input Text      id:input-password     ${password}

Login Submit
    Click Button    id:btn-submit-login