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
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  ## HELPER METHOD
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    self.reviews.map do |review|
      review.rating
    end.sum / reviews.length.to_f
  end

  def longest_review
    self.reviews.sort_by! do |review|
      review.content.length
    end.last
  end
end
