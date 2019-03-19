class Review

  @@all = []

  attr_reader :review
  attr_writer :rating

  def initialize(review)
    @review = review
    @@all<<self
  end


  def self.all
    @@all
  end

  def customer(review)
    Customer.new(review, self)
  end

  def restaurant(review)
    Restaurant.new(review, self)
  end

  def rating(new_review)
    if new_review >= 1 && new_review < 6
      @rating = new_review
    else
      return
    end
  end

  def content
  	
  end

end


r1 =  Review.new('great')

p r1


p r1.rating(7)


p Review.all

