class Review

  attr_reader :customer, :review
  @@all = []

  def initialize(customer, review)
    @customer = customer
    @review = review
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
  end

end
