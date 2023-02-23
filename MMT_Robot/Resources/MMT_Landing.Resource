*** Settings ***

Library    DateTime   
Library    SeleniumLibrary     
Library    OperatingSystem  
Library    String    
Resource    ../Base/Common_Functionalites.resource

*** Variables ***


# MMT_LANDING

${CITY}                //label[contains(@for,'city')] 
${CITY_INPUT}          //input[@placeholder='Enter city/ Hotel/ Area/ Building']
#${INPUT_CITY}          //input[@placeholder='Enter city/ Hotel/ Area/ Building']
${SEARCH_INPUT}        (//ul[@role='listbox']//li//p[contains(text(),'Delhi')])[1] 
${FNF}                 //div[@id='Listing_hotel_0']
# FILTERS
${NEAR_AIRPORT}        //span[contains(text(),'T3 - Delhi Airport (IGI), Delhi')]
${SELECT_BREAKFAST}    //span[contains(text(),'Free Breakfast')]
${SELECT_PRICE}        //label[contains(text(),'₹ 9500 - ₹ 12500')]
${SELECT_BUDGET_MIN}   //input[@placeholder='Min']     
${SELECT_BUDGET_MAX}   //input[@placeholder='Max']  
${BUDGET_ARR}          //div[@class='range']//button   
${USER_RATING}         //span[contains(text(),'4 Star')]
${STAR_RATING}         //span[contains(text(),'4 & above (Very Good)')]
${CLICK_PROPERTY}      id=hlistpg_proptypes_show_more   
${SELCT_PROPERTY}      //div[@id='MERGE_PROPERTY_TYPE']//li[3]//span[1]//label[1]
${ENTER AMENITIES}     //input[@placeholder='Search amenities']
${SELECT_AMENITIES}    //label[@for='Balcony/Terrace'] 
${SELECT_G_LOVE}       //label[@for='Swimming Pool'] 
${SELCT_BP}            (//span[contains(text(),'Caretaker')])[1]    
${SELECT_HRULES}       //span[contains(text(),'Pets Allowed')]
${CLICK_BEDS&BEDROOMS}     //div[@id='ROOMS_AND_BEDS']//li[2]
${SELECT_BEDS&BEDROOMS}    (//ul[@class='itemCounter font12 darkText'])[2]//li[2]
${BACK_TO_TOP}         //a[@id='back_to_top_button']
${VIEW_MAP}            //button[@data-testid='listingPgMapImg']  
${INPUT_LOC}           /Cl//input[@placeholder='Search location or property']
${SELECT_LOC}          //li[@id='react-autowhatever-1--item-1']
${P_M_O}               //span[@id='detpg_headerright_room_price']
${DONATION}            //label[@for='donate']
 
*** Keywords ***

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
    Click Element    ${SELECT_PRICE} 
    
Select Budget Filter
    Input Text    ${SELECT_BUDGET_MIN}    3000
    Input Text   ${SELECT_BUDGET_MAX}     10000
    Click Element   ${BUDGET_ARR}  
    
Select User Rating
    Click Element   ${USER_RATING}   

Select Star Rating
    Click Element   ${STAR_RATING}
    
Select Property Type
#    Click Element   ${CLICK_PROPERTY} 
#    Sleep    3s    
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
    Click Element   ${CLICK_BEDS&BEDROOMS}    
    Click Element   ${SELECT_BEDS&BEDROOMS}    
    
Back to Top
    Click Element   ${BACK_TO_TOP}  
    
View Map
    Click Element   ${VIEW_MAP}    
    
Search Location or Property
    Input Text      ${INPUT_LOC}       Nashik
    Click Element   ${SELECT_LOC}       
    