*** Settings ***
Library                    AppiumLibrary

*** Variables ***
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android

*** Keywords ***
Open Flight Application
    Open Application       remote_url=${REMOTE_URL}   
    ...                    platformName=${PLATFORM_NAME} 
    ...                    platformVersion=7.1.2    
    ...                    deviceName=Redmi Note_5A    
    ...                    appPackage=com.example.myapplication    
    ...                    appActivity=com.example.myapplication.MainActivity

Close Flight Application
    Close Application