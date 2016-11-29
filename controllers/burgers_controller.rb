require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative ('../models/burger.rb')
require_relative ('../models/day.rb')
require_relative ('../models/restaurant.rb')


# show all burgers
get '/burgers' do
  @restaurants = Restaurant.all()
  @burgers = Burger.all()
  @days = Day.all()
  erb(:"burgers/index")
end

# form to add NEW burger
get '/burgers/new' do
  @restaurants = Restaurant.all()
  @burgers = Burger.all()
  @days = Day.all()
  erb(:"burgers/new")
end

# actually add burger from form to db
post '/burgers' do
  burger = Burger.new(params)
  burger.save()
  redirect to ('/burgers')
end

# form to EDIT burger
get '/burgers/:id/edit' do
  @restaurants = Restaurant.all()
  @days = Day.all()
  @burger = Burger.find( params[:id])
  erb(:"burgers/edit")
end

# acutally UPDATE burger details to db
post '/burgers/:id' do
  @burger = Burger.update(params)
  redirect to ('/burgers')
end

# SHOW a burger by id

get '/burgers/:id' do
  @burger = Burger.find(params[:id])
  erb(:"burgers/show")
end

# DELETE a burger from the db
post '/burgers/:id/delete' do
  Burger.delete(params[:id])
  redirect to ('/burgers')
end

# UPDATE burger if liked by burger id. Burger index page.
post '/burgers/:id/burger/like' do
  Burger.add_like(params[:id])
  @restaurants = Restaurant.all()
  @burgers = Burger.all()
  @days = Day.all()
  redirect to ('/burgers')
end















