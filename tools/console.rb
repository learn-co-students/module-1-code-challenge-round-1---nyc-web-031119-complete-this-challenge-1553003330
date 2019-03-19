require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Initiate customer
robeefa = Customer.new("robeefa", "quincy")
jershumpus = Customer.new("jershumpus", "pebblerot")
jershumpus_s = Customer.new("jershumpus", "stutterbottom")

#Initiate resturant
crusty_crab = Restaurant.new("crusty crab")
rusty_ricks = Restaurant.new("rusty ricks")

#Reviews
robeefa.add_review(rusty_ricks, 5, "Great service and attention. 10/10 would reccomend!")
robeefa.add_review(crusty_crab, 1, "Owner was too crabby.")
robeefa.add_review(crusty_crab, 1, "Cashier was too cynical.")
jershumpus.add_review(rusty_ricks, 4, "Best ice water soup in town!")
jershumpus_s.add_review(rusty_ricks, 5, "Cleanest bathrooms!")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line