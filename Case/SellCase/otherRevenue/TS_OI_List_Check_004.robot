*** Settings ***
Library              SeleniumLibrary
Library              BuiltIn
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/home_page.resource
Resource             ${Path_Environment}/Page/oe_page.resource
Resource             ${Path_Environment}/Page/login_page.resource   
Resource             ${Path_Environment}/Logic/TS_OI_Lis_3.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Teardown        Run Keyword If Test Failed     Capture Screen
Test Template        OI Check Result 0
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Tasks ***
6ตรวจสอบการแสดงรายการ_โดยมีเงื่อนไขดังนี้_ไม่เลือกสถานะเอกสาร   automate@gmail.com   123123   OE Page Search   yes   no   no