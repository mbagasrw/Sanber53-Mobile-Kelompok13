*** Settings ***
Resource                               ../SignInPage/signInValid-page.robot
Resource                               ../base/base-search.robot
Variables                              ../SignInPage/signIn-locator.yaml
Variables                              search-locator.yaml

*** Keywords ***
Input Username Cred
    Wait Until Element Is Visible      locator=${username_input}
    Input Text                         locator=${username_input}    text=support@ngendigital.com

Input Password
    Input Text                         locator=${password_input}    text=abc123

Click SignIn Button On Login Page Validd
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Is Success Logged In
    Wait Until Page Contains            text="Sign Out"

Click Search Button on Home Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Input BookingId Invalid
    Input Text                         locator=${search_input}    text=ABC123

Click Search Button on Search Page Invalid
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Verify User Is Fail To Search 
    Wait Until Page Contains            text="Please enter valid Flight Number"