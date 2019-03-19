class Restaurant
  attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_by_name(name)
    all.find(name)
    # issue
  end


# 
def customers
  reviews.map do |my_reviews|
    my_reviews.customer
  end.uniq
end

def reviews
  Review.all.select do |reviews|
    reviews.restaurant == self
  end
end

def average_star_rating
  reviews.map do |my_reviews|
    my_reviews.rating
  end.reduce(:+).to_f / reviews.length
end

def longest_review
  reviews.map do |my_reviews|
    my_reviews.content.length
  end.max
end

end
