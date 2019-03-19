require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

roni = Customer.new("roni", "shabo")
bill = Customer.new("bill", "gates")
steve = Customer.new("steve", "jobs")
larry = Customer.new("larry", "smith")
roni = Customer.new("roni", "doe")

nobu = Restaurant.new("nobu")
tao = Restaurant.new("tao")
lavo = Restaurant.new("lavo")

review1 = Review.new(roni, nobu, "yum", 5)
review2 = Review.new(bill, tao, "ew", 4)
review3 = Review.new(steve, lavo, "cool", 3)
review4 = Review.new(roni, tao, "best", 5)
review5 = Review.new(bill, nobu, "worst", 1)
review6 = Review.new(steve, nobu, "egg-celent", 4)
review7 = Review.new(roni, lavo, "literally amazing", 5)
review8 = Review.new(bill, tao, "the absolute best restaurant", 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
