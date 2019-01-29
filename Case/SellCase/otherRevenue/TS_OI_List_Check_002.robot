*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OI_Lis_2.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        OI Check Result 2
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
4ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_เลือก_Checkbox_ชำระแล้ว_เลือก_Checkbox_ค้างชำระ_เลือก_Checkbox_ยกเลิกรายการ   tester@gmail.com   123123   OI Page Search      ชำระแล้ว     ค้างชำระ    ยกเลิกรายการ