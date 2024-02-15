*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/SignInPage/signInValid-page.robot
Resource             ../pageObjects/SearchPage/search-page.robot

*** Test Cases ***
Search with Valid Data
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username Valid
    signInValid-page.Input Password
    Click Sign In Button On Login Page Valid
    Verify User Is Succesfully Logged In

    Click Search Button on Home Page
    Input BookingId
    Click Search Button on Search Page
    Verify User Is Succesfully Search