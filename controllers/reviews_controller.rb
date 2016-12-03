require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative ('../models/burger.rb')
require_relative ('../models/day.rb')
require_relative ('../models/restaurant.rb')
require_relative ('../models/review.rb')
require('pry-byebug')

# form to add NEW review
get '/reviews/:burger_id/new' do
@burger = Burger.find(params[:burger_id])
  erb(:"reviews/new")
end

# actually add review from form to db
post '/reviews/:id' do
  review = Review.new(params)
  review.save()
  redirect to ('burgers/'+ params[:burger_id])
end
