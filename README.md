# GEMS-C
GEMS: Glohaven Emergency Management Solutions, is an online platform which facilitates the first responders to come in to manage evacuations and resources available to them with ease during forest fires, floodings etc. This project was introduces while keeping in mind the lack of tools due to which the province of British Columbia was left vulnerable to risk of life and enormous economic impact on the state.

---
## Contents of this repository:
1. [Documents](https://github.com/Sunvat/GEMS-C/tree/main/Docs) : This folder is used to store our documents that are being used for this project. Information about user groups, the client meeting minutes, Gnatt Charts can be found here.
2. [Project Files](https://github.com/Sunvat/GEMS-C/tree/main/GEMS) : This folder contains the source files for our project, everything that is being used on the website can be found here.
3. [Images](https://github.com/Sunvat/GEMS-C/tree/main/images) : The images used in the project are stored here.
4. [Paper Models](https://github.com/Sunvat/GEMS-C/tree/main/papermodels) : The paper models made initailly are stored here, the papermodels aid with webpage design, and data flow management for this project.
---
## Our Goal:
In this project we have 4 main goals-
1. To create necessary web-pages and linking them to each other

    a. This includes create account pages and log-in pages.
      
      * These pages do not need to create accounts but should be linked tothe Account login required pages.
     
    b. No database integration is required for this goal.
    c. The Layout must be appropriately formatted, no art or artistic looks are required.
 2. Integrate Database; which will allow the following:
    a. Creation and deletion of new regions and accommodations.
    b. Accounts to be created and login requests to be autherised.
    c. Update capacity of accommodations and emergency updates for regions.
 3. User interface would be developed and allow the website to look good and work as good as before.
 4. **BONUS** : integrations of additional features is not an required task.
 
 *Note: Each goal is presented to the client before after implementation, if the clients do not give their approval the feautre is revised upon as per the clients' decision*

---
## Techstack Used:
1. **Front End**: The software will primarily be designed to be accessed from desktop browsers
such as Chrome or Firefox.
2. **Framework**: We will be using PHP with Laravel to build the website and its features, as
specified by the client.
3. **Database**: The software will use MySQL to store accommodation and region data, as
specified by the client.
4. **Web Server**: The site will be hosted using Composer on a local server.

---
## Functional Requirements:
1. **For EMS:**
- User must be able to select a region from Canada to begin booking accommodation
- User must be able to enter in their booking dates
- Accommodations must be filtered with respect to user booking dates
- Accommodation information must be available to the user
- User must be able to scroll through and choose from a list of available accommodations
in the region
- User must be able to select an accommodation, fill in necessary information and submit
booking request

2. **For Admins/RAs:**
- Admins must be able to login using their unique employee ID and password (tentative).
- Admins must be able to view que list of booking requests.
- Once a booking request is accepted or declined, it should disappear from booking request
list.
- Admins must be able to create and delete regions for accommodations.
- Admins must be able to create, delete, update capacity for and update information for
accommodations.
- Admins must be able to view list of accommodations by region.
- Admins must be able to view list of groups of evacuees by accommodation and region.

---
## Non-Functional Requirements:
- Booking request submission process must be quick and easy.
- Security: Access to only authorized users i.e. only people with an RA account.
- The data shown to users should be up-to-date and accurate.
- The functions (e.g. search, filter etc.) provided by the developers should perform
efficiently and provide the necessary information.
- New (features) usability should be added to the website with ease.
- The website should be able to handle high-intensity traffic.
- The features should be easy to use by new users.
- Capacity for accommodation must be updated automatically upon booking confirmation.

---
## Testing:

All functions of the website will be tested using Unit Tests. Various inputs will be fed into each
function to account for edge cases, and returned values will be checked against expected values
to ensure they match. For instance, we will have the test send some fictional accommodation
locations to the database, then attempt to retrieve and delete said locations. If the retrieved
information matches what we expect, the connection is working and the test will pass.
These tests will be run periodically as the functions are changed or added to. Care will be taken
to keep the tests up to date as new use or edge cases may emerge, and how changed or new
functions interact with each other will be taken into account when designing Unit Tests.

---
## Project Roles and Responsibilities:
|Name|Role|Responsibility|
|-----|------|-----------|
|Harkeerat Lit|Project Manager|Making and assigning tasks to the team members. Planning out milestones,setting up weekly team meetings and submitting weekly team report.|
|Akshaj Srinivasan|Client Liason|Managing communication with client,setting up weekly meetings with clients,taking minutes,submit weekly report meeting with client.|
|Mack Schmaltz|QA Lead|Defining quality standards for the project, refining documentation. Ensuring validation techniques, required documentation is complete.|
|Sunvat Singh Brar|Technical Lead|Making sure that technical requirements of the projects are being met. Setting up git repository, unit testing for the project.|

# Code Documentation
## Useful Commands
These are to be used with a terminal currently open to the GEMS folder.

|Name|Usage|
|-----------|------------------------|
|php artisan serv|Starts the local server for the site to be hosted on.|
|npm run dev|Runs the scripts needed for the site's base level functionality.|
|php artisan test|Runs all unit tests. Results are shown in the terminal.|

## PHP Functions
|Name|Usage|File Location|
|-----------|------------------------|-----------|
|getConn()|Holds all the needed information to connect to the database. Returns a connection to the database. This connection must be closed in the function that called this method.|database/getConnection.php|
|insertAcc($newAccommodation)|Insert a new accommodation into the database. $newAccommodation must be an array containing the accommodation name, region name, country, street address, and the maximum capacity in that order. Does not return anything|database/insertFuncs.php|
|insertTestAcc()|Inserts mock data into a mock table in the database. Used to ensure the database can be connected to, as well as insert syntax is correct for the used version of SQL. Accommodation will be deleted when running all unit tests.|database/insertFuncs.php|
|InsertRegion()|Insert function that inserts region information into the "regions" table in the database. This is called upon when a user creates a new region that is to be added to the list.|database/insertFuncs.php|
|InsertBooking()|Insert function which inserts new booking information into the "bookings" table in the database.|database/insertFuncs.php|
|InsertWishlist()|Insert function which inserts new wishlist information into the "bookings" table in the database.|database/insertFuncs.php|
|InsertAccountInfo()| Function that inserts account information into "useraccounts" table in the database.|database/insertFuncs.php|
|InsertLEI()|Insert function which inserts infromation into the "LEI" table in the database. The information about laltest emergency are input in the website and is added to the databse through this function.|database/insertFuncs.php|
|InsertContact()| Function that inserts RA contact information into "contacts" table in the database.|database/insertFuncs.php|
|updateAccDet($accommodation)|Updates an accommodation in the database. $accommodation must be an array containing, in order, the accommodation name, the street address, region name, country, maximum capacity, the change in number of occupants (can be positive or negative), the description, the image URL, if there's wheelchair access (boolean), if pets are allows (boolean), if there is medical attention available (boolean), if there are beds (boolean), if it is located on high ground (boolean), if food is available (boolean), if water is available (boolean), and the accommodation ID. The site has been set up to add unchanged values to the array automatically. Does not return anything|database/updateFuncs.php|
|confirmDenyBooking($answer, $bID)|Updates a booking request in the database. $answer is either 1 or 0, with 1 being a confirmation and 0 declining the request. $bID is the ID of the booking. A confirmation will change the booking's status to "CONFIRMED" and modify the current occupancy of the accommodation. Does not return anything|database/updateFuncs.php|
|endStay($accID, $bID)|Updates a booking request in the database. $accID is the accommodation ID and $bID is the ID of the booking. The available space at the accomodation will increase by the number of people in the booking, and the booking's status will be changed to "RESOLVED". Does not return anything|database/updateFuncs.php|
|confirmWish($wish)|Updates a wishlist request in the database. $wish is an array that contains all the information about the wishlist request, and should be in the order of wish ID and the accommodation ID. The wish will be moved into the approved booking section. Does not return anything|database/updateFuncs.php|
|updateRegion($region)|Updates a region in the database. **TBD**. The site has been set up to add unchanged values to the array automatically. Does not return anything|database/updateFuncs.php|
|updateLEI($LEI)|Updates an emergency update in the database. $LEI must be an array containing, in order, the location, the information about the emergency, the date, the affected country, and the region ID. The site has been set up to add unchanged values to the array automatically. Does not return anything|database/updateFuncs.php|
|getAccDet($ID)|Gets the details of a single accommodation, and processes the SQL data returned by the database. $ID is an int that corresponds to the ID of the desired accommodation. Returns the details as a usable array.|database/selectFuncs.php|
|getAllAcc($Reg)|Gets the basic details of all accommodations in the database. $Reg is an int that corresponds to the ID of the desired region. If $Reg is set to 0 or left blank, it will return accommodations of all regions. If $Reg is set to -1, it will connect to the table in the database used for testing, and return any mock data stored within. Returns SQL data that must be processed into rows using mysqli_fetch_array($result).|database/selectFuncs.php|
|getFilteredAcc($Reg, $filter)|Gets the basic details of all accommodations in the database that meet the criteria of the filter. $Reg is an int that corresponds to the ID of the desired region. If $Reg is set to 0 or left blank, it will return accommodations of all regions. If $Reg is set to -1, it will connect to the table in the database used for testing, and return any mock data stored within. Returns SQL data that must be processed into rows using mysqli_fetch_array($result).|database/selectFuncs.php|
|getRegion()|Returns all region names from the database.|database/selectFuncs.php|
|getRegionAndID()|Returns all region names and IDs from the database|database/selectFuncs.php|
|getAllBookings()|Returns all bookings in the database.|database/selectFuncs.php|
|getAllWish($rID)|Returns all wishlist items of the specified region in the database.|database/selectFuncs.php|
|getWish($wID)|Returns a single wishlist request, specified by the ID.|database/selectFuncs.php|
|getPendingBookings($rID)|Returns all bookings marked "PENDING" within a region specified by the ID.|database/selectFuncs.php|
|getConfirmedBookings($rID)|Returns all bookings marked "CONFIRMED" within a region specified by the ID.|database/selectFuncs.php|
|getDeclinedBookings($rID)|Returns all bookings marked "DENIED" within a region specified by the ID.|database/selectFuncs.php|
|getRegionandID()|Returns all regions and their ID.|database/selectFuncs.php|
|getLEIandID()|Returns the region id, location, update information, and time of emergency updates from the database.|database/selectFuncs.php|
|getRowLEI($LEI)|Returns a single LEI update from the database.|database/selectFuncs.php|
|getContact()|Returns the region id and phone number of all contacts in the database.|database/selectFuncs.php|
|getRegionID($rname, $country, $provstate)|Returns the region id based on the specified location.|database/selectFuncs.php|
|getRegionByID($rname, $country, $provstate)|Returns the region name based on the specified ID.|database/selectFuncs.php|
|delAcc($ID)|Deletes a single accommodation from the database. $ID is an int that corresponds to the ID of the accommodation to be deleted. Does not return anything.|database/selectFuncs.php|
|delBooking($bookingID)|Deletes a single booking from the database. $bookingID is an int that corresponds to the ID of the booking to be deleted. Does not return anything.|database/selectFuncs.php|
|delWish($wishID)|Deletes a single wish from the database. $wishID is an int that corresponds to the ID of the wish to be deleted. Does not return anything.|database/selectFuncs.php|
|delAccTest()|Deletes a test accommodation from the database. Is run during unit tests.|database/selectFuncs.php|
|delLEI($rID, $LEI, $DATETIME)|Deletes a single LEI from the database. $LEI is an int that corresponds to the ID of the accommodation to be deleted. Does not return anything.|database/selectFuncs.php|

## SQL Triggers
|Name|Usage|File Location|
|-----------|------------------------|-----------|
|checkIfFull|Compares the maximum occupancy to the current occupancy to determine if there is still available space at the location being updated, then adjusts the isFull variable as needed.|database/databaseTriggers.sql|

## SQL Database
|Table|Purpose|
|-----------|------------------------|
|useraccounts|Stores information about the accounts of RA members. These are first name (`fname`), last name (`lname`), email (`email`), password (`pword`), the account ID (`id`), and the region ID (`rID`).|
|accommodations|Stores information about accommodation locations. These are account ID (`accID`), region ID (`rID`), accommodation name (`aname`), the accommodation's adress (`address`), it's maximum capacity (`maxCap`), the number of people currently occupying it (`curOc`), a description (`descr`), a URL to a representative image (`image`), if it is wheelchair accessible (`WCA`), if pets are allowed (`Pets`), if medical assistance is available (`Med`), if beds are provided (`Bed`), if it is at/over capacity (`isFull`), if it is located on high ground (`HighGround`), if food is provided (`Food`), and if water is provided (`Water`).|
|regions|Stores information about regions. Each table that uses a region ID will link here to keep region information and spelling standardized. The information stored is the region ID (`rID`), the region name (`rname`), the country (`country`), the province or state the region is in (`provState`),and a URL to a representative image (`image`).|
|bookings|Stores information about bookings. This is the accommodation ID (`accID`) taken from the accommodation table, the region ID (`rID`), the booking's ID (`bookingID`), the booking's name (`name`), a phone number for the booked group (`phoneNumber`), a name for the group (`groupName`), the number of people in the group (`NumPeople`), the name of the first responder member making the request (`Caller Name`), the name of the first responder `Caller E.M.S I.D`, the first responder's phone number (`Caller Contact Number`), if wheelchair access is required (`WCA`), if a pet friendly location is required (`Pets`),if medical assistance is needed (`Med`), and if beds are desired (`Bed`).|
|wishlist|Stores information about pending booking requests. This is the wishlist ID (`wishID`), the request's name (`name`),an associated phone number for the pending group (`phoneNumber`), the name of the pending group (`groupName`), the number of people in the pending group (`NumPeople`), is wheel chair access will be required (`WCA`), if a pet friendly location is desired (`Pets`), if medical assistance will be required (`Med`), if beds are desired (`Bed`), and the time the request is made (`DateTime`).|
|LEI|Stores emergency updates. The stored information is the region ID (`rID`), the affected location (`location`), the description (`LEI`), and the date that the update was created (`datetime`).|
|Contact|Stores the contact information for the Regional Admin. This is the region ID (`rID`), and the admin's phone number (`PNumber`).|

## Javascript Functions
|Name|Usage|File Location|
|-----------|------------------------|-----------|
|searchAccommodations()|Provides a dynamic search bar for the accommodations pages. Hides rows that do not have accommodation names similar to the search term.|Ideally will be in resources/js/searchAcc.js but due to limitations with laravel currently exists of EMS-accommodations.blade.php and RA-accommodations.blade.php|
