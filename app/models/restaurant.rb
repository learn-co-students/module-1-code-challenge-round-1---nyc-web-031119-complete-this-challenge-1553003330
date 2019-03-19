class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(r_name)
    all.find do |restaurant|
      restaurant.name == r_name
    end
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

  def average_star_rating
    (reviews.map do |review|
      review.rating.to_f
    end.inject(0) do |total, rating|
       total + rating
    end / reviews.length).round(2)
  end

  def longest_review
    reviews.sort_by! {|review| review.content.length}.last
  end
end
