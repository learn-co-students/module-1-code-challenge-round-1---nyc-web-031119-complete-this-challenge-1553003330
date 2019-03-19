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
	Customer.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
	Customer.all.select do |customer| 
	customer.first_name == name
	end
end

def self.all_names
	Customer.all.map do |customer|
	customer.full_name
	end
end

def add_review(restaurant, rating, content)
	Review.new(self, restaurant, rating, content)
end

def num_reviews
	Review.all.each {|review| review.customer.full_name == self.full_name}.length
end

def restaurants
	Review.all.map do |review| 
		review.customer.full_name == self.full_name  
		review.restaurant
	end.uniq
end



end
