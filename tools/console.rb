require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#create customers
maggie = Customer.new("Maggie", "Manager")
nancy = Customer.new("Nancy", "Drew")
dre = Customer.new("Dr.", "Dre")
phil = Customer.new("Dr.", "Phil")

#create restaurants
blue_moon = Restaurant.new("Blue Moon")
ichiran = Restaurant.new("Ichiran")
el_sombrero = Restaurant.new("El Sombrero")

#test Review Class
# review_1 = Review.new(blue_moon, maggie, 1, "rude")
# review_2 = Review.new(ichiran, nancy, 5, "discovered new favorite meal!")

#sample reviews
rude = "rude"
good_review = "discovered new favorite meal!"
revisit_review = "I discovered another location in Kyoto. Still delicious!"
long_review = "I asked them if they speak English and then they ignored me. I asked for a manager."
cool_review = "Great historic space for artists of color. Great food"

#Customers create reviews
nancy.add_review(ichiran, good_review, 4)
nancy.add_review(ichiran, revisit_review, 5)
maggie.add_review(blue_moon, rude, 1)
maggie.add_review(el_sombrero, long_review, 1)
dre.add_review(blue_moon, cool_review, 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
