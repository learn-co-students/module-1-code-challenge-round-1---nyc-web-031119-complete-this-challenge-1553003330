require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jeff = Customer.new('jeff','bezos')
gavin = Customer.new('gavin','belson')
richard = Customer.new('richard','hendricks')
richard = Customer.new('richard','ross')
gavin = Customer.new('gavin','belson')

burgerking = Restaurant.new('burger king')
wendys = Restaurant.new('wendys')
mcdonalds = Restaurant.new('mcdonalds')
popeyes = Restaurant.new('popeyes')

#### Customer
# Customer.all
# Customer.find_by_name('gavin belson')
# Customer.find_by_first_name('richard')
# Customer.all_names
#
# jeff.add_review(burgerking,'sucks',2)
# jeff.add_review(burgerking,'still sucks',1)
# jeff.add_review(popeyes,'rocks',5)
# gavin.add_review(burgerking,'awesome',5)
#
# jeff.num_reviews
# jeff.restaurants
#
# #### Restaurant
# Restaurant.all
# Restaurant.find_by_name('popeyes')
# burgerking.customers
# burgerking.reviews
# burgerking.average_star_rating
# burgerking.longest_review
#
# 
# #### Review
# Review.all
#
# Review.all.map{|r| r.customer}
# Review.all.map{|r| r.restaurant}
# Review.all.map{|r| r.rating}
# Review.all.map{|r| r.content}


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
