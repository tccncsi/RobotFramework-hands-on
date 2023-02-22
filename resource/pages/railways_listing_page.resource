*** Comments ***
Railways Listing Page
*** Settings ***
Library    SeleniumLibrary
Resource    ../appdata/appdata.resource
Resource    landing_page.resource
Resource    ../../TestSuite/userdata/user_data.resource


*** Variables ***
${CustomeSelect_Sortedby_listing}    xpath=//div[@class='customSelect']  
${Sorted_By_userschoice}             xpath=//li[normalize-space()='${Sorted_By_Filter}'] 
${QUICK_FILTER}                      xpath=//input[@id='quickFilter-${Qiuck_Filter}']
${TICKET_TYPE_FILTER}                xpath=//input[@id='ticketTypeFilter-${Ticket_Type}']



${SINGLE_TRAIN_DETAILS_listing}      xpath=//div[@class='right-side-container']//div[@class='train-list']/div[1]    
${TRAIN_or_Express_NAME_listing}     xpath=(//div[@class='left-info flex flex-column'])[1]//div[@class='train-name']

${TRAIN_DEPART-TIME}                 xpath=(//div[contains(@class,'flex-column')])[2]//div[@class='depart-time']
${TRAIN_ARIVAL_TIME}                 xpath=(//div[contains(@class,'flex-column')])[2]//div[@class='arrival-time']
${DEPARTURE_CITY_STATION}            xpath=(//div[contains(@class,'flex-column')])[2]//div[@class='station-name'][1]
${ARIVAL_CITY_STATION}               xpath=((//div[contains(@class,'flex-column')])[2]//div[@class='station-name'][1])[2]

#
${VIEW_ROUTE_link}                   xpath=(//div[contains(text(),'View route')])[1]
${NEARBY_DATES_link}                 xpath=//div//span[contains(text(),'Nearby dates')]
${NEARBY_DATE_listing}               xpath=//div[@class='nearby-date'][1]
${CARD_TRAINS_listing}               xpath=//div[@class='card ']
${CHANGES_OF_STATION_POPUP_TITLE}    xpath=//div//p[contains(text(),'Change of Station')]
${OK_GO_AHEAD_ELEMENT}               xpath=//div[contains(text(),'OK, GO AHEAD')]

${VIEW_ROUTE_POPUP_CLOSE_X}          xpath=//span[contains(text(),' X ')]
${BOOK_NOW_listing}                  xpath=(//div[@class='book-now flex align-center'])[1]    

${Ladies_blue_link}                  xpath=//div[contains(text(),'Ladies')]     
${Tatkal_blue_link}                  xpath=//div[contains(text(),'Tatkal')]
${General_blue_link}                 xpath=//div[contains(text(),'General')]
*** Keywords ***
Apply Filters on Listing PAGE
    [Arguments]    ${Sorted_By_Filter}    ${QUICK_FILTER}    ${TICKET_TYPE_FILTER}
    
    #Sorted by
    Click Element      ${CustomeSelect_Sortedby_listing}  
    Sleep    1s     
    Click Element      ${Sorted_By_userschoice}    
    Sleep    1s    
    Select Checkbox    ${QUICK_FILTER}      
    Sleep     1s
    Select Checkbox    ${TICKET_TYPE_FILTER}
    Sleep    1s
 
    #Check the CheckBox on listing page to select departure station in mumbai city
    Run Keyword If     "${From_city}" == "Mumbai"         Set Global Variable    ${frmcity}    KYN
    Select Checkbox    xpath=//input[@id='startStationsFilter-${frmcity}']  
      

Validate Single-Train Details
    Wait Until Element Is Visible       ${SINGLE_TRAIN_DETAILS_listing}   
    ${train-name}           Get Text    ${TRAIN_or_Express_NAME_listing}  
    ${train-depart-time}    Get Text    ${TRAIN_DEPART-TIME}
    ${train-arival-time}    Get Text    ${TRAIN_ARIVAL_TIME}
    ${Departure_Station}    Get Text    ${DEPARTURE_CITY_STATION}
    ${Arival__Station}      Get Text    ${ARIVAL_CITY_STATION}
    Log To Console    ${train-name}
    Log To Console    ${train-depart-time}    
    Log To Console    ${train-arival-time} 
    Log To Console    ${Departure_Station}
    Log To Console    ${Arival__Station}      
    
    #Validate the departure station showing in train card
  #  Run Keyword If     "${From_city}" == "Mumbai"         Set Global Variable    ${frmcity}    KYN
   # Run Keyword If     "${Departure_Station}"=="${frmcity}"    Log To Console    ${Departure_Station}
       
Click On Nearby Dates Link     
    Sleep    2s  
    #To Enter into NearBy Dates    
    Click Element     ${NEARBY_DATES_link}  
      
    ${Get_the_nearby_date}    Get Text    ${NEARBY_DATE_listing}
    Log To Console    ${Get_the_nearby_date}    
  
Proceed to review page from nearbydate window
    #Click on Book Now
    Click Element    ${BOOK_NOW_listing} 
    Run Keyword And Ignore Error    Click Element    ${OK_GO_AHEAD_ELEMENT}     
     
    
Click On View Route Link
    #Click to See Trains Route(Pop-Up Window will Arise)
    Click Element     ${VIEW_ROUTE_link}
    Sleep    3s
    #Close the POP-UP Window
    Run Keyword And Ignore Error    Click Element    ${VIEW_ROUTE_POPUP_CLOSE_X}  
                
Click On Train Card
    Run Keyword If    "${Train_Class}" == "${ALL_Class}"         Set Global Variable    ${var}    ${ALL_Class}      
    Run Keyword If    "${Train_Class}" == "${Sleeper_Class}"     Set Global Variable    ${var}    ${SL}
    Run Keyword If    "${Train_Class}" == "${Third_AC}"          Set Global Variable    ${var}    ${Third_AC}
    Run Keyword If    "${Train_Class}" == "${Second_AC}"         Set Global Variable    ${var}    ${Second_AC}
    Run Keyword If    "${Train_Class}" == "${First_AC}"          Set Global Variable    ${var}    ${First_AC}
    Run Keyword If    "${Train_Class}" == "${Second_Seating}"    Set Global Variable    ${var}    ${Second_Seating}
    Run Keyword If    "${Train_Class}" == "${First_Class}"       Set Global Variable    ${var}    ${FC}
    Run Keyword If    "${Train_Class}" == "${Third_AC_Economy}"  Set Global Variable    ${var}    ${Third_AC_Economy}
    Run Keyword If    "${Train_Class}" == "${AC_Chair_Car}"      Set Global Variable    ${var}    ${CC}	  
    Sleep    3s
    
    Wait For Trains Card Element
    
    ${Class_onlistingPage}    Get Text    XPATH=(//div[contains(text(),'${var}')])[1]
    Log To Console    ${Class_onlistingPage}    
    
    Run Keyword If    "${Class_onlistingPage}"=="${var}"    Click Element    ${CARD_TRAINS_listing}     
    #Navigate to Payment Page 
    Run Keyword And Ignore Error    Click Element    ${OK_GO_AHEAD_ELEMENT}        
    Sleep    3s        
    Log Title
    Log Location
    
Wait For Trains Card Element
    Sleep    3s
    #Select First Train Option
    Wait Until Element Is Visible    ${CARD_TRAINS_listing} 