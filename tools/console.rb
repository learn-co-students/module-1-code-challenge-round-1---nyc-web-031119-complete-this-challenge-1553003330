require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#customer instances
josh_s = Customer.new("Josh", "Smith")
liz = Customer.new("Liza", "Gardner")
josh_y = Customer.new("Josh", "Yan")

#restaurant instances
pool = Restaurant.new("The Pool")
emily = Restaurant.new("Emily Loves Pizza")
jones = Restaurant.new("Pasquale Jones")
benu = Restaurant.new("Benu")

#Review Instances
josh_s_pool = Review.new(josh_s, pool, 1, "Fish")
liz_emily = Review.new(liz, emily, 5, "Pizza")
josh_y_jones = Review.new(josh_y, jones, 3, "Pasta")
josh_s_benu = Review.new(josh_s, benu, 5, "Asian")
liz_benu = Review.new(liz, benu, 5, "Champagne")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
