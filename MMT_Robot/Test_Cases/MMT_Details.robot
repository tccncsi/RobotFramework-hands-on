*** Settings ***
Documentation    This file contains keywords for Hotel Details Page
...    
Library    SeleniumLibrary
Resource    ../Resources/Home_Page.resource
Resource    ../Base/Common_Functionalites.resource

*** Variables ***

${RoomType}    16


*** Test Cases *** 

MMT-Hotels-TC-022
    #   First Default hotel
    
    [Documentation]
    ...    This Testcase Verify that User can able to book the hotel and proceed for payment
    
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    Handling Pop Up
    
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
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    Handling Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    View Other Rooms
                     
    End Browser

MMT-Hotels-TC-024
    
    [Documentation]
    ...    This Testcase Verify that User is able to view Images Room
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    Handling Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    View Images
                     
    End Browser
    
MMT-Hotels-TC-025
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on Log in button to reveal secret deals
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    Handling Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Login for Deals
                     
    End Browser
    
MMT-Hotels-TC-026
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on SELECT ROOM room type as Business Suite
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    Handling Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Select room as Business Suite    ${RoomType}
                     
    End Browser
    
MMT-Hotels-TC-027
    
    [Documentation]
    ...    This Testcase Verify that User is able to select Free Cancellation from select rooms filter
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    Handling Pop Up
    
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
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel    
    
    Handling Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll Element Into View    ${MORE_DETAILS}
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    select more details
                     
    End Browser

MMT-Hotels-TC-029
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on More Details to view all the details of the Hotel
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel    
    
    Handling Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll Element Into View   ${INDEX_ROOM_TYPE} 
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Index room type
                     
    End Browser

MMT-Hotels-TC-030
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on More Details to view all the details of the Hotel
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel    
    
    Handling Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll Element Into View    ${USER_REVIEWS}    
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    View User Reviews
                     
    End Browser



