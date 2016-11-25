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
  @burger = burger.find(params[:id])
  erb(:edit)
end



















