*** Settings ***
Resource    ../../TestSuite/userdata/user_data.resource
*** Variables ***
#Landing Page
${title_landing_pge}    MakeMyTrip - #1 Travel Website 50% OFF on Hotels, Flights & Holiday
${Search_btn_txt}    SEARCH

#Tains Page
${title_trains_pge}    IRCTC Train Tickets Reservation | Indian Railways Reservation | IRCTC Train Tickets Booking, Trains Enquiry Online : MakeMyTrip
${book_train_tickets}    BOOK TRAIN TICKETS   
${check_PNR_status}    CHECK PNR STATUS    
${live_train_status}    LIVE TRAIN STATUS
${FROM&To_samedata_err}    From & To station cannot be the same

${City_doent_found_mess}    This city doesn't found

#=======================================================================================================================================================
${ALL_Class}		    All Class
${Sleeper_Class}	    Sleeper Class
${Third_AC}		    	Third AC
${Second_AC}	    	Second AC
${First_AC}		    	First AC
${Second_Seating}	    Second Seating
${First_Class}		    First Class
${Third_AC_Economy}	    Third AC Economy
${AC_Chair_Car}		    AC Chair Car


${SL}	SL
${FC}	FC
${CC}	CC


${Get_Free_Cancellation_text}            Get Free Cancellation 
${Great_Choice_Message}                  Great Choice! Free Cancellation before chart preparation 

${IRTCT_username_will_message}           IRCTC username wil 
${Invalid_user_Id_message}               Invalid     


${Error_message_promocode}                Sorry! Promocode used is not applicable at the moment.    