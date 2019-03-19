require 'pry'

require 'bundler/setup'
Bundler.require
require_rel '../app'

#  customer
john = Customer.new("john", "doe")
jane = Customer.new("jane", "doe")

# restaurant
place1 = Restaurant.new("Mikes")
place2 = Restaurant.new("Sally")
place3 = Restaurant.new("Phi")


# review
review1 = Review.new(john, place1, 2, "xyz")
review2 = Review.new(john, place1, 5, "yyyyyyy")
review2 = Review.new(john, place3, 5, "yyyyyyy")


binding.pry
0