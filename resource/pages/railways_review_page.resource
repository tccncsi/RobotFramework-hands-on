*** Comments ***
Railways Listing Page
*** Settings ***
Library    SeleniumLibrary
Resource    ../appdata/appdata.resource
Resource    landing_page.resource
Resource    ../../TestSuite/userdata/user_data.resource

*** Variables ***
${BOARDING_STATION_SELECTED}        xpath=(//span[@class='latoRegular font14 darkGreyText'])[1]
${PGE_HEADER_REVIEW}                xpath=(//h2[normalize-space()='Select Travellers'])[1]
${CHANGE_LINK_REVIEW}               xpath=//span[contains(text(),'Change')]  
${GET_FREE_CANCELLTION_LOC}         xpath=//span[contains(text(),'Get Free Cancellation')]
${RADIO_BTN_GFREECONCL}             xpath=//input[@id='0_key']
${Ticket_canclltion_message}        xpath=//p[contains(text(),'*Ticket can only be cancelled before Chart Preparation')]
${GREAT_CHOICE_MESS_LOC}            xpath=//div[contains(text(),'Great Choice! Free Cancellation before chart preparation')]
${ADD_TRAVELLER_LOC}                xpath=//span[contains(text(),'Add Traveller')]    
${TRAVELLER_NAME_LOC}               xpath=//input[@name='name']
${TRAVELLER_AGE_LOC}                xpath=//input[@id='age']    
${TRAVELLER_GENDER_LOC}             xpath=//div[@class="selectedQuotaContainer noSelection makeRelative"]
${SELECT_GENDER}                    xpath=//span[contains(text(),'${Gender}')]
${ADD_BTN_TRAVELLER}                xpath=//a[normalize-space()='Add']   
${CANCEL_BUTTON_LOC}                xpath=(//a[normalize-space()='Cancel'])[1]     
${NAMEISNOTVALID_LOC}               xpath=//p[contains(text(),'Name is not valid')]
${AGEISNOTVALID_LOC}                xpath=//p[contains(text(),'Age should be between ')]
${GENDR_ERR_MESS_LOC}               xpath=//p[contains(text(),'Gender is not specified')]
${EDIT_BTN_LOC}                     xpath=//span[contains(text(),'EDIT')] 
${CHEKBOX_TRVLRDATA_LOC}            xpath=//ul[@id="travellersData"]    
${IRCTC_USERNM_LOC}                 xpath=//input[@id='irctcUserName']
${IRCTC_USRNM_TEXTFL_LOC}           xpath=//input[@id='IRCTCUserName']
${IRCTC_Sbmit_BTN}                  xpath=//span[contains(text(),'Submit')]   
${IRTCT_USERNM_POP_UP_MESs}         xpath=//p[contains(text(),'IRCTC username')]
${IVALID_USERID_ERR_MES_LOC}        xpath=//p[contains(text(),'Invalid User ID')]
${FORGT_USRNM_LINK_LOC}             xpath=//a[contains(text(),'Forgot Username')]  
${CRETE_NEW_ACC_LNK_LOC}            xpath=//a[contains(text(),'Create New Account')]    
${EMAIL_BOX_LOC}                    xpath=//input[@id='contactEmail']  
${MOBIL_NO_BOX_LOC}                 xpath=//input[@id='mobileNumber']
${KeyBoardShotkut-backspace}        CTRL+a+BACKSPACE
${COUPN_CODE_TXTFLD_LOC}            xpath=//input[@name="coupon"]
${CLICK_APPLY_BTN_LOC}              xpath=//span[contains(text(),'APPLY')]
${NOT_APLCBL_PROMOCODE_MES_LOC}     xpath=//p[contains(text(),'Sorry! Promocode used is not applicable at the moment.')]
${SECOND_RADIO_BTN}                 xpath= //label[contains(text(),'Book, only if all berths are allotted in same coach')]    
${Other_options}                    xapth=//span[contains(text(),'Book only if confirm berths are allotted.')]   
${TRVL_INSU_RDI0_box}               xpath=//label[contains(text(),'No, I don’t want travel insurance')] 

*** Keywords ***
Validate Trains Review Page
    ${frmcity}    Get Variables
    Log Location
    Log Title
    
    Element Should Be Visible    ${BOARDING_STATION_SELECTED}   
    ${Boarding_Station_name}    Get Text    ${BOARDING_STATION_SELECTED}     
    Log To Console    ${Boarding_Station_name}    
    
    ${review_page_header}    Get Text    ${PGE_HEADER_REVIEW}
    Log To Console    ${review_page_header}  
 
Click On Change Link
    Click Element      ${CHANGE_LINK_REVIEW} 
   
Validate Get Free Cancellation option
    Element Text Should Be    ${GET_FREE_CANCELLTION_LOC}    ${Get_Free_Cancellation_text}      
    Log    ${Get_Free_Cancellation_text} 
    Element Should Contain    ${Ticket_canclltion_message}    *Ticket can only be     
    
Select Radio Button for Get Free Cancellation 
    Click Element    ${RADIO_BTN_GFREECONCL} 
    
Validate Great Choice Message
    Element Should Be Visible    ${GREAT_CHOICE_MESS_LOC}    
    Element Should Contain       ${GREAT_CHOICE_MESS_LOC}    ${Great_Choice_Message}    
    
ADD Traveller  
    Click Element     ${ADD_TRAVELLER_LOC}
    Sleep    2s  

Enter travellers Name
    [Arguments]    ${Traveller's_Name}
    Input Text        ${TRAVELLER_NAME_LOC}   ${Traveller's_Name}  
    
Enter travellers Age 
    [Arguments]    ${Traveller's_Age} 
    Input Text        ${TRAVELLER_AGE_LOC}    ${Traveller's_Age}  
    
Select travellers Gender 
    [Arguments]    ${Gender}
    Click Element     ${TRAVELLER_GENDER_LOC}
    Click Element     ${SELECT_GENDER}    
    
Validate Cancel Button 
    Element Should Be Visible    ${CANCEL_BUTTON_LOC}
    
Click On Add Button
    Click Element     ${ADD_BTN_TRAVELLER}
    Sleep    1s
    
Select Traveller CheckBox
    Click Element    ${CHEKBOX_TRVLRDATA_LOC}
    
Validate Error Message for Invalid Name
    Element Should Be Visible    ${NAMEISNOTVALID_LOC}
    ${invalid)_name_error}    Get Text    ${NAMEISNOTVALID_LOC}
    Log To Console    ${invalid)_name_error}         
    
Validate Error Message for Invalid Age
    Element Should Be Visible    ${AGEISNOTVALID_LOC}
    ${invalid)_age_error}    Get Text    ${AGEISNOTVALID_LOC}
    Log To Console    ${invalid)_age_error}         
    
Validate Error Message for Invalid Gender
    Element Should Be Visible    ${GENDR_ERR_MESS_LOC}
    ${invalid_GENDER_error}    Get Text    ${GENDR_ERR_MESS_LOC}
    Log To Console    ${invalid_GENDER_error}
    
EDIT Traveller
    Click Element    ${EDIT_BTN_LOC}
    Sleep    1s   
    press keys       ${TRAVELLER_NAME_LOC}   ${KeyBoardShotkut-backspace}
    press keys       ${TRAVELLER_AGE_LOC}    ${KeyBoardShotkut-backspace} 
  
Click On IRCTC Username Textbox
    Click Element    ${IRCTC_USERNM_LOC}
Enter IRCTC Username
    Click On IRCTC Username Textbox
    Sleep    2s 
    [Arguments]    ${IRCTC_Usernm}   
    Input Text     ${IRCTC_USRNM_TEXTFL_LOC}    ${IRCTC_Usernm}
 
Submit IRCTC Username    
    Click Element    ${IRCTC_Sbmit_BTN}
    
Validate the IRCTC POP-UP Message
    Element Should Be Visible    ${IRTCT_USERNM_POP_UP_MESs}     
    ${IRCT_usrnm_pop-up_mess}    Get Text    ${IRTCT_USERNM_POP_UP_MESs} 
    Log To Console    ${IRCT_usrnm_pop-up_mess}    
    Element Should Contain    ${IRTCT_USERNM_POP_UP_MESs}    ${IRTCT_username_will_message}     

Validate Error Message on invalid IRCTC Submittion
    Element Should Be Visible    ${IVALID_USERID_ERR_MES_LOC}
    Element Should Contain    ${IVALID_USERID_ERR_MES_LOC}    ${Invalid_user_Id_message}
    ${IRCT_invaldusrnm_mess}    Get Text    ${IVALID_USERID_ERR_MES_LOC}
    Log To Console    ${IRCT_invaldusrnm_mess}
    
Validate links present on IRCTC username textfield POP-UP
    ${forget_usernm}    Get Text    ${FORGT_USRNM_LINK_LOC}
    ${creat_new_acc}    Get Text    ${CRETE_NEW_ACC_LNK_LOC}   
    Element Should Be Visible    ${FORGT_USRNM_LINK_LOC}
    Log To Console    ${forget_usernm}     
    Element Should Be Visible    ${CRETE_NEW_ACC_LNK_LOC} 
    Log To Console    ${creat_new_acc}        
    
Click on Forget Username link
    Click Element    ${FORGT_USRNM_LINK_LOC}    
  
Click on Create New Account link
    Click Element    ${CRETE_NEW_ACC_LNK_LOC}      
    
Enter Email ID
    [Arguments]    ${User_Email_id}    
    Input Text    ${EMAIL_BOX_LOC}      ${User_Email_id}
    
Enter Contact Number
    [Arguments]    ${User_Contact_numb} 
    Input Text    ${MOBIL_NO_BOX_LOC}   ${User_Contact_numb}      
     
Enter Coupon Code
    [Arguments]    ${Cupn_code_from_User}
    Input Text    ${COUPN_CODE_TXTFLD_LOC}     ${Cupn_code_from_User}    

Click On Apply Button
    Click Element    ${CLICK_APPLY_BTN_LOC} 
    
Validate Error Message for Unavailable PromoCode
    Element Should Be Visible    ${NOT_APLCBL_PROMOCODE_MES_LOC}    
    Element Text Should Be    ${NOT_APLCBL_PROMOCODE_MES_LOC}    ${Error_message_promocode}
    
Select Additional Preferences
    Click Element    ${SECOND_RADIO_BTN}   
    
Select Other Options
    Select Checkbox    ${Other_options}    
 
Travel Insurance Radio box
    Click Element    ${TRVL_INSU_RDI0_box}