require 'pry'
class Customer
  @@all = []
  attr_accessor :first_name, :last_name

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
    Customer.all.find do |customer|
      name == "#{customer.first_name} #{customer.last_name}"
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #helper method full list of reviews by customer
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end.uniq
  end




end
