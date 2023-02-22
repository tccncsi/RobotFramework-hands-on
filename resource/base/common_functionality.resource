*** Comments ***
Common functionalities contains 
*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem    

*** Variables ***
${URL}        https://www.makemytrip.com/
${BROWSER_NAME}    chrome
${CHROME_DRIVER_PATH}    C://RobotFrameworkRED//MakeMyTrip//webdriver//chromedriver.exe   
*** Settings ***
Documentation   This file contains browser configuration details, reusable keywords for automation.
Library     SeleniumLibrary

*** Keywords ***
Launch Browser     
    Open Browser        browser=${BROWSER_NAME}      executable_path=${EXECDIR}${/}webdriver${/}chromedriver.exe
    #${CHROME_DRIVER_PATH} 
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Go To    ${URL}
      
End Browser
    SeleniumLibrary.Set Screenshot Directory    path=${EXECDIR}${/}screenshots//auto
    Capture Page Screenshot
    Close Browser    
    
Take Screenshot
    Empty Directory    path=${EXECDIR}${/}screenshots//manual
    SeleniumLibrary.Set Screenshot Directory    path=${EXECDIR}${/}screenshots//manual
    Capture Page Screenshot
