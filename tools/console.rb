require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

samguo = Customer.new("Sam", "Guo")
adaguo = Customer.new("Ada", "Guo")
samsmith = Customer.new("Sam", "Smith")

tgif = Restaurant.new("TGIF")
olivegarden = Restaurant.new("Olive Garden")

review1 = Review.new(samguo, tgif, 3, "I feel bloated")
review2 = Review.new(adaguo, olivegarden, 5, "Pasta was cooked to perfection")
review3 = Review.new(samguo, olivegarden, 5, "Unlimited breadsticks are best breadsticks")
review4 = Review.new(samguo, olivegarden, 1, "They didn't have unlimited breadsticks this time")
review5 = Review.new(adaguo, olivegarden, 4, "They forgot my extra sauce")
review6 = Review.new(samsmith, tgif, 5, "AKSFHDGBDKJFHSJHDGFFDGHDKSJFBH")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
