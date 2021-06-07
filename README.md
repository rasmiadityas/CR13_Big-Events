# Portfolio: Big Events
210514 Code Review 13 - Rasmiaditya Silasari

# Explanation of the project
Big Events is a website where the admin can do CRUD actions on event. New event can be added by clicking 'Add Event' on the navbar. All events are listed on the index page (http://localhost:8000/index) where the admin can edit, delete or view each event directly by clicking the respective buttons on each event's card. The edit and delete buttons are also available in the details page.

# File organization
- The exported database (cr13_bigevents_rasmisilasari.sql) is in the folder 'database'
- All symfony project files (without the vendor folder) is also available in the zip file 'CFLMS-RasmiSilasari-CodeReview-13.zip'

# The criteria for grading
1. (20) Create a nice looking responsive theme. You can use Bootstrap or just HTML/CSS. 
- All pages are styled and responsive.

2. (20) Event index page: all events should be listed here like on the image above (event name, event date and time)
- All events are listed on the index page (http://localhost:8000/index).

3. (20) Event view page: when a user clicks on the event, he/she should get an event view page with all the data stored for that event
- The details of each event can be viewed from the details page (e.g. http://localhost:8000/details/1).

4. (15) Event edit page: on this page, it should be possible to edit the event data
- Each event can be edited using the edit page (e.g. http://localhost:8000/edit/1).

5. (15) Event add page: on this page, it should be possible to add a new event
- New event can be added by clicking 'Add Event' on the navbar which will lead to the create page (http://localhost:8000/new).

6. (10) Event delete option: a user should be able to delete an event from the database
- Each event can be deleted by clicking the 'Delete' button which will warn the admin before deleting.

# Bonus points
7. (20) Create filtering depending on the event type (hint: pass the information to the URL)
- On the index page there are buttons to filter the listed event based on the category (sport, music, performance, culture, gastronomy).

# Future improvements
- dynamic filter to search through the data
- contact page
- using geogle map API on the details page
