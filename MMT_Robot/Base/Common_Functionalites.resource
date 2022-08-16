*** Settings ***
Documentation   This file contains browser configuration details,reusable keywords
Library     SeleniumLibrary

*** Variables ***
${BROWSER_NAME}        gc
${URL}                 https://www.makemytrip.com/

*** Keywords ***
Launch Browser
    
   SeleniumLibrary.Open Browser    https://www.makemytrip.com/    chrome    executable_path=${EXECDIR}${/}Drivers${/}chromedriver.exe
   SeleniumLibrary.Maximize Browser Window
 
End Browser
 
    Close Browser