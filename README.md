# Library_Rails_App

CSC/ECE 517 Ruby on Rails Library Room Reservation Project
Frontdesk is a library room reservation application written on Ruby On Rails.
##**Default Admin Credentials**
Admin user name:  , admin user pass word: libsys@admin

##**Features:**

##**Admin Features**
1. The admin logs into the system using the the sign-in page.
2. The admin has the interface like any other user but also a link to admin page on the nav bar.
3. This link will take the admin to the webpage where he can do the following:

   a. Add a room to the system. A room will have the following attributes: Room Number (unique for each room), building, size, status

   b. View the list of all the rooms. View the schedule for the rooms

   c. View the details of a room. Also, show the library member who has the room if its status is “booked”.

   d. Edit the details of a room 

   e. Admin can also change the status of a room i.e., she/he can book or release a room on behalf of a library member. 

   f. View the booking history of a room

   g. Delete a room from the system

   h. View the list of all the library members and their profile details (except password)

   i. View the reservation history of a library member (i.e., a history of the reservations that the user made and did not cancel before the reservation started). 

   j. Delete a library member



##**View all checkout book**
Admins can view historical data, like the checkout history of all books. 
##**Add a book**
Admins can manage the database for books, they can add a new book, and modify the attributes of this book, like ISBN, title, author, and other information. 
##**Search for a book**
Both admins and patrons can use ISBN, title, author or related descriptions to search books in the system. 
##**Add admins**
Super admin can add admins and edit their profiles. 
##**View all patrons**
Admins can view the profiles of all patrons, such as email, name, status (active or inactive). Admins can also view the checkout history of patrons or delete their account. 
##**Extra Credits**
Extra credit feature of both mail sending and book suggestion is implemented.