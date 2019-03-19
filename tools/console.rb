require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("yev", "sob")
cust2 = Customer.new("yev", "ban")
cust3 = Customer.new("yev", "ppp")
cust4 = Customer.new("qwe", "qwe")
cust5 = Customer.new("tom", "ford")

re1 = Restaurant.new("7/11")
re2 = Restaurant.new("sushi")
re3 = Restaurant.new("Papajhons")

cust1.add_review(re1, "best ever", 5)
cust1.add_review(re1, "Loooooooooong", 3)
cust1.add_review(re3, "the worst", 2)
cust2.add_review(re1, "haha", 3)
cust3.add_review(re1, "ever", 5)
cust3.add_review(re2, "best", 5)
cust3.add_review(re3, "H", 5)

re1.average_star_rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
