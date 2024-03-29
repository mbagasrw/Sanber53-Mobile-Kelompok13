*** Settings ***
Library                    AppiumLibrary

*** Variables ***
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android

*** Keywords ***
Open Flight App
    Open Application       remote_url=${REMOTE_URL}   
    ...                    platformName=${PLATFORM_NAME} 
    ...                    platformVersion=14.0    
    ...                    deviceName=pixel_3a    
    ...                    appPackage=com.example.myapplication    
    ...                    appActivity=com.example.myapplication.MainActivity

Close Flight App
    Close Application