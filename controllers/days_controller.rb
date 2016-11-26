require ('sinatra')
require ('sinatra/contrib/all')
require_relative('../models/burger.rb')
require_relative('../models/day.rb')

get '/days/day.id' do
  @days = Day.all()
  @day = Day.find(params[:day_id])
  @found_burgers = Burger.day_sort(params[:day_id])
  erb( :"days/show" )
end

