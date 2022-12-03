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
