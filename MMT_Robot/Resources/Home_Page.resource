*** Settings ***

Library    DateTime   
Library    SeleniumLibrary     
Library    OperatingSystem  
Library    String    
Resource    ../Base/Common_Functionalites.resource

*** Variables ***

# MMT_SEARCH 

${PP1}                 //span[@class="langCardClose"]  
${PP2}                 //section[@class='modalMain tcnFooter '] 
${PP3}                 //li[@data-cy="account"]
${HOTELS}              //*[contains(@class,'chSprite chHotels')]
${SEARCH}              //button[@id='hsw_search_button']
${CHECKIN}             id=checkin
${CHECK_IN_DATE}       (//div[text()='26'])[1]
${CHECK_OUT}           id=checkout
${CHECK_OUT_DATE}      (//div[text()='31'])[2]  

${MonthYearValue_IN_Xpath}    (//div[@class='DayPicker-Caption'])[1]
${MonthYearValue_OUT_Xpath}    (//div[@class='DayPicker-Caption'])[2]
${CHECK_OUT_ARR}        //span[@aria-label='Next Month']
${GUEST}               id=guest 
${ADULTS}              (//li[text()='3'])
${ADD_CHILDREN}        //div[@class='addRooomDetails']//ul[2]//li[contains(text(),'0')]
${APPLY_CHANGES}       //button[contains(text(),'APPLY')]
${PRICE_PER_NIGHT}     //label[contains(text(),'₹2500-₹5000')] 
${ADD_ANOTHER_ROOM}    //button[normalize-space()='+ ADD ANOTHER ROOM'] 
${REMOVE_ROOM}         //div[@class='addRooomDetails']//p[1]//a[1][contains(text(),'')]
${SCROLL_PERCENTAGE}   window.scrollTo();
${OUTSIDE_SIDE_CLICK}  //div[@class='hsw hswFullWidth ']


# MMT_LANDING

${CITY}                //label[contains(@for,'city')] 
${CITY_INPUT}          //input[@placeholder='Enter city/ Hotel/ Area/ Building']
${INPUT_CITY}          //input[@placeholder='Enter city/ Hotel/ Area/ Building']
${SEARCH_INPUT}        (//ul[@role='listbox']//li//p[contains(text(),'Delhi')])[1] 
${FNF}                 //div[@id='Listing_hotel_0']
#         FILTERS
${NEAR_AIRPORT}        //span[contains(text(),'T3 - Delhi Airport (IGI), Delhi')]
${SELECT_BREAKFAST}    //span[contains(text(),'Free Breakfast')]
${SELECT_PRICE}        //label[contains(text(),'₹ 7500 - ₹ 9500')]  
${SELECT_BUDGET_MIN}   //input[@placeholder='Min']     
${SELECT_BUDGET_MAX}   //input[@placeholder='Max']  
${BUDGET_ARR}          //div[@class='range']//button   
${USER_RATING}         //span[contains(text(),'4 Star')]
${STAR_RATING}         //span[contains(text(),'4 & above (Very Good)')]
${CLICK_PROPERTY}      id=hlistpg_proptypes_show_more   
${SELCT_PROPERTY}      //input[@aria-label='Villa']
${ENTER AMENITIES}     //input[@placeholder='Search amenities']
${SELECT_AMENITIES}    //label[@for='Balcony/Terrace'] 
${SELECT_G_LOVE}       //label[@for='Swimming Pool'] 
${SELCT_BP}           (//span[contains(text(),'Caretaker')])[1]    
${SELECT_HRULES}      //span[contains(text(),'Pets Allowed')]
${SELECT_BEDS&BEDROOMS}    //p[normalize-space()='Bedrooms']
${BACK_TO_TOP}        //a[@id='back_to_top_button']
${VIEW_MAP}           //button[@data-testid='listingPgMapImg']  
${INPUT_LOC}          /Cl//input[@placeholder='Search location or property']
${SELECT_LOC}         //li[@id='react-autowhatever-1--item-1']
${BOOK_THIS_NOW}      //button[@id='detpg_headerright_book_now']
${VIEW_OTHER_ROOMS}   //a[@id='detpg_headerright_other_rooms']


*** Keywords ***
                                                        # Search #
Click on Hotel
    Click Element    ${HOTELS}    
     
Click on Search
    Click Element    ${SEARCH}
    
Wait
    Run Keyword And Ignore Error    Click Element    ${PP1}
    Sleep   2s
    Run Keyword And Ignore Error    Click Element    ${PP2}
    Sleep   2s    
    Run Keyword And Ignore Error    Click Element    ${PP3}

Click Date
    [Arguments]    ${Day}
    
    Click Element    ((//div[@class='DayPicker-Month'])[1]//div[@class='DayPicker-Day'])[${Day}] 
    
Click Next_Month
    Click Element    //span[@aria-label='Next Month']  
    Sleep    1s 

Check-In Date
    [Arguments]    ${MonthYear}    ${Day}
   
    Click Element    ${CHECKIN}
    Set Local Variable    ${InputMonthYear}    ${MonthYear}
        
    FOR      ${counter}    IN RANGE    0    12
         Wait Until Element Is Visible    ${MonthYearValue_IN_Xpath}   
         ${MonthYearValue}    Get Text    ${MonthYearValue_IN_Xpath}
         Run Keyword If    "${InputMonthYear}"!="${MonthYearValue}"    Click Next_Month    
         Exit For Loop If    "${InputMonthYear}"=="${MonthYearValue}"
    END  
    Click Date    ${Day} 
    
Check-Out Date
    [Arguments]    ${MonthYear}    ${Day}
   
    Click Element    ${CHECKOUT}
    Set Local Variable    ${InputMonthYear}    ${MonthYear}
        
    FOR      ${counter}    IN RANGE   "${InputMonthYear}"   12
         Wait Until Element Is Visible    ${MonthYearValue_OUT_Xpath}    
         ${MonthYearValue}    Get Text    ${MonthYearValue_OUT_Xpath}
         Run Keyword If    "${InputMonthYear}"=="${MonthYearValue}"    Click Next_Month    
         Exit For Loop If    "${InputMonthYear}"=="${MonthYearValue}"
    END  
    Click Date    ${Day}
    
Select Rooms & Guests
   Click Element    ${CHECKIN}
   Click Element    ${CHECK_IN_DATE}   
   Click Element    ${CHECK_OUT}    
   Click Element    ${CHECK_OUT_DATE}         
   Click Element      ${GUEST}
   Click Element      ${ADULTS}

Select Children
    Click Element   ${ADD_CHILDREN}    
   
Apply Changes
    Wait Until Element Is Visible   ${APPLY_CHANGES}   
    Click Button    ${APPLY_CHANGES}   
   
Apply Price
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
                                                           # Landing #

City
    Click Element   ${CITY}    
    Click Element   ${CITY_INPUT} 
    Input Text      ${INPUT_CITY}       Delhi   
    Click Element   ${SEARCH_INPUT}  
    
Select 1st Hotel
    Click Element   ${FNF}
    
Select Near Airport Filter
    Click Element   ${NEAR_AIRPORT}
    
Select Breakfast Filter
    Click Element   ${SELECT_BREAKFAST} 
    
Select Prize Filter
    Click Element   ${SELECT_PRICE} 
    
Select Budget Filter
    [Arguments]     ${SELECT_BUDGET_MIN}    ${SELECT_BUDGET_MAX}
    Click Element   ${SELECT_BUDGET_MIN}
    Click Element   ${SELECT_BUDGET_MAX}
    Click Element   ${BUDGET_ARR}  
    
Select User Rating
    Click Element   ${USER_RATING}   

Select Star Rating
    Click Element   ${STAR_RATING}
    
Select Property Type
    Click Element   ${CLICK_PROPERTY}   
    Sleep    3s    
    Click Element   ${SELCT_PROPERTY} 
   
Select Amenites 
    Input Text      ${ENTER_AMENITIES}    Balcony 
    Click Element   ${SELECT_AMENITIES} 
    
Select Guest Love
    Click Element   ${SELECT_G_LOVE}    
    
Select Booking Preference
    Click Element   ${SELCT_BP}   
                                      
Select House Rules
    Click Element   ${SELECT_HRULES}     
 
Select Beds & Bedrooms
    Click Element   ${SELECT_BEDS&BEDROOMS}    
    
Back to Top
    Click Element   ${BACK_TO_TOP}  
    
View Map
    Click Element   ${VIEW_MAP}    
    
Search Location or Property
    Input Text      ${INPUT_LOC}       Nashik
    Click Element   ${SELECT_LOC}       
    
Book this Now
    Click Element    ${BOOK_THIS_NOW}    

View Other Rooms
    Click Element    ${VIEW_OTHER_ROOMS}
    



    