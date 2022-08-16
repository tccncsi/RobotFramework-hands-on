*** Settings ***
Documentation    This file contains keywords for Hotel Details Page
...    
Library    SeleniumLibrary
Resource    ../Resources/Home_Page.resource
Resource    ../Base/Common_Functionalites.resource

*** Variables ***



*** Test Cases *** 

MMT-Hotels-TC-022
    #   First Default hotel
    
    [Documentation]
    ...    This Testcase Verify that User can able to book the hotel and proceed for payment
    
    Launch Browser
    
    Wait
    
    Click on Hotel    
    
    City
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Book this Now   
                     
    End Browser

MMT-Hotels-TC-023
    #   First Default hotel
    
    [Documentation]
    ...    This Testcase Verify that User can able to book the hotel and proceed for payment
    
    Log    ${TESTNAME}    
    
    Launch Browser

    Click on Hotel    
    
    CITY
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll     500
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    View Other Rooms
                     
    End Browser


    