require ('sinatra')
require ('sinatra/contrib/all')
require_relative ('controllers/burgers_controller')
require_relative ('controllers/days_controller')

get '/' do
  erb( :index )
end