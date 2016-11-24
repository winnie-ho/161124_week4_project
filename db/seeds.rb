require_relative ('../models/day')
require ('pry-byebug')

day1 = Day.new({
  "name"=>"Monday"})
day1.save()

day2 = Day.new({
  "name"=>"Tuesday"})
day2.save()

day3 = Day.new({
  "name"=>"Wednesday"})
day3.save()

day4 = Day.new({
  "name"=>"Thursday"})
day4.save()

day5 = Day.new({
  "name"=>"Friday"})
day5.save()

day6 = Day.new({
  "name"=>"Saturday"})
day6.save()

day7 = Day.new({
  "name"=>"Sunday"})
day7.save()

binding.pry
nil

