class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  @@all_names = []
  @@first_names = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @@all_names << self.full_name
    @@first_names << self.first_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all_names.find{|full_name| full_name == name}
  end

  def self.find_by_first_name(name)
    first_names.select{|first_name| first_name == name}
  end

  def self.first_names
    @@first_names
  end

  def self.all_names
    @@all_names
  end

  def add_review(restaurant, content, rating)
    Review.new(self,restaurant,content,rating)
  end

  def reviews
    Review.all.select{|review| review.customer == self}
  end

  def num_reviews
    reviews.length
  end

  def restaurants
    reviews.map{|review| review.restaurant}.uniq
  end
end
