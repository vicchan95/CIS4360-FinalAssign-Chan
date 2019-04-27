# Actions and Queries

1. Cancel a Reservation
   - Method :
     - DELETE
   - URL :
     - /reservations/{reservation_id}
   - Inputs:
     - Reservation_id
   - Responses:
     - Reservation_id
     - Success (true/false)
   - Expected Result:
     - Reservation is cancelled

2. View info for specific person on reservation
   - Method:
     - GET
   - URL:
     - /reservations/{reservation_id}/people/{person_id}
   - Inputs:
     - Reservation_id
     - Person_id
   - Responses:
     - Reservation_id
     - Person_id
     - Person JSON object:
       - First_name
       - Last_name
       - Date_of_birth
   - Expected Result:
     - Returns info on specific person on reservation