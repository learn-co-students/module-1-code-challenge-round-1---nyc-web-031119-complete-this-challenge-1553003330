class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

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
    self.reviews.inject(0.0) do |sum, review|
      sum + review.rating
    end / reviews.length
  end

  def longest_review
    self.reviews.max_by do |review|
      review.content.length
    end
  end

  # made a bonus method just to mess around with the instances more
  def five_star_reviews
    self.reviews.select do |review|
      review.rating == 5
    end
  end

end
