*** Settings ***

Resource    ../resource/base/common_functionality.resource
Resource    ../resource/pages/landing_page.resource
Resource    ../resource/pages/trains_page.resource
Resource      userdata/user_data.resource
Resource    ../resource/pages/railways_listing_page.resource
Resource    ../resource/pages/railways_review_page.resource
Test Setup        Launch Browser     
Test Teardown        End Browser

*** Test Cases ***
TC001    MMT-TRAINS-TC-001 :: Validate the Landing Page WebElements
TC002    MMT-TRAINS-TC-002 :: Validate Trains Page WebElements
TC003    MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data
TC004    MMT-TRAINS-TC-004 :: Verify that, User can not Search FROM city with Invalid data
TC005    MMT-Trains-TC-005 :: Verify that, User can not Search TO city with Invalid data
TC006    MMT-Trains-TC-006 :: Verify that, User can not Select the same cities from "FROM" & "TO" Combo box
TC007    MMT-Trains-TC-007 :: Verify CHECK PNR STATUS Option 
TC008    MMT-Trains-TC-008 :: Verify LIVE TRAIN STATUS option 
TC009    MMT-Trains-TC-009 :: Apply Filters
TC010    MMT-TRAINS-TC-010 :: Recent Searches 
TC011    MMT-TRAINS-TC-011 :: Validate that, the new pop up window is contained of "FROM" and "TO" Location in bold font    
TC012    MMT-Trains-TC-012 :: Select Train
TC013    MMT-Trains-TC-013 :: Click On View Route Link
TC014    MMT-Trains-TC-014 :: Click Nearby Dates Link
TC015    MMT-Trains-TC-015 :: Review Booking Details on "review" page
TC016    MMT-Trains-TC-016 :: Click on Change link on "review" page  
TC017    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button     
TC018    MMT-Trains-TC-018 :: Verify that, the user can Add TRAVELLER
TC019    MMT-Trains-TC-019 :: Verify error message when entered invalid name inside "Name" textfield
TC020    MMT-Trains-TC-020 :: Verify error message when entered invalid age inside "Age" textfield
TC021    MMT-Trains-TC-021 :: Verify error message when keep the "Name" textfield blank
TC022    MMT-Trains-TC-022 :: Verify error message when keep the "Age" textfield blank    
TC023    MMT-Trains-TC-023 :: Verify error message when not selectd the "Gender" from dropdown    
TC024    MMT-Trains-TC-024 :: Verify that, User can edit the travelers information    
TC025    MMT-Trains-TC-025 :: Verify that, user can Enter "IRCTC Username" inside "IRCTC Username"
TC026    MMT-Trains-TC-026 :: Validate the message present on IRCTC Username textfield pop-up window
TC027    MMT-Trains-TC-027 :: Verify that, user can Enter Invalid "IRCTC Username" inside "IRCTC Username" 
TC028    MMT-Trains-TC-028 :: Verify that, user can keep "IRCTC Username" blank inside "IRCTC Username"  
TC029    MMT-Trains-TC-029 :: Validate that, "FORGOT USERNAME" and "CREATE NEW ACCOUNT" links present on pop-up
TC030    MMT-Trains-TC-030 :: Verify that, user can click on "FORGOT USERNAME" link
TC031    MMT-Trains-TC-031 :: Verify that, user can click on "CREATE NEW ACCOUNT" link     
TC032    MMT-Trains-TC-032 :: Verify that, user can enter the Email Id inside the "Email Id" text box
TC033    MMT-Trains-TC-033 :: Verify that, user can enter the Mobile number inside the "Mobile Number" text box
TC034    MMT-Trains-TC-034 :: Verify that, user can enter the coupon code inside text box
TC035    MMT-Trains-TC-035 :: Verify that, user can click on "APPLY" button
TC036    MMT-Trains-TC-036 :: Verify that, user can choose an Additional Preference for same berths in same coach    
TC037    MMT-Trains-TC-037 :: Verify that, user can click on check box under "Other Options"  
  
*** Keywords ***  
MMT-TRAINS-TC-001 :: Validate the Landing Page WebElements
    [Documentation]    The Testcase will validate the webelements present on Landing Page of MMT
    Handle Alerts   
    Validate Landing Page WebElements

MMT-TRAINS-TC-002 :: Validate Trains Page WebElements
    [Documentation]    The Testcase will validate the webelements present on Trains Page of MMT
    Handle Alerts
    Navigate To Trains Page
    
    Validate Trains Page WebElements

MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data
    [Documentation]    The Testcase will validate the webelements present on Trains Page of MMT
    Handle Alerts   
    Navigate To Trains Page  
    Select The FROM City    ${From_City}
    Select The TO City    ${To_City}    
    Select TRAVEL DATE    ${Month_year_userchoice}    ${Month_Day_Userchoice}  
    Select CLASS    ${Train_Class}  
    Sleep    2s
    Take Screenshot
    Click On Search Button
      
MMT-TRAINS-TC-004 :: Verify that, User can not Search FROM city with Invalid data
    Handle Alerts    
    Navigate To Trains Page
    Search for Invalid FROM City    ${from_Invalid_city}    
    
MMT-Trains-TC-005 :: Verify that, User can not Search TO city with Invalid data
    Handle Alerts   
    Navigate To Trains Page
    Search for Invalid TO City    ${to_Invalid_city}    
    
MMT-Trains-TC-006 :: Verify that, User can not Select the same cities from "FROM" & "TO" Combo box
    Handle Alerts    
    Navigate To Trains Page
    Select The FROM City    ${From_City}
    Select The TO City    ${From_City} 
    Show Error If Same City entered inside FROM and TO combobox   
    Sleep    2s
    Take Screenshot
   
MMT-Trains-TC-007 :: Verify CHECK PNR STATUS Option 
    Handle Alerts
    Navigate To Trains Page
    Sleep    2s    
    Select CHECK PNR STATUS Option
    Sleep    5s    

MMT-Trains-TC-008 :: Verify LIVE TRAIN STATUS option 
    Handle Alerts  
    Navigate To Trains Page 
    Sleep    2s    
    Select LIVE TRAIN STATUS Option        
    Take Screenshot

MMT-Trains-TC-009 :: Apply Filters
    MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data   
    Apply Filters on Listing PAGE    ${Sorted_By_Filter}    ${QUICK_FILTER}    ${TICKET_TYPE_FILTER} 
    
MMT-TRAINS-TC-010 :: Recent Searches
    MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data   
    Click Recent Searches
   
MMT-TRAINS-TC-011 :: Validate that, the new pop up window is contained of "FROM" and "TO" Location in bold font
    [Documentation]    The Testcase will validate the webelements present on listing Page of MMT
    ...    It is to validate pop up window which contained FROM and TO locations
    
    MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data
    Apply Filters on Listing PAGE    ${Sorted_By_Filter}    ${QUICK_FILTER}    ${TICKET_TYPE_FILTER}   
    #Do Validations
    Validate Single-Train Details
    
MMT-Trains-TC-012 :: Select Train
    MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data
    Apply Filters on Listing PAGE    ${Sorted_By_Filter}    ${QUICK_FILTER}    ${TICKET_TYPE_FILTER}   
    Validate Single-Train Details
    Click On Train Card
    
MMT-Trains-TC-013 :: Click On View Route Link
    MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data   
    Wait For Trains Card Element
    Click On View Route Link

MMT-Trains-TC-014 :: Click Nearby Dates Link
    MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data
    Wait For Trains Card Element
    Run Keyword And Ignore Error    Click On Nearby Dates Link       
    #Proceed to review page from nearbydate window
    Run Keyword And Ignore Error    Proceed to review page from nearbydate window    
   
MMT-Trains-TC-015 :: Review Booking Details on "review" page
    [Documentation]    Validate that, Boarding Station should be reflected on Current URL under "Your Boarding Station" 
    
    MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data
    Wait For Trains Card Element
    Click On Train Card
    Validate Trains Review Page
    
MMT-Trains-TC-016 :: Click on Change link on "review" page
    MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data
    Wait For Trains Card Element
    Click On Train Card
    Validate Trains Review Page
    Click On Change Link
    
MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    [Documentation]    Verify that, user can select cancellation option under "Get Free Cancellation" label
    MMT-Trains-TC-015 :: Review Booking Details on "review" page
    Validate Get Free Cancellation option
    Select Radio Button for Get Free Cancellation
    Validate Great Choice Message
    
MMT-Trains-TC-018 :: Verify that, the user can Add TRAVELLER
    [Documentation]    Verify that, the user can click on "+ ADD TRAVELLER" button under "Add Travelers & Preferences" (to add the new traveler)
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    ADD Traveller
    Enter travellers Name    ${Valid_Traveller's_Name}
    Enter travellers Age    ${Valid_Traveller's_Age}
    Select travellers Gender    ${Gender}
    Validate Cancel Button
    Click On Add Button
    
MMT-Trains-TC-019 :: Verify error message when entered invalid name inside "Name" textfield
    [Documentation]    Verify that, User gets error message when entered invalid name inside "Name" textfield
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    ADD Traveller
    Enter travellers Name    ${Invalid_Traveller's_Name}
    Enter travellers Age     ${Valid_Traveller's_Age}
    Select travellers Gender    ${Gender}
    Validate Cancel Button
    Click On Add Button
    Sleep    2s
    Validate Error Message for Invalid Name
    
MMT-Trains-TC-020 :: Verify error message when entered invalid age inside "Age" textfield
    [Documentation]    Verify that, User gets error message when entered invalid age inside "Age (in years)" text field and click on ADD button
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    ADD Traveller
    Enter travellers Name    ${Valid_Traveller's_Name}
    Enter travellers Age     ${Invalid_Traveller's_Age}
    Select travellers Gender    ${Gender}
    Validate Cancel Button
    Click On Add Button           
    Sleep    2s
    Validate Error Message for Invalid Age
    
MMT-Trains-TC-021 :: Verify error message when keep the "Name" textfield blank
    [Documentation]    Verify that, User gets error message when keep "Name" text field blank and click on ADD button
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    ADD Traveller
    Enter travellers Name    ${KeepBlank_Traveller's_Name}
    Enter travellers Age     ${Valid_Traveller's_Age}
    Select travellers Gender    ${Gender}
    Validate Cancel Button
    Click On Add Button 
    Sleep    2s
    Validate Error Message for Invalid Name
    
MMT-Trains-TC-022 :: Verify error message when keep the "Age" textfield blank
    [Documentation]    Verify that, User gets error message when keep "Age" text field blank and click on ADD button
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    ADD Traveller
    Enter travellers Name    ${Valid_Traveller's_Name}
    Enter travellers Age     ${KeepBlank_Traveller's_Age}
    Select travellers Gender    ${Gender}
    Validate Cancel Button
    Click On Add Button 
    Sleep    2s
    Validate Error Message for Invalid Age   

MMT-Trains-TC-023 :: Verify error message when not selectd the "Gender" from dropdown
    [Documentation]    Verify that, User gets error message if Gender is not selected and click on ADD button
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    ADD Traveller
    Enter travellers Name      ${Valid_Traveller's_Name}
    Enter travellers Age       ${Valid_Traveller's_Age}
#   Don't Select the gender
    Click On Add Button 
    Validate Error Message for Invalid Gender
    
MMT-Trains-TC-024 :: Verify that, User can edit the travelers information
    [Documentation]    Verify that, User can edit the travelers information displayed inside the pop-up
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    ADD Traveller
    Enter travellers Name       ${Valid_Traveller's_Name}
    Enter travellers Age        ${Valid_Traveller's_Age}
    Select travellers Gender    ${Gender}
    Click On Add Button 
    Sleep    2s
    EDIT Traveller
    Enter travellers Name       ${EDITED_Traveller's_Name}
    Enter travellers Age        ${EDITED_Traveller's_Age}
    Select travellers Gender    ${Gender}
    Click On Add Button         

MMT-Trains-TC-025 :: Verify that, user can Enter "IRCTC Username" inside "IRCTC Username"
    [Documentation]    Verify that, user can click inside "IRCTC Username" text box which is present under "IRCTC Account Details" label 
    MMT-Trains-TC-018 :: Verify that, the user can Add TRAVELLER
    Select Traveller CheckBox
    Enter IRCTC Username         ${IRCTC_UserName}  
    Submit IRCTC Username 

MMT-Trains-TC-026 :: Validate the message present on IRCTC Username textfield pop-up window 
     MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
     Click On IRCTC Username Textbox
     Validate the IRCTC POP-UP Message

MMT-Trains-TC-027 :: Verify that, user can Enter Invalid "IRCTC Username" inside "IRCTC Username"    
    [Documentation]    Verify that, User can enter invalid IRCTC username in "IRCTC Username" text box which is present under "IRCTC Account Details" label  
    MMT-Trains-TC-018 :: Verify that, the user can Add TRAVELLER
    Select Traveller CheckBox
    Enter IRCTC Username         ${IRCTC_Invalid_UserName}  
    Submit IRCTC Username 
    Validate Error Message on invalid IRCTC Submittion
    
MMT-Trains-TC-028 :: Verify that, user can keep "IRCTC Username" blank inside "IRCTC Username"    
    [Documentation]    Verify that, User can keep "IRCTC Username" text box blank which is present under "IRCTC Account Details" label 
    MMT-Trains-TC-018 :: Verify that, the user can Add TRAVELLER
    Select Traveller CheckBox
    Enter IRCTC Username    ${IRCTC_Blank_usenm}     
    Submit IRCTC Username 
    
MMT-Trains-TC-029 :: Validate that, "FORGOT USERNAME" and "CREATE NEW ACCOUNT" links present on pop-up
    [Documentation]    Validate that, "FORGOT USERNAME" and "CREATE NEW ACCOUNT" links present on pop-up
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    Click On IRCTC Username Textbox
    Validate links present on IRCTC username textfield POP-UP
    
MMT-Trains-TC-030 :: Verify that, user can click on "FORGOT USERNAME" link
    [Documentation]    Verify that, user can click on "FORGOT USERNAME" link
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    Click On IRCTC Username Textbox
    Validate links present on IRCTC username textfield POP-UP
    Click on Forget Username link
    
MMT-Trains-TC-031 :: Verify that, user can click on "CREATE NEW ACCOUNT" link
    [Documentation]    Verify that, user can click on "CREATE NEW ACCOUNT" link
    MMT-Trains-TC-017 :: Validate and Select Free Cancellation radio button
    Click On IRCTC Username Textbox
    Validate links present on IRCTC username textfield POP-UP
    Click on Create New Account link
    
MMT-Trains-TC-032 :: Verify that, user can enter the Email Id inside the "Email Id" text box
    [Documentation]    Verify that, user can enter the Email Id inside the "Email Id" text box
    MMT-Trains-TC-015 :: Review Booking Details on "review" page
    Sleep    2s    
    Enter Email ID          ${Email_ID}    
    Take Screenshot
    
MMT-Trains-TC-033 :: Verify that, user can enter the Mobile number inside the "Mobile Number" text box
    [Documentation]    Verify that, user can enter the Mobile number inside the "Mobile Number" text box
    MMT-Trains-TC-015 :: Review Booking Details on "review" page    
    Sleep    3s    
    Enter Contact Number    ${Contact_Number}
    Take Screenshot
    
MMT-Trains-TC-034 :: Verify that, user can enter the coupon code inside text box
    [Documentation]    Verify that, user can enter the coupon code inside text box
    MMT-Trains-TC-015 :: Review Booking Details on "review" page
    Enter Coupon Code    ${Coupon_Code}
    Take Screenshot
 
MMT-Trains-TC-035 :: Verify that, user can click on "APPLY" button
    [Documentation]    Verify that, user can click on "APPLY" button
    MMT-Trains-TC-034 :: Verify that, user can enter the coupon code inside text box
    Click On Apply Button
    Validate Error Message for Unavailable PromoCode
    
MMT-Trains-TC-036 :: Verify that, user can choose an Additional Preference for same berths in same coach   
    [Documentation]    Verify that, user can choose an Additional Preference for same berths in same coach   
     MMT-Trains-TC-015 :: Review Booking Details on "review" page
     Select Additional Preferences

MMT-Trains-TC-037 :: Verify that, user can click on check box under "Other Options"
    [Documentation]  Verify that, user can click on check box under "Other Options"
    MMT-Trains-TC-036 :: Verify that, user can choose an Additional Preference for same berths in same coach
    Select Other Options
    
MMT-Trains-TC-038 :: Verify that, user can click on radio button
    [Documentation]    Verify that, user can click on radio button "Would you like to take Travel Insurance for ₹ 0.35 per person?"
    MMT-Trains-TC-015 :: Review Booking Details on "review" page
    Travel Insurance Radio box    

