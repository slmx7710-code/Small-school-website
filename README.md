STUDENT DIRECTORY WITH USER PROFILES
(Online Student Directory Web Application)
1. Project Idea

This project is a web-based application designed for a university environment.

The goal is to create an online student directory that helps students get to know each other and collaborate more effectively.

Each student can create a personal profile and add:

Skills
Projects
Interests

This improves collaboration between students for group work, learning, and mutual support.

2. Technologies Used

Frontend:

HTML
CSS (responsive design)
JavaScript (optional for search and filters)

Backend:

PHP

Database:

MySQL
3. Main Features
3.1 User Management
User registration (name, email, study program, skills)
Login and logout system with error handling
Personal user profile creation
Profile picture upload with validation
Profile editing (only for logged-in users)
3.2 Directory & Search
Homepage with a list of all student profiles
Search by name or study program
Filter system (skills, study field)
Profile detail page with full information
Favorite system (like profiles)
3.3 Communication
Internal messaging system between students
Notifications for new messages
4. Database Structure (MySQL)

Users Table

ID
Name
Email
Password (hashed with password_hash)
Study Program
Photo
Skills

Projects Table

ID
User ID (Foreign Key)
Title
Description
Date

Messages Table

ID
Sender ID
Receiver ID
Content
Date

Relationships:

One user → multiple projects (1:N)
One user → multiple messages (1:N)
Favorites system (N:M relationship)
5. Learning Outcomes

This project significantly improved my motivation in software development.

I learned how to:

Build a full web application
Work with PHP and MySQL
Manage user authentication and security
Use password hashing (password_hash)
Implement search and filter functions
Design relational databases
Develop CRUD-based user profiles

 Conclusion

This project represents an important step in my journey as a web developer and demonstrates my ability to build complete full-stack applications.
