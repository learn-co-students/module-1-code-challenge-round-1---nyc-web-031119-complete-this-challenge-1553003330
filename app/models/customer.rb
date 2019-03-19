class Customer
  attr_accessor :first_name, :last_name, :num_reviews
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @num_reviews = 0
    @@all << self
  end

  def self.find_by_name(full_name)
    all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    all.map do |customer|
      customer.full_name
    end
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
    self.num_reviews =+ 1
  end

  def reviews
    Review.all.select do |review|
      review.customer = self
    end
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end
  end
end
