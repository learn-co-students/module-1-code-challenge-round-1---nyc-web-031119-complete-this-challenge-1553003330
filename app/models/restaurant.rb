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
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    customer_list = Review.all.select do |review|
    review.restaurant == self
    end
    customer_list.map do |restaurant|
      restaurant.customer
    end
  end

  def reviews
    Review.all.select do |review|
      review.content
    end
  end

  def average_star_rating
    all_rating = Review.all.select do |review|
      review.rating
    end
    count = all_rating.length
    sum = all_rating.each {|a| sum+=a}
    sum / count
  end

  def longest_review
    Review.all.max_by {|review| review.content.length}
  end
  
end
