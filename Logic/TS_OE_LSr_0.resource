*** Settings ***
Library              SeleniumLibrary
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource

*** Variables ***

*** Keywords ***

Oe Check List Search 0
    [Arguments]            ${username}    ${password}       ${image_name}       ${condition_1}      ${condition_2}      ${condition_3}      ${data}
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
    Run Keyword If     '${condition_1}' == 'yes'        Click Cbx Paid   
    ...                ELSE                             Unclick Cbx Paid

    Run Keyword If     '${condition_2}' == 'yes'        Click Cbx outstanding   
    ...                ELSE                             Unclick Cbx outstanding

    Run Keyword If     '${condition_3}' == 'yes'        Click Cbx cancel   
    ...                ELSE                             Unclick Cbx cancel
    Capture Screen
    Input Data Search    ${data}
    Click Btn Search
    ${column}=       Get Element Count        //*[contains(@id, 'sl-oe-detail')]
    Set Suite Variable      ${column}
    Log To Console       ${column}
    Run Keyword If       ${column} > 0        Fail
    Page Should Contain Element     //table-body/div/div/label                
    Capture Screen