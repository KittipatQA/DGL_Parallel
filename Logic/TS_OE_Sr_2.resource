*** Settings ***
Library              SeleniumLibrary
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Check Search 2
    [Arguments]            ${username}    ${password}       ${image_name}       ${data}
    Set Selenium Speed     0.5
    Set Directory          ${image_name}
    Capture Screen
    Input User             ${username}    
    Input Password         ${password}
    Capture Screen
    Login Submit                 
    Wait Until Element Is Visible           ${logic}
    Element Should Contain      ${logic}       ${logic_title} 
    Capture Screen
    Click Tab Buy
    Capture Screen
    Click Tab OtherExpense
    Capture Screen
    Input Data Search    ${data}
    Click Btn Search
    Set Suite Variable       ${status_true}   สถานะถูกต้อง
    Set Suite Variable       ${status_false}  สถานะไม่ถูกต้อง
    Set Suite Variable       ${status_value}  ไม่พบรายการ
    ${column}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
    Set Suite Variable       ${column}
    Run Keyword If       ${column}>0        Log To Console      มีรายการ       ELSE        fail  ${column} : ${status_value}
    :FOR    ${index}    IN RANGE     0     ${column}
    \   ${status_now}=   Get Text     //*[@id="sl-oe-detail-${index}"]/div[2]/label
    \   Log To Console      ${status_now}
    \   Run Keyword If      '${status_now}'=='${data}'      Log To Console      ${status_now} : ${status_true}      ELSE      fail  ${status_now} : ${status_false}
    Capture Screen