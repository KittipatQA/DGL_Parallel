*** Settings ***
Library              SeleniumLibrary
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

OI Check Result 2
    [Arguments]            ${username}    ${password}       ${image_name}       ${result_status}        ${result2_status}       ${result3_status}
    Set Selenium Speed     0.5
    Set Directory          ${image_name}
    Capture Screen
    Input User             ${username}    
    Input Password         ${password}
    Capture Screen
    Login Submit                  
    Wait Until Element Is Visible           ${logic}
    Capture Screen
    Click Tab Sell
    Capture Screen
    Click Tab otherRevenue
    Capture Screen
    Click Btn Search
    Set Suite Variable      @{status_line}      ${result_status}      ${result2_status}       ${result3_status}
    Set Suite Variable       ${status_true}   สถานะถูกต้อง
    Set Suite Variable       ${status_false}  สถานะไม่ถูกต้อง
    Set Suite Variable       ${status_value}  ไม่พบรายการ
    ${column}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
    Set Suite Variable       ${column}
    Log To Console      ${column}
    Run Keyword If       ${column}>0        Log To Console      มีรายการ       ELSE        fail  ${column} : ${status_value}
    :FOR    ${index}    IN RANGE     0     ${column}    
    \   ${status_now}=   Get Text     //*[@id="sl-oe-detail-${index}"]/div[7]/label
    \   Run Keyword If     $status_now in $status_line      Log To Console      ${status_now} : ${status_true}      ELSE      fail  ${status_now} : ${status_false}
    Capture Screen
    