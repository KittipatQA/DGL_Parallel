*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OI_LSr_0.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        OI Check List Search 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
22ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ค้างชำระ_ระบุรายการที่มีสถานะ_ค้างชำระ_ในระบบ     automate@gmail.com      123123      OE Page Search      yes     yes     no      บริษัท ดีแทค ไตรเน็ต จำกัด
