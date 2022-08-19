*** Settings ***

Library    DateTime   
Library    SeleniumLibrary     
Library    OperatingSystem  
Library    String    
Resource    ../Base/Common_Functionalites.resource

*** Variables ***

# MMT_SEARCH 
${ARR_POPUP}           document.elementFromPoint(1115, 54).click();
${POPUP}               //div[@class='autopop__wrap autopop__wrap__new makeFlex column defaultCursor']

${PP1}                 //span[@class="langCardClose"]  
${PP2}                 (//div[@class='landingContainer'])[1]
${mybizLoginClose}     xpath=//span[@class='mybizLoginClose']
${mbizUse__close}      xpath=//span[@class='mbizUse__close']  

${HOTELS}              //*[contains(@class,'chSprite chHotels')]
${SEARCH}              //button[@id='hsw_search_button']
${CHECKIN}             id=checkin
${CHECK_IN_DATE}       (//div[text()='26'])[1]
${CHECK_OUT}           id=checkout
${CHECK_OUT_DATE}      (//div[text()='31'])[2]  
${MonthYearValue_IN_Xpath}     (//div[@class='DayPicker-Caption'])[1]
${MonthYearValue_OUT_Xpath}    (//div[@class='DayPicker-Caption'])[2]
${CHECK_OUT_ARR}               //span[@aria-label='Next Month']
${GUEST}                       id=guest 
${ADULTS}                      (//li[text()='3'])
${ADD_CHILDREN}                //div[@class='addRooomDetails']//ul[2]//li[contains(text(),'0')]
${APPLY_CHANGES}               //button[contains(text(),'APPLY')]
${PRICE_PER_NIGHT}             //label[contains(text(),'₹2500-₹5000')] 
${ADD_ANOTHER_ROOM}            //button[normalize-space()='+ ADD ANOTHER ROOM'] 
${REMOVE_ROOM}                 //div[@class='addRooomDetails']//p[1]//a[1][contains(text(),'')]
${SCROLL_PERCENTAGE}           window.scrollTo();
${OUTSIDE_SIDE_CLICK}          //div[@class='hsw hswFullWidth ']

# MMT_LANDING

${CITY}                //label[contains(@for,'city')] 
${CITY_INPUT}          //input[@placeholder='Enter city/ Hotel/ Area/ Building']
#${INPUT_CITY}          //input[@placeholder='Enter city/ Hotel/ Area/ Building']
${SEARCH_INPUT}        (//ul[@role='listbox']//li//p[contains(text(),'Delhi')])[1] 
${FNF}                 //div[@id='Listing_hotel_0']
# FILTERS
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
${SELCT_BP}            (//span[contains(text(),'Caretaker')])[1]    
${SELECT_HRULES}       //span[contains(text(),'Pets Allowed')]
${SELECT_BEDS&BEDROOMS}    //p[normalize-space()='Bedrooms']
${BACK_TO_TOP}         //a[@id='back_to_top_button']
${VIEW_MAP}            //button[@data-testid='listingPgMapImg']  
${INPUT_LOC}           /Cl//input[@placeholder='Search location or property']
${SELECT_LOC}          //li[@id='react-autowhatever-1--item-1']
${P_M_O}               //span[@id='detpg_headerright_room_price']
${DONATION}            //label[@for='donate']
                 
#HOTELS DETAILS
  
${BOOK_THIS_NOW}       //button[@id='detpg_headerright_book_now']
${BOOK_BUFFER}        //div[@class='cirLdr white ']
${VIEW_OTHER_ROOMS}    //a[@id='detpg_headerright_other_rooms']
${VIEW_IMAGES}         //button[@id='detpg_headerleft_view_photos'] 
${TITLE_HOTEL}         //p[@id='seoH1DontRemove']
${DEALS_LOGIN}         //a[normalize-space()='LOGIN']
${SELECT ROOM}                  (//p[text()='SELECT ROOM'])[16]
${FREE_CANCELLATION_FILTER}     //label[@for='FREE_CANCELLATION']
${MORE_DETAILS}                 //div[@id='room1']//a[@class='latoBlack font14 capText'][normalize-space()='More Details']
${INDEX_ROOM_TYPE}              //p[@class='rmTypeDropDown__heading']
${USER_REVIEWS}                 //a[@id='detpg_user_reviews']
${VIEW_ALL_ROOMS_INCLUSIONS}    //a[normalize-space()='View All Room Inclusions']
${CANCELLATION_POLICY}          //a[normalize-space()='Cancellation policy details']
${T&C}                          //a[normalize-space()='T&Cs']
${HOTEL_RULES}                  //a[normalize-space()='Read All Hotel Rules']
${TITLE}                        //select[@id='title']
${S_TITLE}                      //select[@id='title']//option[3]
${F_NAME_CLICK}                 //input[@id='fName']
${F_NAME_INPUT}                 //input[@id='fName']
${L_LAST_CLICK}                 //input[@id='lName']
${L_LAST_INPUT}                 //input[@id='lName']
${EMAIL_ID}                     //input[@id='email']
${EMAIL_ID_INPUT}               //input[@id='email']
${CONTACT}                      //input[@id='mNo']
${INPUT_CONTACT}                //input[@id='mNo']
${GST_DETAILS}                  //label[@for='gstVisible']
${REVIEW_ADD_GUEST}             //a[normalize-space()='+ Add Guest']
${SPECIAL_REQUEST}              //label[normalize-space()='Airport transfer']
${PAY_NOW}                      //a[normalize-space()='Pay Now']
${ADD_INSURANCE}                //button[normalize-space()='ADD']

*** Keywords ***
                                                        # Search #
Click on Hotel
    Double Click Element    ${HOTELS}    
     
Click on Search
    Click Element    ${SEARCH}
    
Pop Up 
    Run Keyword And Ignore Error    Click Element    ${PP1}
    Sleep    2s    

Pop Up 2
    Execute Javascript    ${ARR_POPUP}   

Handling Pop Up
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

Set City 
    Click Element   ${CITY}    
    Sleep    2s    
    Input Text      ${CITY_INPUT}       Delhi   
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
    Element Should Be Visible      ${BOOK_BUFFER}    
    
View Other Rooms
    Click Element    ${VIEW_OTHER_ROOMS}
    
View Images
    Click Element    ${VIEW_IMAGES} 

Login for Deals
    Click Element    ${DEALS_LOGIN}        
    
Select room as Business Suite
    [Arguments]      ${SELECT ROOM}    
    Click Element    ${SELECT ROOM}      
    
Select rooms filter
    # Free Cancellation 
    Click Element    ${FREE_CANCELLATION_FILTER}   

Select more details
    Click Element    ${MORE_DETAILS}    
    
Index room type
    Click Element    ${INDEX_ROOM_TYPE}    
    
View User Reviews
    Click Element    ${USER_REVIEWS}    
    
View all Room Inclusions
    Click Element    ${VIEW_ALL_ROOMS_INCLUSIONS}    

Cancellation Policy Details
    Click Element    ${CANCELLATION_POLICY}
    
Select Donation for Covid-19
    Click Element    ${DONATION}    
    
T&C 
    Click Element    ${T&C}    

Guest Details
    Click Element    ${TITLE}    
    Click Element    ${S_TITLE}    
    Click Element    ${F_NAME_CLICK}    
    Input Text       ${F_NAME_INPUT}        Nihil    
    Click Element    ${L_LAST_CLICK}
    Input Text       ${L_LAST_INPUT}        suw
    Click Element    ${EMAIL_ID}
    Input Text       ${EMAIL_ID_INPUT}      jackmmt789@gmail.com
    Click Element    ${CONTACT}
    Input Text       ${INPUT_CONTACT}       8855855868 
    Click Element    ${GST_DETAILS}  
    
Add Guests         Click Element    ${REVIEW_ADD_GUEST}     
    
Special Request
    Click Element    ${SPECIAL_REQUEST}    
    
Pay Now
    Click Element    ${PAY_NOW}    
    
Add Insurance 
    Click Element    ${ADD_INSURANCE}
    
LoginPopup          
    ${LoginPopUp}    Element Should Be Visible    ${POPUP}    message=popoupnotvisible
    Log    ${LoginPopUp} 
  


