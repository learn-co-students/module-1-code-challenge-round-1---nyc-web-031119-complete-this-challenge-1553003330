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

  def all_reviews
    Review.all.select do |list|
      list.customer == self
    end
  end

  def self.find_by_name(name)
    self.all.select do |name|
      name.full_name == self
    end

    #given a string of a **full name**, returns the **first customer** whose full name matches
  end

  def self.find_all_by_first_name(name)
    self.all.select do |name|
      name
    end
    #given a string of a first name, returns an **array** containing all customers with that first name
  end

  def self.all_names
    self.all.select do |name|
      name
    end.full_name
    #should return an **array** of all of the customer full names
    # self = review(full_name)
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    all_reviews.map do |list|
      list
    end.length
  end

  def restaurants
    all_reviews.map do |list|
      list.restaurant
    end
  end

end
