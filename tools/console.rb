require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


rocky = Customer.new("rocky", "balboa")
drama = Customer.new("johnny", "drama")
ari = Customer.new("ari", "gold")

res1 = Restaurant.new("emilys")
res2 = Restaurant.new("emma squared")
res3 = Restaurant.new("em")


rev1 = Review.new(rocky, res1, 3, "BEST burger I ever had")
rev2 = Review.new(drama, res3, 5, "Could be better, just kidding, LOVED IT")
rev3 = Review.new(ari, res2, 4, "Great")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
