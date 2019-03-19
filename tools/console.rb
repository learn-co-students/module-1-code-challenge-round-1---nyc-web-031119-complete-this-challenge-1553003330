require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
tommy = Customer.new("tommy", "lau")
eric = Customer.new("eric", "lee")
tommy2 = Customer.new("tommy", "ou")

taco_pollo = Restaurant.new("taco pollo")
chipotle = Restaurant.new("chipotle")
taco_bell = Restaurant.new("taco bell")

critique1 = Review.new(tommy, taco_bell,"great food", 5)
critique2 = Review.new(tommy, chipotle,"fast service", 2)
critique3 = Review.new(eric, taco_pollo,"horrible", 1)
critique4 = Review.new(tommy2, chipotle, "very quick", 3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
