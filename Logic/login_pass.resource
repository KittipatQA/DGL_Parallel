*** Settings ***
Library              SeleniumLibrary
Resource             /Users/USER1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Log In Pass Validate 
    [Arguments]            ${username}    ${password}     ${logic}      ${image_name}    
    Set Selenium Speed     0.3
    Set Directory          ${image_name}
    Capture Screen
    Input User             ${username}    
    Input Password         ${password}
    Capture Screen
    Login Submit                 
    Wait Until Page Contains     ${logic}   
    Capture Screen
    

