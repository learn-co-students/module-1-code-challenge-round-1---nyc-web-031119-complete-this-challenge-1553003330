class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  # should return all of the customer instances
  def self.all
    @@all
  end

  # given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name ="Xavier Downing")
    name_array = name.split
  
    Customer.all.find do |customer|
      if customer.first_name == name_array[0]
        customer
      end
    end
  end

  # given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(name = "Xavier")
    Customer.all.map do |customer|
     if customer.first_name == name
      customer
     end
    end
  end

  def self.all_names
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end
end