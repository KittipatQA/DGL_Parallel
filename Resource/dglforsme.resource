*** Settings ***
Library              SeleniumLibrary    run_on_failure=Nothing
Library              DateTime

*** Variables ***
${open_url}          https://dgl-acct.addtechhub.com
${login_url}         ${open_url}/login
${Path_Environment}     /Users/user-1/.jenkins/workspace/DGL_Parallel           
${Output_url}        ${Path_Environment}/Screen
${Type of file}      png
${title}             DGL Accounting
${logic}             //*[@class="title"] 
${logic_title}       :Dgl Account
           
*** Keywords ***
Open the web page
    Open Browser    ${open_url}     chrome
    Maximize Browser Window
    Set Selenium Speed  0.5

Go to login page
    Go to           ${login_url}

Get DateTime
     ${date current}=     Get Current Date      result_format=%Y-%m-%d %H-%M-%S
     [Return]     ${date current}    
    
Set Directory
    [Arguments]         ${image_name}
    ${Date}=  Get DateTime
    Log To Console      ${Date}                    
    Set Suite Variable     ${Path}     ${Output_url}/${image_name} ${Date}

Capture Screen
    Capture Page Screenshot         ${Path}/${TEST_NAME}{index}.${Type of file}


