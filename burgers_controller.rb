require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative ('models/burger.rb')
require_relative ('models/day.rb')


# show all burgers

get '/burgers' do
  @burgers = Burger.all()
  erb(:index)
end

get '/burgers/new' do
  @days = Day.all()
  erb(:new)
end

post '/burgers' do
  burger = Burger.new(params)
  burger.save()
  redirect to ('/burgers')
end




















