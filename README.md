# 161124_week4_ruby_project

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
