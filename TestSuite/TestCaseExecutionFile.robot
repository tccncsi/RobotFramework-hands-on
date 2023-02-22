*** Settings ***

Resource    ../resource/base/common_functionality.resource
Resource    ../resource/pages/landing_page.resource
Resource    ../resource/pages/trains_page.resource
Resource    userdata/user_data.resource
Resource    ../resource/pages/railways_listing_page.resource
Test Setup        Launch Browser     
Test Teardown        End Browser

*** Test Cases ***
MMT-TRAINS-TC-001 
    [Documentation]    The Testcase will validate the webelements present on landing page of MMT
    Run Keyword And Ignore Error    Handle Notification Alerts    
    Validate Landing Page WebElements

MMT-TRAINS-TC-002 :: Validate Trains Page WebElements
    Run Keyword And Ignore Error    Handle Notification Alerts
    Navigate To Trains Page
    Validate Trains Page WebElements

MMT-TRAINS-TC-003 :: Verify that, User can search with Valid data
    Run Keyword And Ignore Error    Handle Notification Alerts    
    Navigate To Trains Page  
    Select The FROM City    ${From_City}
    Select The TO City    ${To_City}    
    Select TRAVEL DATE    ${Month_year_userchoice}    ${Month_Day_Userchoice}  
    Select CLASS    ${Train_Class}  
    Sleep    2s
    Take Screenshot
    Click On Search Button
      
MMT-TRAINS-TC-004 :: Verify that, User can not Search FROM city with Invalid data
    Run Keyword And Ignore Error    Handle Notification Alerts    
    Navigate To Trains Page
    Search for Invalid FROM City    ${from_Invalid_city}    
    
MMT-Trains-TC-005 :: Verify that, User can not Search TO city with Invalid data
    Run Keyword And Ignore Error    Handle Notification Alerts    
    Navigate To Trains Page
    Search for Invalid TO City    ${to_Invalid_city}    
    
MMT-Trains-TC-006 :: Verify that, User can not Select the same cities from "FROM" & "TO" Combo box
    Run Keyword And Ignore Error    Handle Notification Alerts    
    Navigate To Trains Page
    Select The FROM City    ${From_City}
    Select The TO City    ${From_City} 
    Show Error If Same City entered inside FROM and TO combobox   
    Sleep    2s
    Take Screenshot
   
MMT-Trains-TC-007 :: Verify CHECK PNR STATUS Option 
    Run Keyword And Ignore Error    Handle Notification Alerts    
    Navigate To Trains Page
    Sleep    2s    
    Select CHECK PNR STATUS Option
    Sleep    5s    

MMT-Trains-TC-008 :: Verify LIVE TRAIN STATUS option 
    Run Keyword And Ignore Error    Handle Notification Alerts  
    Navigate To Trains Page 
    Sleep    2s    
    Select LIVE TRAIN STATUS Option        
    Take Screenshot

MMT-Trains-TC-009 :: Apply Filters
    Run Keyword And Ignore Error    Handle Notification Alerts    
    Navigate To Trains Page  
    Select The FROM City    ${From_City}
    Select The TO City    ${To_City}    
    Select TRAVEL DATE    ${Month_year_userchoice}    ${Month_Day_Userchoice}  
    Select CLASS    ${Train_Class}  
    Sleep    2s
    Take Screenshot
    Click On Search Button   
    Apply Filters on Listing PAGE    ${Sorted_By_Filter}    ${QUICK_FILTER}    ${TICKET_TYPE_FILTER} 
    
MMT-TRAINS-TC-010 :: Recent Searches
    Run Keyword And Ignore Error    Handle Notification Alerts    
    Navigate To Trains Page  
    Select The FROM City    ${From_City}
    Select The TO City    ${To_City}    
    Select TRAVEL DATE    ${Month_year_userchoice}    ${Month_Day_Userchoice}  
    Select CLASS    ${Train_Class}  
    Sleep    2s
    Take Screenshot
    Click On Search Button   
    Click Recent Searches
   
MMT-TRAINS-TC-011 :: Validate that, the new pop up window is contained of "FROM" and "TO" Location in bold font
    [Documentation]
    ...    It is to validate pop up window which contained FROM and TO locations
    Run Keyword And Ignore Error    Handle Notification Alerts    
    Navigate To Trains Page  
    Select The FROM City    ${From_City}
    Select The TO City    ${To_City}    
    Select TRAVEL DATE    ${Month_year_userchoice}    ${Month_Day_Userchoice}  
    Select CLASS    ${Train_Class}  
    Sleep    2s
    Take Screenshot
    Click On Search Button
    Apply Filters on Listing PAGE    ${Sorted_By_Filter}    ${QUICK_FILTER}    ${TICKET_TYPE_FILTER}
   
    #Do Validations
    
    
MMT-Trains-TC-999 :: JustGo
    Handle Alerts
    

TC_Demo
    Log    Hi    

 