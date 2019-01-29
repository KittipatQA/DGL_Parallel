*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oi_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OI_Lis_1.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        OI Check Result 1
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
1ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว   tester@gmail.com   123123   OI Page Search   yes   no   no   ชำระแล้ว
2ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ค้างชำระ   tester@gmail.com   123123   OI Page Search   no   yes   no   ค้างชำระ
3ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ยกเลิกรายการ   tester@gmail.com   123123   OI Page Search   no   no   yes   ยกเลิกรายการ