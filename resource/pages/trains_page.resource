*** Comments ***
Navigate to Trains page and Validate the WebElements 

*** Settings ***
Library    SeleniumLibrary
Resource    ../appdata/appdata.resource
Resource    landing_page.resource
Resource    ../../TestSuite/userdata/user_data.resource

*** Variables ***
#Locators for this page
${BOOK_TRAIN_TICKETS}    xpath=//span[contains(text(),'BOOK TRAIN TICKETS')]

${CHECK_PNR_STATUS_LOC}    xpath=//span[@data-cy='checkPnrStatus']
${CHECK_PNR_STATUS_InputBox_LOC}    //input[@id='pnr']
${CHECK_STATUS_CLICK}    xpath=//a[contains(text(),'CHECK STATUS')]

${LIVE_TRAIN_STATUS_LOC}    //span[@data-cy='liveTrainStatus']
${LIVE_TRAIN_STATUS_Input}    xpath=//input[contains(@class,'react-autosuggest__input')]
${First_TRAIN_NAme_option}    //li[@id='react-autowhatever-1-section-0-item-0']
${StOP_TRAINS_LOC}    //span[normalize-space()='${Select_Your_Stop}']   

${CITY_FROM_LOC}    xpath=//label//span[contains(text(),'From')]    
${FROM_TXT_FIELD}    xpath=//input[@placeholder='From']
${FROM_CITY_i0}    xpath=//li[@id='react-autowhatever-1-section-0-item-0']//div[@class='makeFlex']

${FROM_CITY_i0_text}    xpath=//li[@id='react-autowhatever-1-section-0-item-0']//span[@class='sr_city blackText']
${TO_CITY_i0_text}    xpath=//li[@id='react-autowhatever-1-section-0-item-0']//span[@class='sr_city blackText']

${CITY_TO_LOC}    xpath=//span[contains(text(),'To')]
${TO_TXT_FIELD}    xpath=(//input[@placeholder='To'])[1]    
${TO_CITY_i0}    //li[@id='react-autowhatever-1-section-0-item-0']//div[@class='makeFlex']

${TRAVEL_DATE}    id=travelDate
${MonthYearValue_Xpath}    //div[@class='DayPicker-Caption'][1]
${NEXT_MONTH_BTN}    //span[@aria-label='Next Month']
${SEL_CLASS_XPATH}    //span[contains(text(),'Class')]
#xpath=((//div[@class='DayPicker-Month'])[1])//*[text()='${Day}']
#//span[contains(text(),'Class')]

${chMMTLogo_HomePage}    xpath=//a[@class='chMmtLogo']
${RECENT_SEARCHES}    xpath=//ul[@class='recentSearches']//a[@class='darkGreyText']
${recent_serches_FromTo}    xpath=//ul//a//p[contains(text(),'${From_city}')]

${Error_message_samecityin_from_to}    xpath=//span[@class='redText errorMsgText']

${TRAIN_NUMBER}    //input[@id='trainNum']

*** Keywords ***
Validate Trains Page WebElements

    #Validate the title of the Page  
    ${Get_title}          Get Title
    Log To Console      ${Get_title}
    Title should be     ${title_trains_pge}
    Sleep    3s   
     
    #Validate SEARCH Button
    Element Should Be Visible    ${SEARCH_BTN}    
    Element Text Should Be    ${SEARCH_BTN}    ${Search_btn_txt}
    
    #Validate the URL of the current page
    ${Get_url}   Get Location
    Log To Console      ${Get_url} 
    Sleep    2s      
    
Select CHECK PNR STATUS Option
     Click Element    ${CHECK_PNR_STATUS_LOC}   
     Input Text    ${CHECK_PNR_STATUS_InputBox_LOC}    ${PNR_Number}
     Sleep    1s    
     ${Entered_PNR_Number}    Get Value    ${CHECK_PNR_STATUS_InputBox_LOC}
     Log To Console    ${Entered_PNR_Number}   
     Sleep    1s  
     Should Be Equal    ${PNR_Number}    ${Entered_PNR_Number}      
     Click Element    ${CHECK_STATUS_CLICK}      
     
Select The FROM City 
    [Arguments]    ${from_city}
    
    #Select train FROM
    Click Element    ${CITY_FROM_LOC}
    Sleep    1s 
    Input Text    ${FROM_TXT_FIELD}    ${from_city} 
    Sleep    1s 
    Click First FROM City    

Select The TO City 
    [Arguments]    ${to_city}
    
    #Select train TO
    Click Element    ${CITY_TO_LOC}    
    Sleep    1s    
    Input Text    ${TO_TXT_FIELD}    ${to_city}    
    Sleep    1s       
    Click First TO City

#--------------------------------------------------------------------------
Select TRAVEL DATE     
    [Arguments]    ${MonthYear}    ${Day}
  
    Set Local Variable    ${InputMonthYear}    ${MonthYear}
    
    Click Element    ${TRAVEL_DATE}
    
    FOR    ${counter}    IN RANGE    0    999
         Wait Until Element Is Visible    ${MonthYearValue_Xpath}    
         ${MonthYearValue}    Get Text    ${MonthYearValue_Xpath}
         Run Keyword If    "${InputMonthYear}"!="${MonthYearValue}"    Click NextMonth    
         Exit For Loop If    "${InputMonthYear}"=="${MonthYearValue}"
    END  
    Click Date    ${Day}
    
Click NextMonth
    Click Element    ${NEXT_MONTH_BTN}
    Sleep    1s      
Click Date
    [Arguments]    ${Day}   
    Click Element    xpath=((//div[@class='DayPicker-Month'])[1])//*[text()='${Day}']
    #((//div[@class='DayPicker-Month'])[1]//div[@class='DayPicker-Day'])[${Day}]       
       
    
Select CLASS
    [Arguments]     ${Class}
    Click Element    ${SEL_CLASS_XPATH}
    Sleep    2s      
    Run Keyword If    "${Class}"=="All Class"    Click Element    xpath=//li[normalize-space()='All Class']  
    Run Keyword If    "${Class}"=="Sleeper Class"    Click Element    xpath=//li[@data-cy='SL']  
    Run Keyword If    "${Class}"=="Third AC"    Click Element    xpath=//li[normalize-space()='Third AC']
    Run Keyword If    "${Class}"=="Second AC"    Click Element    xpath=//li[normalize-space()='Second AC']   
    Run Keyword If    "${Class}"=="First AC"    Click Element    xpath=//li[normalize-space()='First AC'] 
    Run Keyword If    "${Class}"=="Second Seating"    Click Element    xpath=//li[normalize-space()='Second Seating'] 
    Run Keyword If    "${Class}"=="AC Chair Car"    Click Element    xpath=//li[@data-cy='CC']   
    Run Keyword If    "${Class}"=="First Class"    Click Element    xpath=//li[@data-cy='FC'] 
    Run Keyword If    "${Class}"=="Third AC Economy"    Click Element    xpath=//li[normalize-space()='Third AC Economy']
    
Click Recent Searches
    Click Element    ${chMMTLogo_HomePage}
    Sleep    3s    
    Run Keyword And Ignore Error     Click Element    ${ALERT_02}     
    Navigate To Trains Page  
  #-----------------------------------  
  #Recent Cities Should be visible. Validate the cities
    Sleep    3s    
    ${from_to_city_recentserches}    Get Text    ${recent_serches_FromTo}
    Log To Console    ${from_to_city_recentserches}
    Sleep    2s       
    
    ${from_to_cities} =   Catenate    SEPARATOR=  ${From_city}   ${To_City}
    
    ${from_to_city_recentserches}=          Convert to string    ${from_to_city_recentserches}
    ${from_to_cities}=    Convert to string    ${from_to_cities}
    
    Should be equal   ${from_to_city_recentserches}    ${from_to_cities}       
  #--------------------------------------   
    Click Element    ${RECENT_SEARCHES}
    
Search for Invalid FROM City
    [Arguments]    ${from_Invalid_city}    
    #Select train FROM
    Click Element    ${CITY_FROM_LOC}
    Sleep    1s 
    Input Text    ${FROM_TXT_FIELD}    ${from_Invalid_city} 
    Sleep    1s
    
       Run Keyword If    "${FROM_CITY_i0_text}" == "${from_Invalid_city}"    Run Keywords    Click First FROM City    
   ...    ELSE    Data Matched Message
    
Search for Invalid TO City
    [Arguments]    ${to_Invalid_city}    
     #Select train TO
    Click Element    ${CITY_TO_LOC}    
    Sleep    1s    
    Input Text    ${TO_TXT_FIELD}    ${to_Invalid_city}    
    Sleep    1s       
  
Data Matched Message
    Log To Console    ${City_doent_found_mess}
      
Click First TO City
    Click Element    ${TO_CITY_i0}
    
Click First FROM City
    Click Element    ${FROM_CITY_i0}
    
Show Error If Same City entered inside FROM and TO combobox
    Element Should Be Visible    ${Error_message_samecityin_from_to}   
    Element Text Should Be    ${Error_message_samecityin_from_to}    ${FROM&To_samedata_err} 
    
    ${Error_message_from_to_same_city}    Get Text    ${Error_message_samecityin_from_to}
    Log To Console    ${Error_message_from_to_same_city}
    
Select LIVE TRAIN STATUS Option
    Click Element    ${LIVE_TRAIN_STATUS_LOC}   
    Click Element    ${TRAIN_NUMBER}
    Sleep    2s    
    Input Text    ${LIVE_TRAIN_STATUS_Input}   ${TRAIN_NAME}
    Sleep    3s
    Click Element    ${First_TRAIN_NAme_option}    
    Click Element     ${StOP_TRAINS_LOC} 
    Click Element    //span[contains(text(),'${Train_statrt_date}')]
    Sleep    2s     
    Click Element    ${CHECK_STATUS_CLICK}    
 
        