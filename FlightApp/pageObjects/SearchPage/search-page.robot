*** Settings ***
Resource                               ../base/base-search.robot
Variables                              ../SignInPage/signIn-locator.yaml
Variables                              search-locator.yaml

*** Keywords ***
Input Username Valid
    Wait Until Element Is Visible      locator=${username_input}
    Input Text                         locator=${username_input}    text=support@ngendigital.com

Input Password
    Input Text                         locator=${password_input}    text=abc123

Click Sign In Button On Login Page Valid
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Click Search Button on Home Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/button6" and @text="Search"]

Input BookingId
    Input Text                         locator=${search_input}    text=DA935

Click Search Button on Search Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Verify User Is Succesfully Search 
    Wait Until Page Contains            text="Success"