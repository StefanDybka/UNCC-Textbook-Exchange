# UNCC Textbook Exchange

A fully functioning Ruby on Rails webapplication that handles the exchange of textbooks for the University of North Carolina at Charlotte. This was created as a school project in a group.

## Features
- **Accounts:** Fully working accounts and sessions with email verification. Only UNCC emails can create accounts for safety purposes. You can update your user information and password.
- **Listings:** Logged in users can post and view textbook listings. Listings are displayed with [DataTables](https://datatables.net/) for pagination and instant search functionality. They can also message textbook owners through the site. Sent messages are delivered by email through [SendGrid](https://sendgrid.com/). Sold listings can be marked as sold. 
- **Reports:** Users are able to report textbook listings. Reported listings are flagged so other users use extra caution. Admins are able to view reports.
- **Dynamic View:** Site is styled with [Bootstrap](https://getbootstrap.com/) for a responsive layout.



