require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tommy = Customer.new("Tommy", "Baby")
acacia = Customer.new("Acacia", "McGill")
ernie = Customer.new("Ernest", "Clyde")
roger = Customer.new("Roger", "Bodger")
thomas = Customer.new("Tommy", "Hresgard")

no_good = Restaurant.new("Actually No Good")
italian = Restaurant.new("Vinnie Joey Roberto's Fresh Real Original")

tommy.add_review(no_good, 4.0, "better than expected")
tommy.add_review(no_good, 1.5, "changed my mind")
roger.add_review(no_good, 0, "utter trash")
ernie.add_review(no_good, 7, "I'm the chef, it's all tasty!")
acacia.add_review(italian, 5.0, "It's all one guy, very impressed")
thomas.add_review(italian, 2.6, "There's no sushi here")
roger.add_review(italian, 4, "No bugs in my bolognese")
ernie.add_review(italian,  6, "I don't know how ratings work")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
