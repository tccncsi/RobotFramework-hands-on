*** Settings ***
Documentation    This file contains keywords for Search Page
...    
Library    SeleniumLibrary
Resource    ../Resources/Home_Page.resource
Resource    ../Base/Common_Functionalites.resource

*** Variables ***
${Departure_MonthYear}    November2022
${Departure_Date}    28

${Departure_MMonthYear}    December2022
${Departure_DDate}    01

*** Test Cases *** 

MMT-Hotels-TC-001   
    [Documentation]
    ...    This Testcase Verify that User can Navigate to URL and click on Search 
    
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel

    Click on Search

    End Browser
    
MMT-Hotels-TC-002
    [Documentation]
    ...    This Testcase Verify that User can select Rooms & Guests with childrens and Search
    
    Launch Browser
        
    Pop Up    
    
    Sleep    3s
    
    Click on Hotel
    
    sleep    3s
    
    Handling Pop Up
    
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
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    Handling Pop Up

    Select Rooms & Guests
    
    Select Children
    
    Scroll    500
  
    Apply Changes
    
    Apply Price
    
    Click on Search
   
    End Browser
    
MMT-Hotels-TC-004
    [Documentation]
    ...    This Testcase Verify that User can select Rooms & Guests with childrens and Search
    
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    Handling Pop Up
    
    Select Rooms & Guests
    
    Select Children
    
    Add Another Room
    
    Apply Changes
    
    Click on Search
    
    End Browser

MMT-Hotels-TC-005
    [Documentation]
    ...    This Testcase Verify that User can select Rooms & Guests with childrens and Search
    
    Launch Browser
        
    Pop Up    
    
    Sleep    2s
    
    Click on Hotel
    
    Handling Pop Up
    
    Select Rooms & Guests
    
    Select Children
    
    Scroll    500
    
    Apply Changes
    
    Click on Search
    
    Remove Room
   
    End Browser
    





    
        
    
    
    



























    