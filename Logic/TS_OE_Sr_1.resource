*** Settings ***
Library              SeleniumLibrary
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Check Search 1
    [Arguments]            ${username}    ${password}       ${image_name}       ${data}
    Set Selenium Speed     0.5
    Set Directory          ${image_name}
    Capture Screen
    Input User             ${username}    
    Input Password         ${password}
    Capture Screen
    Login Submit                 
    Wait Until Element Is Visible           ${logic}
    Capture Screen
    Click Tab Buy
    Capture Screen
    Click Tab OtherExpense
    Capture Screen
    Click Btn Search
    ${column}=       Get Element Count        //*[@id="sl-oe-detail-0"]
    Set Suite Variable      ${column}
    Log To Console       ${column}
    Run Keyword If       ${column} > 1        Fail
    Input Data Search    ${data}
    Click Btn Search
    ${number_document}=    Get Text     //*[@id="sl-oe-detail-0"]/div[1]/label 
    Set Suite Variable       ${status_true}   สถานะถูกต้อง
    Set Suite Variable       ${status_false}  สถานะไม่ถูกต้อง
    Run Keyword If     '${number_document}'=='${data}'      Log To Console      ${number_document} : ${status_true}      ELSE        fail  ${number_document} : ${status_false}  
    Capture Screen