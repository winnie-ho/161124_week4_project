require ('sinatra')
require ('sinatra/contrib/all')
require_relative('../models/burger.rb')
require_relative('../models/day.rb')

get '/days/:day_id' do
  @found_burgers = Burger.day_sort(2)
  erb( :"days/show" )
end