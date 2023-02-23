*** Settings ***

Library    DateTime   
Library    SeleniumLibrary     
Library    OperatingSystem  
Library    String    
Resource    ../Base/Common_Functionalites.resource

*** Variables ***

# MMT_SEARCH 

${Departure_MonthYear}    November2022
${Departure_Date}    28

${Departure_MMonthYear}    December2022
${Departure_DDate}    01

${RoomType}    16


${ARR_POPUP}           document.elementFromPoint(1115, 54).click();
${POPUP}               //div[@class='autopop__wrap autopop__wrap__new makeFlex column defaultCursor']

${PP1}                 //span[@class="langCardClose"]  
${PP2}                 (//div[@class='landingContainer'])[1]
${mybizLoginClose}     xpath=//span[@class='mybizLoginClose']
${mbizUse__close}      xpath=//span[@class='mbizUse__close']  

${HOTELS}              //*[contains(@class,'chSprite chHotels')]
${SEARCH}              //button[@id='hsw_search_button']
${RECENT_SEARCHES}     //ul[@class='recentSearches']//li[2]
${CHECKIN}             id=checkin
${CHECK_IN_DATE}       (//div[text()='26'])[1]
${CHECK_OUT}           id=checkout
${CHECK_OUT_DATE}      (//div[text()='27'])[1]  
${MonthYearValue_IN_Xpath}     (//div[@class='DayPicker-Caption'])[1]
${MonthYearValue_OUT_Xpath}    (//div[@class='DayPicker-Caption'])[2]
${CHECK_OUT_ARR}               //span[@aria-label='Next Month']
${GUEST}                       id=guest 
${ADULTS}                      (//li[text()='2'])
${ADD_CHILDREN}                //div[@class='addRooomDetails']//ul[2]//li[contains(text(),'0')]
${APPLY_CHANGES}               //button[contains(text(),'APPLY')]
${PRICE_PER_NIGHT}             //label[contains(text(),'₹2500-₹5000')] 
${ADD_ANOTHER_ROOM}            //button[normalize-space()='+ ADD ANOTHER ROOM'] 
${REMOVE_ROOM}                 //div[@class='addRooomDetails']//p[1]//a[1][contains(text(),'')]
${SCROLL_PERCENTAGE}           window.scrollTo();
${OUTSIDE_SIDE_CLICK}          //div[@class='hsw hswFullWidth ']

*** Keywords ***
                                                        # Search #
Click on Hotel
    Sleep     2s
    Click Element    ${HOTELS}    
     
Click on Search
    Click Element    ${SEARCH}
    
Select Recent Search 
    Click Element    ${RECENT_SEARCHES}    
    
Hindi Language Pop Up 
    Run Keyword And Ignore Error    Click Element    ${PP1}
    Sleep    2s    

Pop Up 2
    Execute Javascript    ${ARR_POPUP}   

Handling Log-In Pop Up
    Run Keyword And Ignore Error       Pop Up 2 
    
#   Run Keyword And Ignore Error    Click Element    ${PP2}     
#    Run Keyword And Ignore Error    Click Element    ${PP3} 
#    Sleep    2s     
#    Click Element    ${mybizLoginClose}
#    Click Element    ${mbizUse__close}
#    Sleep    2s
   
Click Date
    [Arguments]    ${Day}
    
    Click Element    ((//div[@class='DayPicker-Month'])[1]//div[@class='DayPicker-Day'])[${Day}] 
    
Click Next_Month
    Click Element    //span[@aria-label='Next Month']  
    Sleep    1s 

Check-In Date
    [Arguments]    ${MonthYear}    ${Day}
   
    Click Element         ${CHECKIN}
    Set Local Variable    ${InputMonthYear}    ${MonthYear}
        
    FOR      ${counter}    IN RANGE    0    12
         Wait Until Element Is Visible    ${MonthYearValue_IN_Xpath}   
         ${MonthYearValue}    Get Text    ${MonthYearValue_IN_Xpath}
         Run Keyword If    "${InputMonthYear}"!="${MonthYearValue}"    Click Next_Month    
         Exit For Loop If    "${InputMonthYear}"=="${MonthYearValue}"
    END  
    Click Date    ${Day} 
    
Check-Out Date
    [Arguments]    ${CO_MonthYear}    ${CO_Day} 
   
    Click Element         ${CHECKOUT}
    Set Local Variable    ${OutputMonthYear}    ${CO_MonthYear}
    
     FOR      ${counter}    IN RANGE    0    12
         Wait Until Element Is Visible    ${MonthYearValue_IN_Xpath}   
         ${MonthYearValue}    Get Text    ${MonthYearValue_IN_Xpath}
         Run Keyword If    "${OutputMonthYear}"!="${MonthYearValue}"    Click Next_Month    
         Exit For Loop If    "${OutputMonthYear}"=="${MonthYearValue}"
    END  
    Click Date    ${CO_Day} 
    
Select Rooms & Guests
   Sleep    2s    
   Click Element    ${CHECKIN}
   Click Element    ${CHECK_IN_DATE}   
   Click Element    ${CHECK_OUT}    
   Click Element    ${CHECK_OUT_DATE}         
   Click Element    ${GUEST}
   Click Element    ${ADULTS}

Select Children
    Click Element   ${ADD_CHILDREN}    
   
Apply Changes
    Wait Until Element Is Visible   ${APPLY_CHANGES}   
    Click Button    ${APPLY_CHANGES}   
   
Apply Price Filter on Search Page
    Click Element   ${PRICE_PER_NIGHT}

Add Another Room
    Click Element   ${ADD_ANOTHER_ROOM} 

Remove Room   
    Click Element   ${REMOVE_ROOM}
   
Scroll
    [Arguments]           ${SCROLL_PERCENTAGE} 
    Execute Javascript    ${SCROLL_PERCENTAGE}   
      
Side Click
    Click Element   ${OUTSIDE_SIDE_CLICK}
    
