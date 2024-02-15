*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/SignInPage/signInValid-page.robot
Resource             ../pageObjects/SearchPage/search-page-invalid.robot

*** Test Cases ***
SignIn with Valid Data
    Open Flight App
    Click SignIn Button On Home Page
    Input Username Cred
    signInValid-page.Input Password
    Click SignIn Button On Login Page Validd
    Verify User Is Success Logged In

Search with Invalid Data
    Click Search Button on Home Page
    search-page-invalid.Input BookingId Invalid
    Click Search Button on Search Page Invalid
    Verify User Is Fail To Search