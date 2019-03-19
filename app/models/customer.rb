class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.select do|customer|
      customer.full_name
    end
  end

  def add_reviews(restaurant,content,rating)
    new_rev = Review.new(self, restaurant,content,rating)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end

  def restaurants
    new_rest = Review.all.select do |review|
      review.customer == self
    end
    new_rest.map do |customer|
      customer.restaurant
    end.uniq
  end
end
