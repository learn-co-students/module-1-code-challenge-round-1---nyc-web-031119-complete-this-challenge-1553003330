class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

### Class Methods ###

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end

### Instance Methods ###
  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    reviews.sum(0.0) { |review| review.rating} / reviews.length
  end

  def longest_review
    reviews.max_by { |review| review.content.length }.content
  end

end
