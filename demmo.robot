*** Settings ***
Documentation    Test for user login
Library		 SeleniumLibrary
Library          pageObjectLibrary

*** Variables ***
${SERVER}   	localhost:8080
${ROOT}    	http://${SERVER}/myapp
${BROWSER}  	Chrome
${SELENIUM_URL}     http://localhost:4444
${PLATFORM}         linux
${VERSION}          latest
${USERNAME}         admin
${PASSWORD}         password
${username_field}   id=usernametext
${password_field}   id=passwordtext
${signIn_Button}    id=submit
${LOGIN_URL}        http://${SERVER}/myApp/login
${WELCOME_URL}      http://${SERVER}/myApp/welcome.html

*** test Cases ***
valid login
    [Documentation]       Test valid login  
    Open Login Page      
    Input Username        ${USERNAME} 
    Input Password        ${PASSWORD} 
    Submit Credentials   
    Welcome page is open 

*** Keyword ***
Open test browser
   Open browser  ${ROOT}  ${BROWSER}
    ...  remote_url=${SELENIUM_URL}/wd/hub
    ...  desired_capabilities=browserName:${BROWSER},version:${VERSION},platform:${PLATFORM}

Open Login page
Go To     ${LOGIN_URL}
Login Page Should be Open

login page Shold Be Open
Title Should Be 	Login page


Input Username
   [Arguments]    ${USERNAME}
   Input Text    ${username_field}    ${USERNAME}

Input Password
   [Arguments]    ${PASSWORD}
   Input Text    ${password_field}    ${PASSWORD}

Submit Credentials
   Click Button    ${signIn_Button}   

Welcome Page Is Open
   Location Should Be    ${WELCOME_URL}
   Title Should Be    Welcome Page

Close all test browsers
    Close all browsers

