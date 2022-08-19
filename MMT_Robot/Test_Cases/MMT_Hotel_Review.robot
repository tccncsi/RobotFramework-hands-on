*** Settings ***
Documentation    This file contains keywords for Hotel Review Page
...    

Library    SeleniumLibrary
Resource    ../Resources/Home_Page.resource
Resource    ../Base/Common_Functionalites.resource

*** Variables ***


*** Test Cases *** 
MMT-Hotels-TC-031
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on More Details to view all room Inclusions
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    sleep    2s
    
    Handling Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Switch Window    NEW        
    
    Scroll    1000
    
    Sleep    2s
    
    Book this Now
    
    View all Room Inclusions
                     
    End Browser

MMT-Hotels-TC-032
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on Cancellation Policy Details
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    sleep    2s
    
    Handling Pop Up

    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Book this Now
    
    Cancellation Policy Details
                     
    End Browser
    
MMT-Hotels-TC-033
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on Cancellation Policy Details
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    sleep    2s
    
    Handling Pop Up
    
    Set City
    
    Select Rooms & Guests
    
    Select Children
    
    Apply Changes
        
    Click on Search
    
    Select 1st Hotel
    
    Book this Now
    
    Select Donation for Covid-19
                     
    End Browser
    
MMT-Hotels-TC-034
    
    [Documentation]
    ...    This Testcase Verify that User is able to add Guests Details for Booking
     
   Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    sleep    2s
    
    Handling Pop Up    
    
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
    
MMT-Hotels-TC-035
    
    [Documentation]
    ...    This Testcase Verify that User is able to add multiple guest
     
   Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    sleep    2s
    
    Handling Pop Up

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
    
MMT-Hotels-TC-036
    
    [Documentation]
    ...    This Testcase Verify that User is able to click on ADD to add Insurance
     
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    sleep    2s
    
    Handling Pop Up

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
    
    Add Insurance
                     
    End Browser
    

TC_DEMO_TestCase
    
    Launch Browser
        
    Pop Up    
    
    Sleep    3s
    
    Click on Hotel
    
    sleep    3s
    
    Handling Pop Up
    
    
    End Browser
    

      
    
   