require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#list of customers
danny = Customer.new("Danny", "Martin")
joe = Customer.new("Joseph", "Stalin")
dali = Customer.new("Dali", "Llama")
mortin = Customer.new("Danny", "Mortin")



#list of restaurant
pizza = Restaurant.new("Mediocre Pizza 4 Sale")
hotdogs = Restaurant.new("Boiled Hotdogs R' Us")
salad = Restaurant.new("Questionably Healthy")

#review objects
r1 = danny.add_review(hotdogs, "Made me believe in God", 5)
r2 = danny.add_review(pizza, "More like 'BAD Pizza 4 Sale'", 2)
r3 = danny.add_review(pizza, "I can't believe I came back", 1)
r4 = joe.add_review(pizza, "It was okay", 2)
r5 = dali.add_review(pizza, "its fookin lit m8", 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
