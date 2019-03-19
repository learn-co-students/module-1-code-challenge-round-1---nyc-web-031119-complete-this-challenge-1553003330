class Restaurant

	@@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	self.all.find { |restaurant|   restaurant.name == name }
  end

end


r1 = Restaurant.new(:katz)
r2 = Restaurant.new(:bruger_king)

p Restaurant.all
p Restaurant.find_by_name(:katz)
p Restaurant.find_by_name(:bruger_king)