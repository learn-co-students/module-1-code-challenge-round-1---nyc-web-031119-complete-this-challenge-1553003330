class Review
  @@all = []
  attr_accessor :customer, :restaurant, :rating, :content

   def initialize(customer, restaurant, content, rating)
     @customer = customer
     @restaurant = restaurant
     @rating = rating
     @content = content
     @@all << self
   end

   def self.all
     @@all
   end


end
