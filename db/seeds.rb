require_relative ('../models/day')
require_relative ('../models/burger')
require_relative ('../models/restaurant')
require ('pry-byebug')

# inputting days of the week
day1 = Day.new({
  "name" => "Monday"
  })
day1.save()

day2 = Day.new({
  "name" => "Tuesday"
  })
day2.save()

day3 = Day.new({
  "name" => "Wednesday"
  })
day3.save()

day4 = Day.new({
  "name" => "Thursday"
  })
day4.save()

day5 = Day.new({
  "name" => "Friday"
  })
day5.save()

day6 = Day.new({
  "name" => "Saturday"
  })
day6.save()

day7 = Day.new({
  "name" => "Sunday"
  })
day7.save()




# adding a database of restaurants in Edinburgh
restaurant1 = Restaurant.new({
  "name" => "Red Squirrel",
  "address" => "21 Lothian Road, Edinburgh, EH1 2DJ",
  "web" => "www.redsquirreledinburgh.co.uk",
  "phone" => "0131 229 9933",
  "map" => "/images/map_redsquirrel.png"
  })
restaurant1.save()

restaurant2 = Restaurant.new({
  "name" => "The Chanter",
  "address" => "30-32 Bread St, Edinburgh, EH3 9AF",
  "web" => "www.thechanterpub.co.uk",
  "phone" => "0131 221 0575",
  "map" => "/images/map_thechanter.png"
  })
restaurant2.save()

restaurant3 = Restaurant.new({
  "name" => "Lebowskis",
  "address" => "18 Morrison St, Edinburgh, EH3 8BJ",
  "web" => "www.lebowskis.co.uk/edinburgh/",
  "phone" => "0131 466 1779",
  "map"=> "/images/map_lebowskis.png"
  })
restaurant3.save()

restaurant4 = Restaurant.new({
  "name" => "Ryans Bar",
  "address" => "Hope St, Edinburgh EH2 4DB",
  "web" => "www.ryansbarandrestaurant.co.uk/",
  "phone" => "0131 226 6669",
  "map"=> "/images/map_ryansbar.png"
  })
restaurant4.save()

restaurant4 = Restaurant.new({
  "name" => "The Hanging Bat",
  "address" => "133 Lothian Rd, Edinburgh EH3 9AB",
  "web" => "www.thehangingbat.com",
  "phone" => "0131 229 0759",
  "map"=> "/images/map_thehangingbat.png"
  })
restaurant4.save()


# adding a burger
burger1 = Burger.new({
  "name" => "Classic Beef",
  "restaurant_id" => restaurant1.id,
  "deal" => "2 for 1",
  "day_id" => day5.id
  })
burger1.save()

burger2 = Burger.new({
  "name" => "Cheese Burger",
  "restaurant_id" => restaurant2.id,
  "deal" => "10%",
  "day_id" => day2.id
  })
burger2.save()

burger3 = Burger.new({
  "name" => "Veg Burger",
  "restaurant_id" => restaurant2.id,
  "deal" => "10%",
  "day_id" => day2.id
  })
burger3.save()

binding.pry
nil

