*** Settings ***
Resource                               ../base/base-search.robot
Variables                              signIn-locator.yaml
Variables                              search-locator.yaml

*** Keywords ***
Input Username
    Wait Until Element Is Visible      locator=${username_input}
    Input Text                         locator=${username_input}    text=support@ngendigital.com

Input Password
    Input Text                         locator=${password_input}    text=abc123

Click Sign In Button On Login Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Input Search
    Input Text                         locator=${search_input}    text=DA935

Click Search Button On Search Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
