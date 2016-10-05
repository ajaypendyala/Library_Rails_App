# Library_Rails_App

CSC/ECE 517 OODD Program 1

Frontdesk is a library room reservation application written on Ruby On Rails.

Team Members : 
Tanmay Goel (tgoel@ncsu.edu)

Sarat Kavuru (skavuru@ncsu.edu)

Ajay Chandra Pendyala(apendya@ncsu.edu)

Frontdesk is a library room reservation application written in Ruby On Rails.


##**Default Admin Credentials**
#### With great power comes great responsibility! 
Super_Admin user name: librarymanagentlists@gmail.com  , super_admin pass word: libraryroom

Also, please use a valid email address while signing up, or else the system wouldn't be able to send you an email after you book a room.


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
 
   k. The admin can modify and delete other admins but he cannot delete himself.
 
   l. The admin can add, modify, delete other users on the application except the super_admin.

4. Super_admin has every power of the admin and also he can't be deleted/modified by anyone.



##**Library member features**

1. The user logs in with email and password.
2. The user is greeted by the homepage which contains his/her booking history and the options to search for rooms, edit his/her profile, and logout.
3. The user can only book one room and its start time can't be more than one week in the future. 

###**Search rooms**
The "rooms" link on the navigaton bar will take the user to the room search page where he/she can search for the room based on room number, library, capacity, or start time. This search would render the results in a table along with availabilties of  each of the rooms.

###**Book Room**
The user has to give the start time, the room details on the booking page to book the room. The options for the rooms are in the drop-down menu.

###**Delete booking**
The user can release his/her booking from the booking history/ home page.

###**Edit profile**
1. The user can edit profile details on the edit profile tab.
2. The user can also cancel his/her account.


##**Extra Credits**

###**Email**
The user along with his team members (optional) will receive emails on booking a room, and when he/she requests a new password.

###**User booking restriction**
A library member can reserve only one room at a particular date and time. Only after his/her reservation is released, he/she can proceed to reserve another room. But an admin can allow a library member to book multiple rooms in the future.


##**Edge cases**

1. When the admin deletes a user with a active booking, the booking associated is also deleted.

2. When the admin deletes a room with a booking on it, the booking associated is also deleted.



##**Tests Implemented**

1. The model room has been tested. The function of search and the feature that a room can't be saved without capacity or room number has been tested.

2. The controller for Rooms has been tested.



