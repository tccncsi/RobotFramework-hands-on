*** Settings ***

Library    DateTime   
Library    SeleniumLibrary     
Library    OperatingSystem  
Library    String    
Resource    ../Base/Common_Functionalites.resource

*** Variables ***
                 
#HOTELS DETAILS
${POPUP}               //div[@class='autopop__wrap autopop__wrap__new makeFlex column defaultCursor']
${DONATION}            //label[@for='donate']
  
${BOOK_THIS_NOW}       //*[contains(text(),'BOOK THIS NOW')]                            #  //button[@id='detpg_headerright_book_now']
${BOOK_BUFFER}         //div[@class='cirLdr white ']
${VIEW_OTHER_ROOMS}    //a[@id='detpg_headerright_other_rooms']
${VIEW_IMAGES}         //button[@id='detpg_headerleft_view_photos'] 
${TITLE_HOTEL}         //p[@id='seoH1DontRemove']
${DEALS_LOGIN}         //a[normalize-space()='LOGIN']
${SELECT ROOM}                  (//p[text()='SELECT ROOM'])[16]
${FREE_CANCELLATION_FILTER}     //label[@for='FREE_CANCELLATION']
${MORE_DETAILS}                 //div[@id='room1']//a[@class='latoBlack font14 capText'][normalize-space()='More Details']
${INDEX_ROOM_TYPE}              //p[@class='rmTypeDropDown__heading']
${SELECT_ROOM_TYPE}             //div[@class='rmHeader ']//li[1]
${USER_RATINGS_&_REVIEWS}       //h2[normalize-space()='User Ratings & Reviews']
${AMENITIES}                    //a[@id='detpg_hotel_facilities']


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

 # CheckOUT #

${UPI}                         //li[@class='selected box-padding']
${ENTER_UPI}                   //input[@id='inputVpa']
${VERIFY_N_PAY}                //button[normalize-space()='verify & pay']

*** Keywords ***
                                                   
Book this Now
    Sleep     5s
    Click Element    ${BOOK_THIS_NOW} 
    Run Keyword And Ignore Error    Wait Until Element Is Not Visible    ${BOOK_BUFFER}           
    Sleep    2s    
    #Wait Until Element Is Not Visible    ${BOOK_BUFFER}    timeout=60s
    
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
    Click Element    ${SELECT_ROOM_TYPE}     
    
View Facilities
    Scroll Element Into View    ${AMENITIES}
    Click Element    ${AMENITIES}    
    
View User Reviews
    Click Element    ${USER_RATINGS_&_REVIEWS}     
    
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
  
                                            # CHECKOUT PAGE #

Select UPI Payment
    Click Element    ${UPI}    
   
Enter UPI Id
    Click Element    ${ENTER_UPI}    
    Input Text       ${ENTER_UPI}    8485860700
    
Verify & Pay        
    Click Element    ${VERIFY_N_PAY}    

