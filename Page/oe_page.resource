*** Settings ***
Library              SeleniumLibrary

*** Variables ***

*** Keywords ***

Click Cbx Paid 
    Select Checkbox     id:cbx-oe-paid-input
    Checkbox Should Be Selected     name:paid

Unclick Cbx Paid 
    Checkbox Should Be Selected     name:paid
    Click Element       xpath://*[@id="cbx-oe-paid"]/label/div
    Checkbox Should Not Be Selected     name:paid

Click Cbx outstanding 
    Select Checkbox    id:cbx-oe-outstanding-input
    Checkbox Should Be Selected     name:outstanding

Unclick Cbx outstanding
    Checkbox Should Be Selected     name:outstanding
    Click Element      xpath://*[@id="cbx-oe-outstanding"]/label/div
    Checkbox Should Not Be Selected     name:outstanding

Click Cbx cancel 
    Select Checkbox    id:cbx-oe-void-input
    Checkbox Should Be Selected     name:void

Unclick Cbx cancel
    Checkbox Should Be Selected     name:void
    Click Element       xpath://*[@id="cbx-oe-void"]/label/div
    Checkbox Should Not Be Selected     name:void

Click Btn Search
    Click Button       id:btn-oe-search-keyword

Input Data Search 
    [Arguments]     ${data}
    Input Text      id:ipt-oe-txt     ${data}