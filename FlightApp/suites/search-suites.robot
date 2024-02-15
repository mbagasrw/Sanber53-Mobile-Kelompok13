*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/LoginPage/login-page.robot
Resource             ../pageObjects/SearchPage/search-page.robot

*** Test Cases ***
Search with Valid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    Input Password
    Click Sign In Button On Login Page
    Verify User Is Fail To Logged In
    
    Click Search Button on Home Page
    Input BookingId
    Click Search Button on Search Page
