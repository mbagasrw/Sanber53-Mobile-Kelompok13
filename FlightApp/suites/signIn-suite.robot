*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/SignInPage/signIn-page.robot

*** Test Cases ***
SignIn with Invalid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    signIn-page.Input Password
    Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    Close Flight Application