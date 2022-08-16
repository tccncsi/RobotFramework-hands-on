*** Settings ***

Library    Selenium2Library
Resource    ../Base/Common_Functionalites.resource
Resource    ../Resources/Home_Page.resource

*** Keywords ***



*** Test Cases ***
MMT-Hotels-TC-006
    #   First Default hotel
    
    [Documentation]
    ...    This Testcase Verify that User can search for default data
    Launch Browser

    Click on Hotel    
    
    CITY
    
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
    ...    This Testcase Verify that User can select near airport
    
    Launch Browser

    Click on Hotel    
    
    Click on Search
    
    Select 1st Hotel     
     
    Select Near Airport Filter  
    
    End Browser
  
MMT-Hotels-TC-008 
    #FREE BREAKFAST
    
    Launch Browser

    Click on Hotel    
    
    Click on Search
    
    Select 1st Hotel        
   
    Selenium2Library.Switch Window       

    Select Breakfast Filter
    
    Sleep    5s    
     
    Select 1st Hotel

    End Browser
    
MMT-Hotels-TC-009
    # Price(per night)
    Launch Browser

    Click on Hotel    
    
    Click on Search
    
    Select 1st Hotel              

    Select Prize Filter

    End Browser
    
MMT-Hotels-TC-010
    # (Your Budget)
    Launch Browser

    Click on Hotel    
    
    Click on Search            
    
    Scroll    1200
    
    Select Budget Filter    3000    8000 
    
    End Browser

MMT-Hotels-TC-011
    #Filter User Rating
    Launch Browser

    Click on Hotel    
    
    Click on Search            
    
    Scroll    1250

    Select User Rating
    
    Sleep    5s  
    
     End Browser
    
MMT-Hotels-TC-012
    #Filter Star Category
     Click on Hotel    
    
    Click on Search            
    
    Scroll    1300
    
    Select Star Rating
    
     End Browser
    
MMT-Hotels-TC-013
   #Filter Property Type  
    Click on Hotel    
    
    Click on Search            
    
    Scroll    1400

    Select Property Type
                
    End Browser
    
MMT-Hotels-TC-014
    #Amenities Filter
    Launch Browser 
    
    Click on Hotel    
    
    Click on Search            
    
    Scroll    1500
    
    Select Amenites
    
     End Browser

MMT-Hotels-TC-015
   #Guests Love Filter
    Launch Browser 
    
    Click on Hotel    
    
    Click on Search            
    
    Scroll    1500
    
    Select Guest Love
    
     End Browser
    
MMT-Hotels-TC-016
    #Booking Prefernce Filter
    Launch Browser 
    
    Click on Hotel    
    
    Click on Search            
    
    Scroll    1600
    
    Select Booking Preference
    
    End Browser

MMT-Hotels-TC-017
    #House Rules Filter
    Launch Browser 
    
    Click on Hotel    
    
    Click on Search            
    
    Scroll    1600
    
   Select House Rules
    
    End Browser

MMT-Hotels-TC-018
   #Beds & Bedrooms Filter
    
    Launch Browser 
    
    Click on Hotel    
    
    Click on Search            
    
    Scroll    1700
    
    Select Beds & Bedrooms
    
    End Browser    

MMT-Hotels-TC-019
   #Back to Top BUTTON
    
    Launch Browser 
    
    Click on Hotel    
    
    Click on Search            
    
    Scroll    1700
    
    Back to Top
    
   End Browser  

MMT-Hotels-TC-020
    #View Map
    
    Launch Browser 
    
    Click on Hotel    
    
    Click on Search           
    
    View Map
    
    End Browser 

MMT-Hotels-TC-021
    #Search Tab
   
    Launch Browser 
    
    Click on Hotel    
    
    Click on Search           
  
    Search Location or Property
        
    End Browser    



    
    
    

    
 
    
    

 
    
    





   
    
        
    