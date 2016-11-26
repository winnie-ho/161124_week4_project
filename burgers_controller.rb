require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative ('models/burger.rb')
require_relative ('models/day.rb')


# show all burgers
get '/burgers' do
  @burgers = Burger.all()
  erb(:index)
end

# form to add burger
get '/burgers/new' do
  @days = Day.all()
  erb(:new)
end

# actually add burger from form to db
post '/burgers' do
  burger = Burger.new(params)
  burger.save()
  redirect to ('/burgers')
end

# form to edit burger
get '/burgers/:id/edit' do
  @days = Day.all()
  @burger = Burger.find( params[:id].to_i )
  erb(:edit)
end

# acutally update burger details to db
post '/burgers/:id' do
  @burger = Burger.update(params)
  redirect to ('/burgers')
end

# show a burger by id
get '/burgers/:id' do
  @burger = Burger.find(params[:id])
  erb(:show)
end


# delete a burger from the db
post '/burgers/:id/delete' do
  Burger.delete(params[:id].to_i)
  redirect to ('/burgers')
end

















