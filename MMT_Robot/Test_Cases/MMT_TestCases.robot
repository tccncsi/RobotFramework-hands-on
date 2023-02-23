*** Settings ***
Documentation    This file contains keywords for the automation
...    
Library    SeleniumLibrary
Resource    ../Resources/MMT_Search.Resource
Resource    ../Resources/MMT_Landing.Resource
Resource    ../Resources/MMT_Hotel_Details.resource
Resource    ../Base/Common_Functionalites.resource

*** Variables ***



*** Test Cases *** 

########################  --->      SEARCH PAGE         <--- ###########################

MMT-Hotels-TC-001   
    [Documentation]
    ...    This Testcase Verify that User can Navigate to URL and click on Search 
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search
    
    End Browser
    
MMT-Hotels-TC-002
    [Documentation]
    ...    This Testcase Verify that User can select Rooms & Guests with childrens and Search
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Check-In Date  ${Departure_MonthYear}    ${Departure_Date}
    
    Check-Out Date  ${Departure_MMonthYear}    ${Departure_DDate}
    
    Select Rooms & Guests
  
    Select Children
    
    Apply Changes
    
    Click on Search
    
    End Browser
    
MMT-Hotels-TC-003
    [Documentation]
    ...    This Testcase Verify that User can select Rooms & Guests with childrens and Search
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Check-In Date  ${Departure_MonthYear}    ${Departure_Date}
    
    Check-Out Date  ${Departure_MMonthYear}    ${Departure_DDate}

    Select Rooms & Guests
    
    Select Children
    
    Scroll    500
  
    Apply Changes
    
    Sleep    3s
        
    Apply Price Filter on Search Page
    
    Click on Search
   
    End Browser
    
MMT-Hotels-TC-004
    [Documentation]
    ...    This Testcase Verify that User can add Another Room in Booking
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Select Rooms & Guests
    
    Select Children
    
    Add Another Room
    
    Apply Changes
    
    Click on Search
    
    End Browser

MMT-Hotels-TC-005
    [Documentation]
    ...    This Testcase Verify that User can Remove Room from Booking 
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Select Rooms & Guests
    
    Select Children
    
    Add Another Room
    
    Sleep     5s
    
    Remove Room    
    
    Scroll    500
    
    Apply Changes
    
    Click on Search
   
    End Browser
    
MMT-Hotels-TC-RS
    [Documentation]
    ...    This Testcase Verify that User can Remove Room from Booking 
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Select Recent Search
   
    End Browser
    
 

###################################  --->      LANDING PAGE         <--- #####################################


MMT-Hotels-TC-006
    #   First Default hotel
    
    [Documentation]
    ...    This Testcase Verify that User can search for default data
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel   
                     
    End Browser
   
MMT-Hotels-TC-007
    #NEAR AIRPORT
    [Documentation]
    ...    This Testcase Verify that User can Select Near Airport Filter
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search
    
    Select 1st Hotel     
     
    Select Near Airport Filter  
    
    End Browser
  
MMT-Hotels-TC-008 
    #FREE BREAKFAST
    [Documentation]
    ...    This Testcase Verify that User can Select Free BreakFast Filter
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search
    
    Select 1st Hotel        
   
    Switch Window       

    Select Breakfast Filter
    
    Sleep    3s    
     
    Select 1st Hotel

    End Browser
    
MMT-Hotels-TC-009
    # Price(per night)
    [Documentation]
    ...    This Testcase Verify that User can Select Price(per night) Filter
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search
    
    Scroll    1000
    
    Sleep    3s    
    
    Select Prize Filter
    
    Sleep    5s
    
    Select 1st Hotel

    End Browser
    
MMT-Hotels-TC-010
    # (Your Budget)
    [Documentation]
    ...    This Testcase Verify that User can Select (Your Budget) Filter
  
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search            
    
    Scroll     1200
    
    Select Budget Filter   
    
    Sleep    5s    
    
    Select 1st Hotel
    
    End Browser

MMT-Hotels-TC-011
    #Filter User Rating
    [Documentation]
    ...    This Testcase Verify that User can Select User Rating Filter    

    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search            
    
    Scroll    1250

    Select User Rating
    
    Sleep    5s  
    
    End Browser
    
MMT-Hotels-TC-012
    #Filter Star Category
    [Documentation]
    ...    This Testcase Verify that User can Select Filter Star Category  
   
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search            
    
    Scroll    1300
    
    Select Star Rating
    
    Sleep    3s    
    
    Select 1st Hotel
    
    End Browser
    
MMT-Hotels-TC-013
   #Filter Property Type  
   [Documentation]
    ...    This Testcase Verify that User can Select Filter Property Type
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search            
    
    Scroll    1400

    Select Property Type
    
    Sleep     3s 
    
    Select 1st Hotel
                
    End Browser
    
MMT-Hotels-TC-014
    #Amenities Filter
    [Documentation]
    ...    This Testcase Verify that User can Select Filter Amenities
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search            
    
    Scroll    1500
    
    Select Amenites
    
    
    Sleep     3s 
    

MMT-Hotels-TC-015
   #Guests Love Filter
    [Documentation]
    ...    This Testcase Verify that User can Select Filter Guest Love
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search            
    
    Scroll    1500
    
    Select Guest Love
    
    Sleep  3s
    
    Select 1st Hotel
    
    End Browser
    
MMT-Hotels-TC-016
    #Booking Prefernce Filter
    [Documentation]
    ...    This Testcase Verify that User can Select Filter Booking Prefernce
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search            
    
    Scroll    1600
    
    Select Booking Preference
    
    Sleep     5s
    
    Select 1st Hotel
    
    End Browser

MMT-Hotels-TC-017
    #House Rules Filter
    [Documentation]
    ...    This Testcase Verify that User can Select Filter House Rules 
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Click on Search            
    
    Scroll    1600
    
    Select House Rules
    
    Sleep     3s 
    
    Select 1st Hotel
    
    End Browser

MMT-Hotels-TC-018
   #Beds & Bedrooms Filter
    [Documentation]
    ...    This Testcase Verify that User can Select Filter Beds & Bedrooms Filter
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up    
    
    Click on Search            
    
    Scroll    1800
    
    Select Beds & Bedrooms
    
    Sleep    5s    
    
    Select 1st Hotel

    End Browser    

MMT-Hotels-TC-019
   #Back to Top BUTTON
    [Documentation]
    ...    This Testcase Verify that User can click on Back on Top to scroll up for booking and changes
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up   
    
    Click on Search            
    
    Scroll    1900
    
    Sleep    5s    
    
    Back to Top
    
    End Browser  

MMT-Hotels-TC-020
    #View Map
    [Documentation]
    ...    This Testcase Verify that User can click on View Map to View Hotels on Google map to view locations
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up   
    
    Click on Search           
    
    View Map
    
    Sleep     10s 
 
    End Browser 

MMT-Hotels-TC-021
    #Search Tab
   [Documentation]
    ...    This Testcase Verify that User can Search Location or Property 
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up   
    
    Click on Search           
  
    Search Location or Property
    
    Sleep    3s    
    
    Select 1st Hotel
        
    End Browser    




###################################  --->      DETAILS PAGE         <--- #####################################


MMT-Hotels-TC-022
    #   First Default hotel
    
    [Documentation]
    ...    This Testcase Verify that User can able to book the hotel and proceed for payment
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Book this Now   
                     
    End Browser

MMT-Hotels-TC-023
    [Documentation]
    ...    This Testcase Verify that User is able to view Other Rooms Option
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel 
    
    Switch Window    NEW
    
    Scroll     500
    
    View Other Rooms
                     
    End Browser

MMT-Hotels-TC-024
    [Documentation]
    ...    This Testcase Verify that User is able to view images of the Hotel
    
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    NEW
    
    View Images
                     
    End Browser
    
MMT-Hotels-TC-025
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on Log in button to reveal secret deals
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    NEW
    
    Login for Deals
                     
    End Browser
    
MMT-Hotels-TC-026
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on SELECT ROOM room type as Business Suite
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    NEW
    
    Sleep     3s
    
    Select room as Business Suite    ${RoomType}
                     
    End Browser
    
MMT-Hotels-TC-027
    
    [Documentation]
    ...    This Testcase Verify that User is able to select Free Cancellation from select rooms filter
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll Element Into View    ${FREE_CANCELLATION_FILTER}  
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    select rooms filter
                     
    End Browser

MMT-Hotels-TC-028
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on More Details to view all the details of the Hotel
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    New
    
    Sleep    3s
    
    Scroll Element Into View    ${MORE_DETAILS}

    select more details
                     
    End Browser

MMT-Hotels-TC-029
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on Index room type to view all the type of rooms available
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    New
    
    Scroll Element Into View   ${INDEX_ROOM_TYPE} 
    
    Index room type
                     
    End Browser

MMT-Hotels-TC-030
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on More Details to view all the details of the Hotel
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children   
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    New
    
    Sleep    3s    
    
    Scroll Element Into View    ${AMENITIES}
    
    View User Reviews
    
    End Browser
   
MMT-Hotels-TC-031
    [Documentation]
    ...    This Testcase Verify that User is able to click on AMENGTIES and validate it
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children   
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    New
    
    Sleep    3s    
    
    View Facilities
    
    End Browser
    
###################################  --->     Review Page         <--- #####################################
    
MMT-Hotels-TC-032
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on More Details to view all room Inclusions
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
        
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    NEW        
    
    Scroll    1000
    
    Book this Now
    
    View all Room Inclusions
                     
    End Browser

MMT-Hotels-TC-033
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on Cancellation Policy Details
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Book this Now
    
    Cancellation Policy Details
                     
    End Browser
    
MMT-Hotels-TC-034
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on Cancellation Policy Details
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Book this Now
    
    Select Donation for Covid-19
                     
    End Browser
    
MMT-Hotels-TC-035
    
    [Documentation]
    ...    This Testcase Verify that User is able to add Guests Details for Booking
     
   Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up    
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Book this Now
    
    Guest Details
    
    Pay Now
                     
    End Browser
    
MMT-Hotels-TC-036
    
    [Documentation]
    ...    This Testcase Verify that User is able to add multiple guest
     
   Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Book this Now
    
    Guest Details
    
    Add Guests
    
    Pay Now
                     
    End Browser
    
MMT-Hotels-TC-037
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on ADD to add Insurance
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Book this Now
    
    Guest Details
    
    Add Guests
    
    Add Insurance
    
    Pay Now
                     
    End Browser
    

###################################  --->     CheckOut Page         <--- #####################################


MMT-Hotels-TC-038
    
    [Documentation]
    ...    This Testcase Verify that User is able to Book Hotel through UPI Payment Mode
     
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up  
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Sleep    3s    
 #   Switch Window
    
    Book this Now
    
    Guest Details
    
    Pay Now
    
    Select UPI Payment
    
    Enter UPI Id
    
    Verify & Pay
    
    End Browser


    
TC_Demo
    Launch Browser
        
    Hindi Language Pop Up     
    
    Click on Hotel
    
    Handling Log-In Pop Up
        
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    NEW
    Wait Until Element Is Visible    (//*[@id='detpg_bread_crumbs']//li)[3]    
    ${text}    Get Text    (//*[@id='detpg_bread_crumbs']//li)[3]
    Log    ${text}  
    
   




    
        
    
    
    



























    