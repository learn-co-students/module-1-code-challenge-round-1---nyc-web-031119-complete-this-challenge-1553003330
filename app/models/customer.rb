require 'pry'
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
    self.all.select do |customer|
    customer == self.name
    full_name
    end
  end

  def self.find_all_by_first_name(name)
    find_by_name.select.do |customer|
    customer.first_name == self.first_name
    end
  end



  def add_review(restaurant)
    Review.new(self, restaurant)
  end

  def reviews



end
