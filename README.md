# Animal Shelter API
## Created by Lara Bjork on January 31, 2020
### Project Description

This project was completed as an independent assignment for the Ruby class at Epicodus, after a week focused on building APIs. The task description was as follows:

_You've completed a few projects at the dev agency where you work and you've been given more autonomy to choose which project you'd like to work on next. The agency currently has three new back-end contracts to build APIs for their clients. Take your pick! Since this is the first time you've been given free rein on a project, take this opportunity to showcase your versatility for the project manager. This week, your goal is to have the best custom endpoint. Usefulness, creativity and conciseness of code will all be considered._

I chose this option of the three presented to us:

_Animal Shelter: Create an API for a local animal shelter. The API will list the available cats and dogs at the shelter._

I reviewed the Oregon Humane Society's website (https://www.oregonhumane.org/adopt/) and replicated the categories they present in each pet's profile.

### Specifications
As of January 31, this API meets this user story:
_* A user should be able to add, update, and delete animal records, and to see all records as well as single record._

With full functionality, this API would be able to fulfill these user stories as well:
_* A user should need admin access in order to be able to add, update, and delete animal records._
_* An admin should be able to add, update, and delete sponsors who can be associated with more than one animal._
_* A user should be able to see whether an animal has any sponsors._
_* A user should be able to create an account so that they can save an animal to a list of pets they are interested in meeting/adopting._
_* A user should be able to create an account so that they can sign up to sponsor animals; they should also be able to see a list of all the animals they have sponsored in the past and are currently sponsored._
_* An admin should be able to see all sponsors along with data about which animals are currently sponsored and financial information, such as total amount of money provided by sponsors for a given time period._

### Technologies Used
Ruby 2.6.5, Rails 5.2.4, Bundler, PSQL/Postgres, Postman
Gems added manually after initial project setup: Capybara, faker, factory_bot_rails, launchy, pry, rspec-rails, shoulda-matchers, and simplecov.
Project was written using Google Chrome. No other browsers were tested.

### Project Setup instructions
1. Ensure that you have the correct versions of Ruby, Rails, and PSQL installed.
2. Clone the project locally from github (https://github.com/larabjork/animal-shelter-api.git).
3. Install Bundler if you do not already have it by running **gem install bundler** in the terminal.
4. Run **bundle install** to manage gems; if you make additional changes to the Gemfile, you will need to run this command again.
5. Run **rake db:create**, which should create two databases: **animal_shelter_development** and **animal_shelter_test**.
6. Run **rake db:migrate**, followed by **rake db:test:prepare**.
7. To seed the databases with placeholder information, run **rake db:seed**, which should give you 20 records.
8. To query the database using SQL commands, run **psql** in the terminal. Enter **\c animal_shelter_development**. For basic SQL commands, see https://www.w3schools.com/sql/sql_syntax.asp and https://www.learnhowtoprogram.com/ruby-and-rails/ruby-database-basics/sql-basics.

If something doesn't display correctly or goes wrong somehow, please contact me at <lara.m.bjork@gmail.com> and I will do my best to troubleshoot for you.

### Endpoint Descriptions
Endpoints are described in the project file **Animal Shelter.postman_collection.json**, which can be imported directly into Postman to test API calls.

Before testing any of the endpoints, make sure that the Rails server is running (enter **rails s** or **rails server**).

Once you have followed the project setup instructions above, to import the endpoint descriptions:
* Open the Postman app.
* Click on **Import** in the upper left corner.
* In the window that presents **Import File** as an option, navigate to select the postman collection file named above.
* Once you have selected the file, click **Open**, and the file will be available under the heading **Collections**.
* Within the **Animal Shelter** collection, you will see five API requests:
  * **GET animals:** http://localhost:3000/animals/ shows all animal records
  * **GET animal:** http://localhost:3000/animals/:id shows a specific animal record, by ID
  * **POST animal:** http://localhost:3000/animals/ posts all required information for a new animal record
  * **PUT animal:** http://localhost:3000/animals/:id updates any field in an animal record (except ID)
  * **DELETE animal:** http://localhost:3000/animals/:id deletes a specific animal record, by ID
* To see these descriptions within Postman, right-click on each request and select **Edit**.


### Known Issues and Limitations
* No known bugs.
* No accompanying front-end exists at this time.
* As noted in the specifications, additional functionality would make this API more useful.

### Where to Find This Project
https://github.com/larabjork/animal-shelter-api.git

### License
This software is licensed under the MIT license.

Copyright (c) 2020 Lara Bjork   
