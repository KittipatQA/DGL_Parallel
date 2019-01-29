*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OE_Sr_3.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        Oe Check Search 3
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
13ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ค้นหารายละเอียดรายการที่มีในระบบ   tester@gmail.com   123123   OE Page Search   ค่าเช่า