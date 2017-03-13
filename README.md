# 161124_BurgerBelly_week4_ruby_project

Burger deal tracker app for week 4 project week at CodeClan.

Project Brief

Objective

Jarrod has an insatiable hunger for burgers. He would like a way to track which deals are available on which burgers on a given day so that he can maximise his burger intake.

The project is an opportunity to practice:
- Ruby fundamentals
- TDD (where appropriate)
- OOP
- Web Programming ( REST/MVC )
- Databases with CRUD actions


MVP

- Add a burger eatery
- Add a list of burgers for an eatery
- Add a list of deals for an eatery where a deal has:
	- Label e.g. "Cheesy pig Tuesdays"
	- A list of burgers that deal applies to
	- The day that the deal is available on e.g. "Wednesday"
- Show the deals available for each day of the week Mon - Sun

Extensions

Users can create groups. Users can have many groups. User can add message to the group. Add Google map API to event to show planned routes. *Add Strava API so that user can select from their own previous routes. Implement weather API to show conditions for an upcoming event.



---------------------------------------------------------
Ensure all ruby gems are installed. Installed gems are:
	gem install pg
	gem install sinatra
	gem install sinatra-contrib
	gem install pry-byebug
	
Run postgres
Navigate to db folder
Create db called "burger_tracker".    createdb "burger_tracker"
Drop tables in burgers.sql file.    psql -d burger_tracker -f burgers.sql
Run ruby seeds.rb    ruby seeds.rb
Run ruby app.rb    ruby app.rb
