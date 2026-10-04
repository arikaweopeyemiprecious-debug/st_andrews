ST. ANDREW'S ANGLICAN CHURCH WEBSITE
Sauka, Kuje-Abuja

SETUP
1. Copy the st_andrews_site folder into C:\xampp\htdocs\
2. Start Apache and MySQL in XAMPP.
3. Open phpMyAdmin and import database.sql.
4. Check includes/config.php and set your MySQL root password if your local MySQL account has one.
5. Visit http://localhost/st_andrews_site/

FEATURES
- Professional responsive church website
- Official St. Andrew's church logo in the navigation and authentication pages
- Automatic home-page image slider with navigation arrows and dots
- Home, About, Sermons, Gallery and Contact pages
- Member Sign Up and Login forms
- Logout support
- User accounts stored in MySQL
- PHP 5.2.5-compatible mysql_* database connection
- Church gallery using the supplied church photos

AUTHENTICATION
Visitors can create an account from signup.php and log in from login.php. After login, their name appears in the navigation and a Logout link is shown.

IMPORTANT
This package targets the user's legacy PHP 5.2.5 environment. For a modern production server, upgrade PHP and replace the legacy mysql_* authentication/database layer with mysqli or PDO and stronger password hashing.


FAMILY HARVEST UPDATES
----------------------
The homepage now has an Upcoming Family Harvest feature. It reads the next scheduled family from the family_harvest table. To update the family each week, open phpMyAdmin, choose the st_andrews database, open family_harvest, and edit family_name, harvest_date, and message for the relevant Sunday. Keep one row per Sunday. The starter row says “Family name to be announced” until the church enters the correct family name. The displayed service time is 8:00 AM.
