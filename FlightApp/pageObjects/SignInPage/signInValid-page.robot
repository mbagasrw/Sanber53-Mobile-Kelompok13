*** Settings ***
Resource                               ../base/base.robot
Variables                              signIn-locator.yaml

*** Keywords ***
Input Username Valid
    Wait Until Element Is Visible      locator=${username_input}
    Input Text                         locator=${username_input}    text=support@ngendigital.com

Input Password
    Input Text                         locator=${password_input}    text=abc123

Click Sign In Button On Login Page Valid
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Is Succesfully Logged In 
    Wait Until Page Contains    text="Sign Out"