*** Comments ***
Navigate to MakeMyTrip
*** Settings ***
Library    SeleniumLibrary
Resource    ../appdata/appdata.resource
*** Variables ***
${ALERT_01}            xpath=//span[@class="langCardClose"]
${ALERT_02}            xpath=//div[@class='landingContainer']  
${mybizLoginClose}     xpath=//span[@class='mybizLoginClose']
${mbizUse__close}      xpath=//span[@class='mbizUse__close']  

${SEARCH_BTN}          xpath=//a[contains(text(),'Search')]
${TRAINS_LINK_BTN}     link=Trains

*** Keywords ***
Handle Alerts
    Run Keyword And Ignore Error    Handle Notification Alerts
    
Handle Notification Alerts
    Click Element    ${ALERT_01}
    Sleep    2s    
    Click Element    ${ALERT_02}
    Sleep    3s     
    Click Element    ${mybizLoginClose}
    Click Element    ${mbizUse__close}
    Sleep    3s
    
Validate Landing Page WebElements
#   Validate the Title of the landing page
    ${Get_title}          Get Title
    Title Should Be    ${title_landing_pge}
    Log To Console      ${Get_title}
#   Validate SEARCH Button is present
    sleep    2s
    Element Should Be Visible    ${SEARCH_BTN}
    Element Text Should Be    ${SEARCH_BTN}    ${Search_btn_txt}         
#   Validate the URL of the current page
    Log Location 
   
    
Navigate To Trains Page
    #Click on Trains Button
    Click Element    ${TRAINS_LINK_BTN}
    
Click On Search Button
    #Click On Search Button
    Sleep    2s    
    Click Element    ${SEARCH_BTN}    
    
