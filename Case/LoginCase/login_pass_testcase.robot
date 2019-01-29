*** Settings ***
Library              SeleniumLibrary
Resource             /Users/user-1/.jenkins/workspace/DGL_Parallel/Resource/dglforsme.resource
Resource             ${Path_Environment}/Page/login_page.resource
Resource             ${Path_Environment}/Logic/login_pass.resource
Suite Setup          Open the web page
Test Setup           Go to login page
Test Template        Log In Pass Validate
Suite Teardown       Close Browser

*** Variables ***

*** Keywords ***

*** Test Cases ***

8ตรวจสอบการเข้าสู่ระบบ_กรณี_Email_Password_ถูกต้อง   test@gmail.com   123123   Dharmniti Genaral Ledger   Login Case
