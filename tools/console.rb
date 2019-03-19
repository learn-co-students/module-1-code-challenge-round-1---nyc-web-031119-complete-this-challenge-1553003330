require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

billy_bob = Customer.new("Billy", "Bob")
sally_sue = Customer.new("Sally", "Sue")
timmy_turner = Customer.new("Timmy", "Turner")

five_guys = Restaurant.new("Five Guys")
shake_shack = Restaurant.new("Shake Shack")
burger_king = Restaurant.new("Burger King")

billy_five = Review.new(billy_bob, five_guys, 4, "It only took 5 guys?")
sally_shake = Review.new(sally_sue, shake_shack, 3, "This shack is shaking!")
timmy_king = Review.new(timmy_turner, burger_king, 1, "So not a king burger.")
sally_five = Review.new(sally_sue, five_guys, 2, "What is this nonsense?")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
