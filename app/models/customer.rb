class Customer

  @@all = []

  attr_accessor :first_name, :last_name, :full_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = "#{first_name} #{last_name}"
    @@all << self
  end

  # Just moved it to the initializer so @@all would include it
  # def full_name
  #   @full_name = "#{first_name} #{last_name}"
  # end

  def self.all
    @@all
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  # Old Code, reworked when I made the full_name method create an instant variable
  # def self.find_by_name(full)
  #    first = full.split[0]
  #    last = full.split[1]
  #   self.all.find do |customer|
  #     customer.first_name == first && customer.last_name == last
  #   end
  # end

  def self.find_by_name(full)
    self.all.find do |customer|
      customer.full_name == full
    end
  end

  def self.find_all_by_first_name(first)
    self.all.select do |customer|
      customer.first_name == first
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_review
    self.reviews.length
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end.uniq
  end

end
