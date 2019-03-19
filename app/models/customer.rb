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

  def self.find_by_name()
    all
  end

  def self.find_all_by_first_name
    all
  end

  def self.all_names
    all
  end

# associ.. methods


  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select do |reviews|
      reviews.customer == self
    end
  end

  def num_reviews
    reviews.length
  end

  def restaurants
    reviews.map do |my_reviews|
      my_reviews.restaurant
    end.uniq
  end

end
