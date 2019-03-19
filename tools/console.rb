require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console




xavier = Customer.new("Xavier", "Downing")
sean = Customer.new("Sean", "Wells")
mark = Customer.new("Mark", "Brathwaite")
brandon = Customer.new("Brandon", "Mortimer")
dave = Customer.new("David", "Lake")
bj = Customer.new("Basil", "Jones")
adrien = Customer.new("Adrien", "Mullen")
red_lobster = Restaurant.new("Red Lobster")
applebees = Restaurant.new("Apple Bees")
olive_garden = Restaurant.new("Olive Garden")
friendlys = Restaurant.new("Friendly's")
imperial_diner = Restaurant.new("Imperial Diner")
new_z_deli = Restaurant.new("New Z Deli")
lighthouse_diner = Restaurant.new("Lighthouse Diner")




Customer.find_by_name
Customer.find_all_by_first_name



xavier.add_review(applebees, "I like it", 10)

print Review.all

binding.pry
0 #leave this here to ensure binding.pry isn't the last line