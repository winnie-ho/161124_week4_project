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

restaurant5 = Restaurant.new({
  "name" => "Byron",
  "address" => "113-117 Lothian Rd, Edinburgh, EH3 9AN",
  "web" => "www.byronhamburgers.com/lothian-road/",
  "phone" => "0131 229 0444",
  "map"=> "/images/map_byron.png"
  })
restaurant5.save()

restaurant6 = Restaurant.new({
  "name" => "Burger",
  "address" => "91-93 Shandwick Pl, Edinburgh EH2 4SD",
  "web" => "www.burgeruk.co.uk",
  "phone" => "0131 228 1429",
  "map"=> "/images/map_burger.png"
  })
restaurant6.save()

restaurant7 = Restaurant.new({
  "name" => "Indigo Yard",
  "address" => "7 Charlotte Ln, Edinburgh EH2 4QZ",
  "web" => "www.indigoyardedinburgh.co.uk",
  "phone" => "0131 220 5603",
  "map"=> "/images/map_indigo_yard.png"
  })
restaurant7.save()

# adding a burger
burger1 = Burger.new({
  "name" => "Classic Beef",
  "restaurant_id" => restaurant1.id,
  "deal" => "2 for 1",
  "day_id" => day5.id,
  "likes" => 0
  })
burger1.save()

burger2 = Burger.new({
  "name" => "Cheese Burger",
  "restaurant_id" => restaurant2.id,
  "deal" => "10% off",
  "day_id" => day2.id,
  "likes" => 0
  })
burger2.save()

burger3 = Burger.new({
  "name" => "Veg Burger",
  "restaurant_id" => restaurant2.id,
  "deal" => "10% off",
  "day_id" => day2.id,
  "likes" => 0
  })
burger3.save()

burger4 = Burger.new({
  "name" => "The Chilli Death",
  "restaurant_id" => restaurant1.id,
  "deal" => "2 for 1",
  "day_id" => day2.id,
  "likes" => 0
  })
burger4.save()

burger5 = Burger.new({
  "name" => "The Blue Murder",
  "restaurant_id" => restaurant1.id,
  "deal" => "5% off",
  "day_id" => day2.id,
  "likes" => 0
  })
burger5.save()

burger6 = Burger.new({
  "name" => "The Red Squirrel",
  "restaurant_id" => restaurant1.id,
  "deal" => "Free side",
  "day_id" => day3.id,
  "likes" => 0
  })
burger6.save()

burger7 = Burger.new({
  "name" => "The Mexican",
  "restaurant_id" => restaurant1.id,
  "deal" => "10% off",
  "day_id" => day7.id,
  "likes" => 0
  })
burger7.save()

burger8 = Burger.new({
  "name" => "The Piggy",
  "restaurant_id" => restaurant1.id,
  "deal" => "Free beer",
  "day_id" => day6.id,
  "likes" => 0
  })
burger8.save()

burger9 = Burger.new({
  "name" => "Big Burger",
  "restaurant_id" => restaurant2.id,
  "deal" => "Big Burger & a Drink £5.49",
  "day_id" => day2.id,
  "likes" => 0
  })
burger9.save()

burger10 = Burger.new({
  "name" => "Burger",
  "restaurant_id" => restaurant1.id,
  "deal" => "Any burger & drink £5.50",
  "day_id" => day6.id,
  "likes" => 0
  })
burger10.save()

burger11 = Burger.new({
  "name" => "The Big Burger",
  "restaurant_id" => restaurant3.id,
  "deal" => "10% off",
  "day_id" => day7.id,
  "likes" => 0
  })
burger11.save()

burger12 = Burger.new({
  "name" => "The MacBowski",
  "restaurant_id" => restaurant3.id,
  "deal" => "Free soft drink",
  "day_id" => day6.id,
  "likes" => 0
  })
burger12.save()

burger13 = Burger.new({
  "name" => "Ryans Legend Burger",
  "restaurant_id" => restaurant4.id,
  "deal" => "15% off",
  "day_id" => day3.id,
  "likes" => 0
  })
burger13.save()

burger14 = Burger.new({
  "name" => "Cajun Chicken",
  "restaurant_id" => restaurant1.id,
  "deal" => "2 for 1",
  "day_id" => day1.id,
  "likes" => 0
  })
burger14.save()

binding.pry
nil
