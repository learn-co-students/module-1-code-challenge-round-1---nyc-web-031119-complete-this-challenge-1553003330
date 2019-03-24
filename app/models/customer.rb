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
    self.all.select do |list|
      list.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |list|
      list.first_name == name
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def all_reviews
    Review.all
  end

  def my_reviews
    all_reviews.select do |list|
      list.customer == self
    end
  end

  def num_reviews
    all_reviews.select do |list|
      list.customer == self
    end.length
  end

  def restaurants
    my_reviews.map do |list|
      list.restaurant
    end
  end

end
