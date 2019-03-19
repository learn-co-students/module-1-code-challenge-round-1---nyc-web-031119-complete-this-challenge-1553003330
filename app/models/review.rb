class Review
    attr_accessor :rating, :content
    attr_reader :customer, :restaurant
    @@all = []

    def initialize(customer, restaurant, rating, content)
        @@all << self
        @restaurant = restaurant
        @customer = customer
        @rating = rating
        #rating needs to be 1-5 (change at end)
        @content = content
    end

    def self.all
        @@all
    end
end

