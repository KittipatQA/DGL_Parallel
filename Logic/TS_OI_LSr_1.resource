*** Settings ***
Library              SeleniumLibrary
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

OI Check List Search 1
    [Arguments]            ${username}    ${password}       ${image_name}       ${condition_1}      ${condition_2}      ${condition_3}      ${result_status}    ${data}
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
    Run Keyword If     '${condition_1}' == 'yes'        Click Cbx Paid   
    ...                ELSE                             Unclick Cbx Paid

    Run Keyword If     '${condition_2}' == 'yes'        Click Cbx outstanding   
    ...                ELSE                             Unclick Cbx outstanding

    Run Keyword If     '${condition_3}' == 'yes'        Click Cbx cancel   
    ...                ELSE                             Unclick Cbx cancel
    Capture Screen
    Input Data Search    ${data}
    Click Btn Search
    Set Suite Variable      @{status_line}      ${result_status}
    Set Suite Variable       ${status_true}   สถานะถูกต้อง
    Set Suite Variable       ${status_false}  สถานะไม่ถูกต้อง
    Set Suite Variable       ${status_value}  ไม่พบรายการ
    ${column}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
    Set Suite Variable       ${column}
    Run Keyword If       ${column}>0        Log To Console      มีรายการ       ELSE        fail  ${column} : ${status_value}
    :FOR    ${index}    IN RANGE     0     ${column}
    \   ${status_now}=      Get Text     //*[@id="sl-oe-detail-${index}"]/div[7]/label
    \   Run Keyword If     $status_now in $status_line      Log To Console      ${status_now} : ${status_true}      ELSE        fail  ${status_now} : ${status_false}
    :FOR    ${index}    IN RANGE     0     ${column}
    \   ${data_document}=    Get Text     //*[@id="sl-oe-detail-0"]/div[3]/label
    \   Run Keyword If     '${data_document}'=='${data}'     Log To Console      ${data_document} : ${status_true}      ELSE        fail  ${data_document} : ${status_false}
    Capture Screen