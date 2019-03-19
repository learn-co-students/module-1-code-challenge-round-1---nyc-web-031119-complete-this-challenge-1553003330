require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
john = Customer.new("John", "Agens")
joe = Customer.new("Joe", "Smith")
joe2 = Customer.new("Joe", "Johnson")
joe3 = Customer.new("Joe", "Smith")
lisa = Customer.new("Lisa", "Thompson")

rest1 = Restaurant.new("Burger Shop")
rest2 = Restaurant.new("Pizza Place")
rest3 = Restaurant.new("Noodles Place")
rest4 = Restaurant.new("Burger Shop")

# Review.new(customer, restaurant, rating, content)
rev1 = Review.new(joe, rest1, 4, "This place is great.")
rev2 = Review.new(joe, rest3, 2, "This place is not good.")
rev3 = Review.new(john, rest1, 5, "Best place in town.")

lisa.add_review(rest2, 3, "This place is ok.")
lisa.add_review(rest1, 5, "Love it")
lisa.add_review(rest1, 1, "It's gone downhill since new owner.")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
