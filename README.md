# Library_Rails_App

CSC/ECE 517 Ruby on Rails Library Room Reservation Project
Frontdesk is a library room reservation application written on Ruby On Rails.
##**Default Admin Credentials**
Super_Admin user name: librarymanagentlists@gmail.com  , super_admin pass word: libraryroom

Github repo: https://github.com/saratkavuru/Library_Rails_App

Application URL: http://frontdesk517oodd.herokuapp.com

##**Features:**

##**Admin Features**
1. The admin logs into the system using the the sign-in page.
2. The admin has the interface like any other user but also a link to admin page on the navigation bar.
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

   k. The admin can add, modify, delete other users on the application except the super_admin.

4. Super_admin has every power of the admin but he can't be deleted/modified.



##**Library member feature**

1. The user logs in with email and password.
2. The user is greeted by the homepage which the contains his/her booking history and the options to search for rooms, edit his/her profile, and logout.
3. The user can only book one room within one week. 

###**Search rooms**
The "rooms" link on the navigaton bar wil take the user to the room search page where he/she can search for the room based on room number, library, capacity, and start time. This search would render the results in a table along with availabilties of the each of the rooms.

###**Book Room**
The user has to give the start time, the room details on the booking page to book the room. The options for the rooms are in the drop-down.

###**Delete booking**
The user can release his/her booking from the booking history/ home page.

###**Edit profile**
1. The user can edit profile details on the edit profile tab.
2. The user can also cancel his/her account.


##**Extra Credits**

###**Email**
The user will receive emails on booking a room, and when he/she requests a new password.

###**User booking restriction**
A library member can reserve only one room at a particular date and time. Only after his/her reservation is released, he/she can proceed to reserve another room. 


##**Edge cases**

1. When the admin deletes a user with a active booking, the booking is also deleted.

2. When the admin deletes a room with a booking on it, the booking is also deleted.

3. The user can only make one booking at a time, and can't make a booking that doesn't start within one week.



