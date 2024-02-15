*** Settings ***
Resource             ../pageObjects/HomePage/home-page.robot
Resource             ../pageObjects/SignInPage/signInValid-page.robot
Resource             ../pageObjects/SearchPage/search-page.robot

*** Test Cases ***
Search with Valid Data
    Click Search Button on Home Page
    Input BookingId
    Click Search Button on Search Page
    Verify User Is Succesfully Search