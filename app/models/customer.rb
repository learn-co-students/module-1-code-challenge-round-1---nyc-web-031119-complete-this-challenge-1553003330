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
      customer.full_name = name
    end
  end

  def self.find_all_by_first_name(name)
    first_name =self.all.map do |customer|
      customer.first_name = name
    end
    first_name.uniq
  end

  def self.all_names
    self.all.select do |customer|
      customer.full_name
    end
  end


  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end


  def num_reviews
    #still working on this method
    Review.all.select do |review|
      review.customer == customer
    end
  end




end
