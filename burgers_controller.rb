require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative ('models/burger.rb')


# show all burgers

get '/burgers' do
  @burgers = Burger.all()
  erb(:index)
end























