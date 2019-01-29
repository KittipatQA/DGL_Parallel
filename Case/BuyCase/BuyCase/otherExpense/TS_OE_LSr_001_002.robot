*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OE_LSr_0.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        Oe Check List Search 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
21ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว_ระบุรายการที่ไม่มีในระบบ   tester@gmail.com   123123   OE Page Search   yes   no   no   เครื่องบินโดยสาร
22ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ไม่เลือก_Checkbox_ระบุรายการที่มีสถานะ_ชำระแล้ว_ในระบบ   tester@gmail.com   123123   OE Page Search   no   no   no   ค่าเช่า
23ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ไม่เลือก_Checkbox_ระบุรายการที่ไม่มีในระบบ   tester@gmail.com   123123   OE Page Search   no   no   no   ค่าเช่า
