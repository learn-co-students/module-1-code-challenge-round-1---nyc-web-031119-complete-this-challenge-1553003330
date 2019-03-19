class Review
  attr_accessor :rating, :content
  attr_reader :restaurant, :customer

  @@all = []

  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    @content = content
    @@all << self
  end

### Class Methods ###

  def self.all
    @@all
  end

end
