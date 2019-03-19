class Restaurant
  attr_accessor :name

	@@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
	@@all
  end

def self.find_by_name(name)
Restaurant.all.find {|restaurant| restaurant.name == name}
end

def customers
Review.all.map do |review| 
	return review.customer.full_name if review.restaurant == self
end
end


end
