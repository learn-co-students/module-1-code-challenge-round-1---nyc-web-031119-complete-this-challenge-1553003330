class Review

  @@all = []

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    if rating > 5
      @rating = 5
    elsif rating < 1
      @rating = 1
    else
      @rating = rating
    end
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
